#!/bin/bash

if [ $# -ne 1 -a $# -ne 2 ]; then
    echo "params: dir [FULL]"
    exit -1
fi

# cd to root dir
CWD=$(dirname $0)/..
cd ${CWD}
CWD=$(pwd)
[ -z "$PYTHON" ] && PYTHON=pyston3.8

# directory to store the logs and sqls
LOG_DIR=${CWD}/logs
SQL_DIR=${CWD}/sql
mkdir -p ${LOG_DIR} ${SQL_DIR}

ROMS_DIR=$1
FULL=$2

if [ -n "${FULL}" ]; then
    SPLIT="Full"
else
    SPLIT="Major"
fi

SQL_BASE="insert into extended_stats (randoPreset, skillPreset, count)
values
('Season_Races_${SPLIT}_total', 'Season_Races', 1)
on duplicate key update id=LAST_INSERT_ID(id), count = count + 1;
set @last_id = last_insert_id();"

function computeSeed {
    SEED="${1}"
    JOB_ID=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32)
    RUNTIME_LIMIT=15

    SQL=${SQL_DIR}/extStats_${JOB_ID}.sql
    echo "${SQL_BASE}" > ${SQL}

    ${PYTHON} ${CWD}/solver.py -r "${SEED}" --preset "${CWD}/standard_presets/Season_Races.json" --pickupStrategy all --difficultyTarget 10 --ext_stats "${SQL}" --ext_stats_step 2 --runtime 10 >/dev/null

    printf "."
}

function wait_for_a_child {
    PIDS="$1"

    while true; do
	for PID in $PIDS; do
	    kill -0 $PID 2>/dev/null
	    if [ $? -ne 0 ]; then
		PIDS=$(echo "$PIDS" | sed -e "s+ $PID ++")
		return
	    fi
	done
	sleep 1
    done
}

function info {
    MSG="$*"
    echo "$(date '+%Y/%m/%d_%H:%M:%S'): ${MSG}"
}

NB_CPU=$(cat /proc/cpuinfo  | grep 'processor' | wc -l)

for PROG_SPEED in total; do
    info "Begin total rando preset"

    CUR_JOBS=0
    PIDS=""
    for SEED in ${ROMS_DIR}/*.sfc; do
	if [ ${CUR_JOBS} -lt ${NB_CPU} ]; then
	    computeSeed "${SEED}" &
	    PIDS="$PIDS $! "
	    let CUR_JOBS=$CUR_JOBS+1
            continue
        fi

	wait_for_a_child "${PIDS}"
	let CUR_JOBS=$CUR_JOBS-1

	computeSeed "${SEED}" &
	PIDS="$PIDS $! "
	let CUR_JOBS=$CUR_JOBS+1
    done
    echo ""

    while [ "${PIDS}" != "" ]; do
        wait_for_a_child "${PIDS}"
    done

    rm -f ${RANDO_PRESET}
done

for F in ${SQL_DIR}/extStats_*.sql; do
    RESULT=${RANDOM}
    let "RESULT %= ${NB_CPU}"

    cat ${F} >> ${SQL_DIR}/extStatsOut_${RESULT}.sql && rm -f ${F}
done

info "DONE"

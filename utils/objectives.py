import random
from rom.addresses import Addresses, MAX_OBJECTIVES
from rom.rom import pc_to_snes
from logic.helpers import Bosses
from logic.smbool import SMBool
from logic.logic import Logic
from graph.location import locationsDict
from utils.parameters import Knows
import utils.log, logging

LOG = utils.log.get('Objectives')

class Synonyms(object):
    killSynonyms = [
        "defeat",
        "massacre",
        "slay",
        "wipe out",
        "erase",
        "finish",
        "destroy",
        "wreck",
        "smash",
        "crush",
        "end",
        "kill"
    ]
    alreadyUsed = []
    @staticmethod
    def getVerb(maxLen):
        possibleVerbs = [syn for syn in Synonyms.killSynonyms if len(syn) <= maxLen]
        assert len(possibleVerbs) > 0, "could not find short enough synonym"
        verb = random.choice(possibleVerbs)
        while len(possibleVerbs) == len(Synonyms.killSynonyms) and verb in Synonyms.alreadyUsed:
            verb = random.choice(Synonyms.killSynonyms)
        Synonyms.alreadyUsed.append(verb)
        return verb

class Goal(object):
    def __init__(self, name, gtype, logicClearFunc, romClearFunc, romInProgressFunc=None,
                 escapeAccessPoints=None, objCompletedFuncAPs=lambda ap: [ap],
                 exclusion=None, items=None, text=None, introText=None,
                 available=True, expandableList=None, category=None, area=None,
                 conflictFunc=None):
        self.name = name
        self.available = available
        self.clearFunc = logicClearFunc
        self.objCompletedFuncAPs = objCompletedFuncAPs
        self.symbol = "objectives_%s" % romClearFunc
        self.inProgressSymbol = None
        if romInProgressFunc is not None:
            self.inProgressSymbol = "objectives_%s" % romInProgressFunc
        self.escapeAccessPoints = escapeAccessPoints
        if self.escapeAccessPoints is None:
            self.escapeAccessPoints = (1, [])
        self.rank = -1
        # possible values:
        #  - items
        #  - boss
        #  - miniboss
        #  - map
        #  - other
        self.gtype = gtype
        # example for kill three g4
        # {
        #  "list": [list of objectives],
        #  "type: "boss",
        #  "limit": 2
        # }
        self.exclusion = exclusion
        if self.exclusion is None:
            self.exclusion = {"list": []}
        self.items = items
        if self.items is None:
            self.items = []
        self.text = name if text is None else text
        self.introText = introText
        self.useSynonym = text is not None and '{}' in text
        self.expandableList = expandableList
        if self.expandableList is None:
            self.expandableList = []
        self.expandable = len(self.expandableList) > 0
        self.category = category
        self.area = area
        self.conflictFunc = conflictFunc
        # used by solver/isolver to know if a goal has been completed
        self.completed = False

    @property
    def checkAddr(self):
        return pc_to_snes(Addresses.getOne(self.symbol)) & 0xffff

    @property
    def inProgressAddr(self):
        if self.inProgressSymbol is None:
            return 0
        return pc_to_snes(Addresses.getOne(self.inProgressSymbol)) & 0xffff

    def setRank(self, rank):
        self.rank = rank

    def canClearGoal(self, smbm, ap=None):
        # not all objectives require an ap (like limit objectives)
        return self.clearFunc(smbm, ap)

    def getText(self):
        idxTxt = "{}.".format(self.rank).ljust(3, ' ')
        out = idxTxt
        outLen = 0
        maxLen = 27
        try:
            if self.useSynonym:
                out += self.text.format(Synonyms.getVerb(maxLen - len(out) - len(self.text) + 2)) # 2 for the "{}"
            else:
                out += self.text
            outLen = len(out)
        except AssertionError:
            outLen = maxLen + 1
        assert outLen <= maxLen, "Goal '{}' text is too long: '{}'".format(self.name, out)
        out = out.rstrip()        
        if self.introText is not None:
            self.introText = idxTxt + self.introText
        else:
            self.introText = out
        return out

    def getIntroText(self):
        assert self.introText is not None
        return self.introText

    def isLimit(self):
        return "type" in self.exclusion

    def __repr__(self):
        return self.name

def getBossEscapeAccessPoint(boss):
    return (1, [Bosses.accessPoints[boss]])

def getG4EscapeAccessPoints(n):
    return (n, [Bosses.accessPoints[boss] for boss in Bosses.Golden4()])

def getMiniBossesEscapeAccessPoints(n):
    return (n, [Bosses.accessPoints[boss] for boss in Bosses.miniBosses()])

def getAreaEscapeAccessPoints(area):
    return (1, list({list(loc.AccessFrom.keys())[0] for loc in Logic.locations if loc.GraphArea == area}))


_goalsList = [
    # bosses
    Goal("kill kraid", "boss", lambda sm, ap: Bosses.bossDead(sm, 'Kraid'), "kraid_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Kraid"),
         exclusion={"list": ["kill all G4", "kill one G4"]},
         items=["Kraid"],
         text="{} kraid",
         category="Bosses"),
    Goal("kill phantoon", "boss", lambda sm, ap: Bosses.bossDead(sm, 'Phantoon'), "phantoon_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Phantoon"),
         exclusion={"list": ["kill all G4", "kill one G4"]},
         items=["Phantoon"],
         text="{} phantoon",
         category="Bosses"),
    Goal("kill draygon", "boss", lambda sm, ap: Bosses.bossDead(sm, 'Draygon'), "draygon_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Draygon"),
         exclusion={"list": ["kill all G4", "kill one G4"]},
         items=["Draygon"],
         text="{} draygon",
         category="Bosses"),
    Goal("kill ridley", "boss", lambda sm, ap: Bosses.bossDead(sm, 'Ridley'), "ridley_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Ridley"),
         exclusion={"list": ["kill all G4", "kill one G4"]},
         items=["Ridley"],
         text="{} ridley",
         category="Bosses"),
    Goal("kill one G4", "other", lambda sm, ap: Bosses.xBossesDead(sm, 1), "boss_1_killed",
         escapeAccessPoints=getG4EscapeAccessPoints(1),
         exclusion={"list": ["kill kraid", "kill phantoon", "kill draygon", "kill ridley",
                             "kill all G4", "kill two G4", "kill three G4"],
                    "type": "boss",
                    "limit": 0},
         text="{} one g4",
         category="Bosses"),
    Goal("kill two G4", "other", lambda sm, ap: Bosses.xBossesDead(sm, 2),
         "boss_2_killed", romInProgressFunc="in_progress_boss_2_killed",
         escapeAccessPoints=getG4EscapeAccessPoints(2),
         exclusion={"list": ["kill all G4", "kill one G4", "kill three G4"],
                    "type": "boss",
                    "limit": 1},
         text="{} two g4      ",
         category="Bosses"),
    Goal("kill three G4", "other", lambda sm, ap: Bosses.xBossesDead(sm, 3),
         "boss_3_killed", romInProgressFunc="in_progress_boss_3_killed",
         escapeAccessPoints=getG4EscapeAccessPoints(3),
         exclusion={"list": ["kill all G4", "kill one G4", "kill two G4"],
                    "type": "boss",
                    "limit": 2},
         text="{} three g4      ",
         category="Bosses"),
    Goal("kill all G4", "other", lambda sm, ap: Bosses.allBossesDead(sm),
         "all_g4_dead", romInProgressFunc="in_progress_boss_4_killed",
         escapeAccessPoints=getG4EscapeAccessPoints(4),
         exclusion={"list": ["kill kraid", "kill phantoon", "kill draygon", "kill ridley", "kill one G4", "kill two G4", "kill three G4"]},
         items=["Kraid", "Phantoon", "Draygon", "Ridley"],
         text="{} all g4      ",
         expandableList=["kill kraid", "kill phantoon", "kill draygon", "kill ridley"],
         category="Bosses"),
    # minibosses
    Goal("kill spore spawn", "miniboss", lambda sm, ap: Bosses.bossDead(sm, 'SporeSpawn'), "spore_spawn_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("SporeSpawn"),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss"]},
         items=["SporeSpawn"],
         text="{} spore spawn",
         category="Minibosses"),
    Goal("kill botwoon", "miniboss", lambda sm, ap: Bosses.bossDead(sm, 'Botwoon'), "botwoon_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Botwoon"),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss"]},
         items=["Botwoon"],
         text="{} botwoon",
         category="Minibosses"),
    Goal("kill crocomire", "miniboss", lambda sm, ap: Bosses.bossDead(sm, 'Crocomire'), "crocomire_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("Crocomire"),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss"]},
         items=["Crocomire"],
         text="{} crocomire",
         category="Minibosses"),
    Goal("kill golden torizo", "miniboss", lambda sm, ap: Bosses.bossDead(sm, 'GoldenTorizo'), "golden_torizo_is_dead",
         escapeAccessPoints=getBossEscapeAccessPoint("GoldenTorizo"),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss"]},
         items=["GoldenTorizo"],
         text="{} golden torizo",
         category="Minibosses",
         conflictFunc=lambda settings: settings.qty['energy'] == 'ultra sparse' and (not Knows.LowStuffGT or (Knows.LowStuffGT.difficulty > settings.maxDiff))),
    Goal("kill one miniboss", "other", lambda sm, ap: Bosses.xMiniBossesDead(sm, 1), "miniboss_1_killed",
         escapeAccessPoints=getMiniBossesEscapeAccessPoints(1),
         exclusion={"list": ["kill spore spawn", "kill botwoon", "kill crocomire", "kill golden torizo",
                             "kill all mini bosses", "kill two minibosses", "kill three minibosses"],
                    "type": "miniboss",
                    "limit": 0},
         text="{} one miniboss",
         category="Minibosses"),
    Goal("kill two minibosses", "other", lambda sm, ap: Bosses.xMiniBossesDead(sm, 2),
         "miniboss_2_killed", romInProgressFunc="in_progress_miniboss_2_killed",
         escapeAccessPoints=getMiniBossesEscapeAccessPoints(2),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss", "kill three minibosses"],
                    "type": "miniboss",
                    "limit": 1},
         text="{} two minibosses      ",
         category="Minibosses"),
    Goal("kill three minibosses", "other", lambda sm, ap: Bosses.xMiniBossesDead(sm, 3),
         "miniboss_3_killed", romInProgressFunc="in_progress_miniboss_3_killed",
         escapeAccessPoints=getMiniBossesEscapeAccessPoints(3),
         exclusion={"list": ["kill all mini bosses", "kill one miniboss", "kill two minibosses"],
                    "type": "miniboss",
                    "limit": 2},
         text="{} 3 minibosses      ",
         category="Minibosses"),
    Goal("kill all mini bosses", "other", lambda sm, ap: Bosses.allMiniBossesDead(sm),
         "all_mini_bosses_dead", romInProgressFunc="in_progress_miniboss_4_killed",
         escapeAccessPoints=getMiniBossesEscapeAccessPoints(4),
         exclusion={"list": ["kill spore spawn", "kill botwoon", "kill crocomire", "kill golden torizo",
                             "kill one miniboss", "kill two minibosses", "kill three minibosses"]},
         items=["SporeSpawn", "Botwoon", "Crocomire", "GoldenTorizo"],
         text="{} all minibosses      ",
         expandableList=["kill spore spawn", "kill botwoon", "kill crocomire", "kill golden torizo"],
         category="Minibosses",
         conflictFunc=lambda settings: settings.qty['energy'] == 'ultra sparse' and (not Knows.LowStuffGT or (Knows.LowStuffGT.difficulty > settings.maxDiff))),
    # other
    Goal("finish scavenger hunt", "other", lambda sm, ap: SMBool(True),
         "scavenger_hunt_completed", romInProgressFunc="scav_started",
         exclusion={"list": []}, # will be auto-completed
         available=False),
    Goal("nothing", "other", lambda sm, ap: Objectives.canAccess(sm, ap, "Landing Site"), "nothing_objective",
         escapeAccessPoints=(1, ["Landing Site"])), # with no objectives at all, escape auto triggers only in crateria
    # items. no logic function because all items are placed by the rando. the functions are properly set for solver only.
    Goal("collect 25% items", "items", lambda sm, ap: SMBool(True),
         "collect_25_items", romInProgressFunc="items_percent",
         exclusion={"list": ["collect 50% items", "collect 75% items", "collect 100% items"]},
         category="Items",
         introText="collect 25 percent of items"),
    Goal("collect 50% items", "items", lambda sm, ap: SMBool(True),
         "collect_50_items", romInProgressFunc="items_percent",
         exclusion={"list": ["collect 25% items", "collect 75% items","collect 100% items"]},
         category="Items",
         introText="collect 50 percent of items"),
    Goal("collect 75% items", "items", lambda sm, ap: SMBool(True),
         "collect_75_items", romInProgressFunc="items_percent",
         exclusion={"list": ["collect 25% items", "collect 50% items", "collect 100% items"]},
         category="Items",
         introText="collect 75 percent of items"),
    Goal("collect 100% items", "items", lambda sm, ap: SMBool(True),
         "collect_100_items", romInProgressFunc="items_percent",
         exclusion={"list": ["collect 25% items", "collect 50% items", "collect 75% items", "collect all upgrades"]},
         category="Items",
         introText="collect all items"),
    Goal("collect all upgrades", "items", lambda sm, ap: SMBool(True),
         "all_major_items", romInProgressFunc="upgrades_collected",
         text="get all upgrades",
         introText="collect all upgrades",
         category="Items"),
    Goal("clear crateria", "items", lambda sm, ap: SMBool(True),
         "crateria_cleared", romInProgressFunc="crateria_clear_progress",
         category="Items",
         area="Crateria"),
    Goal("clear green brinstar", "items", lambda sm, ap: SMBool(True),
         "green_brin_cleared", romInProgressFunc="green_brin_clear_progress",
         text="clear green brin",
         introText="clear green brinstar",
         category="Items",
         area="GreenPinkBrinstar"),
    Goal("clear red brinstar", "items", lambda sm, ap: SMBool(True),
         "red_brin_cleared", romInProgressFunc="red_brin_clear_progress",
         category="Items",
         area="RedBrinstar"),
    Goal("clear wrecked ship", "items", lambda sm, ap: SMBool(True),
         "ws_cleared", romInProgressFunc="ws_clear_progress",
         text="clear wreck ship",
         introText="clear wrecked ship",
         category="Items",
         area="WreckedShip"),
    Goal("clear kraid's lair", "items", lambda sm, ap: SMBool(True),
         "kraid_cleared", romInProgressFunc="kraid_clear_progress",
         category="Items",
         area="Kraid"),
    Goal("clear upper norfair", "items", lambda sm, ap: SMBool(True),
         "upper_norfair_cleared", romInProgressFunc="upper_norfair_clear_progress",
         text="clear up norfair",
         introText="clear upper norfair",
         category="Items",
         area="Norfair"),
    Goal("clear croc's lair", "items", lambda sm, ap: SMBool(True),
         "croc_cleared", romInProgressFunc="croc_clear_progress",
         category="Items",
         area="Crocomire"),
    Goal("clear lower norfair", "items", lambda sm, ap: SMBool(True),
         "lower_norfair_cleared", romInProgressFunc="lower_norfair_clear_progress",
         text="clear low norfair",
         introText="clear lower norfair",
         category="Items",
         area="LowerNorfair"),
    Goal("clear west maridia", "items", lambda sm, ap: SMBool(True),
         "west_maridia_cleared", romInProgressFunc="west_maridia_clear_progress",
         category="Items",
         area="WestMaridia"),
    Goal("clear east maridia", "items", lambda sm, ap: SMBool(True),
         "east_maridia_cleared", romInProgressFunc="east_maridia_clear_progress",
         text="clear east marid",
         introText="clear east maridia",
         category="Items",
         area="EastMaridia"),
    # map
    Goal("explore 25% map", "map", lambda sm, ap: Objectives.canExploreMapPercent(sm, ap, 25), # assume this will always be possible, even with super fun
         "explored_map_25", romInProgressFunc="explored_all_map_percent",
         exclusion={"list": ["explore 50% map", "explore 75% map",  "explore 100% map"]},
         introText="explore 25 percent of map",
         category="Map"),
    Goal("explore 50% map", "map", lambda sm, ap: Objectives.canExploreMapPercent(sm, ap, 50), # assume this will always be possible, even with super fun
         "explored_map_50", romInProgressFunc="explored_all_map_percent",
         exclusion={"list": ["explore 25% map", "explore 75% map",  "explore 100% map"]},
         introText="explore 50 percent of map",
         category="Map"),
    Goal("explore 75% map", "map", lambda sm, ap: Objectives.canExploreMapPercent(sm, ap, 75), # assume this will always be possible, even with super fun
         "explored_map_75", romInProgressFunc="explored_all_map_percent",
         exclusion={"list": ["explore 50% map", "explore 25% map",  "explore 100% map"]},
         introText="explore 75 percent of map",
         category="Map"),
    Goal("explore 100% map", "map", lambda sm, ap: Objectives.canExploreMap(sm, ap),
         "explored_map_100", romInProgressFunc="explored_all_map_percent",
         exclusion={"list": ["explore 50% map", "explore 75% map",  "explore 25% map"]},
         introText="explore the entire map",
         category="Map"),
    Goal("explore crateria", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "Crateria"),
         "crateria_explored", romInProgressFunc="crateria_explored_percent",
         category="Map",
         area="Crateria"),
    Goal("explore green brinstar", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "GreenPinkBrinstar"),
         "green_brin_explored", romInProgressFunc="green_brin_explored_percent",
         text="explore green brin",
         introText="explore green brinstar",
         category="Map",
         area="GreenPinkBrinstar"),
    Goal("explore red brinstar", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "RedBrinstar"),
         "red_brin_explored", romInProgressFunc="red_brin_explored_percent",
         text="explore red brin",
         introText="explore red brinstar",
         category="Map",
         area="RedBrinstar"),
    Goal("explore wrecked ship", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "WreckedShip"),
         "ws_explored", romInProgressFunc="ws_explored_percent",
         text="explore wreck ship",
         introText="explore wrecked ship",
         category="Map",
         area="WreckedShip"),
    Goal("explore kraid's lair", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "Kraid"),
         "kraid_explored", romInProgressFunc="kraid_explored_percent",
         text="explore kraid lair",
         introText="explore kraid's lair",
         category="Map",
         area="Kraid"),
    Goal("explore upper norfair", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "Norfair"),
         "upper_norfair_explored", romInProgressFunc="upper_norfair_explored_percent",
         text="explore up norfair",
         introText="explore upper norfair",
         category="Map",
         area="Norfair"),
    Goal("explore croc's lair", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "Crocomire"),
         "croc_explored", romInProgressFunc="croc_explored_percent",
         text="explore croc lair",
         introText="explore croc's lair",
         category="Map",
         area="Crocomire"),
    Goal("explore lower norfair", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "LowerNorfair"),
         "lower_norfair_explored", romInProgressFunc="lower_norfair_explored_percent",
         text="explore lower norf",
         introText="explore lower norfair",
         category="Map",
         area="LowerNorfair"),
    Goal("explore west maridia", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "WestMaridia"),
         "west_maridia_explored", romInProgressFunc="west_maridia_explored_percent",
         text="explore west marid",
         introText="explore west maridia",
         category="Map",
         area="WestMaridia"),
    Goal("explore east maridia", "map", lambda sm, ap: Objectives.canExploreArea(sm, ap, "EastMaridia"),
         "east_maridia_explored", romInProgressFunc="east_maridia_explored_percent",
         text="explore east marid",
         introText="explore east maridia",
         category="Map",
         area="EastMaridia"),
    # memes
    Goal("tickle the red fish", "other",
         lambda sm, ap: sm.wand(sm.haveItem('Grapple'), Objectives.canAccess(sm, ap, "Red Fish Room Bottom")),
         "fish_tickled",
         escapeAccessPoints=(1, ["Red Fish Room Bottom"]),
         objCompletedFuncAPs=lambda ap: ["Red Fish Room Bottom"],
         category="Memes"),
    Goal("kill the orange geemer", "other",
         lambda sm, ap: sm.wand(Objectives.canAccess(sm, ap, "Bowling"), # XXX this unnecessarily adds canPassBowling as requirement
                                sm.wor(sm.haveItem('Wave'), sm.canUsePowerBombs())),
         "orange_geemer",
         escapeAccessPoints=(1, ["Bowling"]),
         objCompletedFuncAPs=lambda ap: ["Bowling"],
         text="{} orange geemer",
         category="Memes"),
    Goal("kill shaktool", "other",
         lambda sm, ap: sm.wand(Objectives.canAccess(sm, ap, "Oasis Bottom"),
                                sm.canTraverseSandPits(),
                                sm.canAccessShaktoolFromPantsRoom()),
         "shak_dead",
         escapeAccessPoints=(1, ["Oasis Bottom"]),
         objCompletedFuncAPs=lambda ap: ["Oasis Bottom"],
         text="{} shaktool",
         category="Memes"),
    Goal("activate chozo robots", "other", lambda sm, ap: sm.wand(Objectives.canAccessLocation(sm, ap, "Bomb"),
                                                                  Objectives.canAccessLocation(sm, ap, "Gravity Suit"),
                                                                  sm.haveItem("GoldenTorizo"),
                                                                  sm.canPassLowerNorfairChozo()), # graph access implied by GT loc
         "all_chozo_robots", romInProgressFunc="in_progress_chozo_robots",
         category="Memes",
         text="trigger chozo bots      ",
         escapeAccessPoints=(3, ["Landing Site", "Screw Attack Bottom", "Bowling"]),
         objCompletedFuncAPs=lambda ap: ["Landing Site", "Screw Attack Bottom", "Bowling"],
         exclusion={"list": ["kill golden torizo"]},
         conflictFunc=lambda settings: settings.qty['energy'] == 'ultra sparse' and (not Knows.LowStuffGT or (Knows.LowStuffGT.difficulty > settings.maxDiff))),
    Goal("visit the animals", "other", lambda sm, ap: sm.wand(Objectives.canAccess(sm, ap, "Big Pink"), sm.haveItem("SpeedBooster"), # dachora
                                                              Objectives.canAccess(sm, ap, "Etecoons Bottom")), # Etecoons
         "visited_animals", romInProgressFunc="in_progress_animals",
         text="visit the animals      ",
         category="Memes",
         escapeAccessPoints=(2, ["Big Pink", "Etecoons Bottom"]),
         objCompletedFuncAPs=lambda ap: ["Big Pink", "Etecoons Bottom"]),
    Goal("kill king cacatac", "other",
         lambda sm, ap: Objectives.canAccess(sm, ap, 'Bubble Mountain Top'),
         "king_cac_dead",
         category="Memes",
         escapeAccessPoints=(1, ['Bubble Mountain Top']),
         objCompletedFuncAPs=lambda ap: ['Bubble Mountain Top'])
]


_goals = {goal.name:goal for goal in _goalsList}

def completeGoalData():
    # "nothing" is incompatible with everything
    _goals["nothing"].exclusion["list"] = [goal.name for goal in _goalsList]
    areaGoals = [goal for goal in _goalsList if goal.area is not None]
    itemAreaGoals = [goal.name for goal in areaGoals if goal.gtype == "items"]
    # if we need 100% items, don't require "clear area", as it covers those
    _goals["collect 100% items"].exclusion["list"] += itemAreaGoals[:]
    # if we have scav hunt, don't require "clear area" (HUD behaviour incompatibility)
    _goals["finish scavenger hunt"].exclusion["list"] += itemAreaGoals[:]
    # remove clear area goals if disabled tourian, as escape can trigger as soon as an area is cleared,
    # even if ship is not currently reachable
    for goal in itemAreaGoals:
        _goals[goal].exclusion['tourian'] = "Disabled"
    # if we need 100% map, don't require "explore area", as it covers those
    mapAreaGoals = [goal.name for goal in areaGoals if goal.gtype == "map"]
    _goals["explore 100% map"].exclusion["list"] += mapAreaGoals[:]

completeGoalData()

class Objectives(object):
    activeGoals = []
    nbActiveGoals = 0
    nbRequiredGoals = 0
    maxRequiredGoals = 9
    maxActiveGoals = MAX_OBJECTIVES
    totalItemsCount = 100
    goals = _goals
    graph = None
    _tourianRequired = None
    hidden = False
    vanillaGoals = ["kill kraid", "kill phantoon", "kill draygon", "kill ridley"]
    scavHuntGoal = ["finish scavenger hunt"]

    def __init__(self, tourianRequired=True, randoSettings=None):
        if Objectives._tourianRequired is None:
            Objectives._tourianRequired = tourianRequired
        self.randoSettings = randoSettings

    @property
    def tourianRequired(self):
        assert Objectives._tourianRequired is not None
        return Objectives._tourianRequired

    def resetGoals(self):
        Objectives.activeGoals = []
        Objectives.nbActiveGoals = 0

    def conflict(self, newGoal):
        if newGoal.exclusion.get('tourian') == "Disabled" and self.tourianRequired == False:
            LOG.debug("new goal %s conflicts with disabled Tourian" % newGoal.name)
            return True
        LOG.debug("check if new goal {} conflicts with existing active goals".format(newGoal.name))
        count = 0
        for goal in Objectives.activeGoals:
            if newGoal.name in goal.exclusion["list"]:
                LOG.debug("new goal {} in exclusion list of active goal {}".format(newGoal.name, goal.name))
                return True
            if goal.name in newGoal.exclusion["list"]:
                LOG.debug("active goal {} in exclusion list of new goal {}".format(goal.name, newGoal.name))
                return True
            # count bosses/minibosses already active if new goal has a limit
            if newGoal.exclusion.get("type") == goal.gtype:
                count += 1
                LOG.debug("new goal limit type: {} same as active goal {}. count: {}".format(newGoal.exclusion["type"], goal.name, count))
        if count > newGoal.exclusion.get("limit", 0):
            LOG.debug("new goal {} limit {} is lower than active goals of type: {}".format(newGoal.name, newGoal.exclusion["limit"], newGoal.exclusion["type"]))
            return True
        LOG.debug("no direct conflict detected for new goal {}".format(newGoal.name))

        # if at least one active goal has a limit and new goal has the same type of one of the existing limit
        # check that new goal doesn't exceed the limit
        for goal in Objectives.activeGoals:
            goalExclusionType = goal.exclusion.get("type")
            if goalExclusionType is not None and goalExclusionType == newGoal.gtype:
                count = 0
                for lgoal in Objectives.activeGoals:
                    if lgoal.gtype == newGoal.gtype:
                        count += 1
                # add new goal to the count
                if count >= goal.exclusion["limit"]:
                    LOG.debug("new Goal {} would excess limit {} of active goal {}".format(newGoal.name, goal.exclusion["limit"], goal.name))
                    return True

        LOG.debug("no backward conflict detected for new goal {}".format(newGoal.name))

        if self.randoSettings is not None and newGoal.conflictFunc is not None:
            if newGoal.conflictFunc(self.randoSettings):
                LOG.debug("new Goal {} is conflicting with rando settings".format(newGoal.name))
                return True
            LOG.debug("no conflict with rando settings detected for new goal {}".format(newGoal.name))

        return False

    def addGoal(self, goalName, completed=False):
        LOG.debug("addGoal: {}".format(goalName))
        goal = Objectives.goals[goalName]
        if self.conflict(goal):
            return
        Objectives.nbActiveGoals += 1
        assert Objectives.nbActiveGoals <= Objectives.maxActiveGoals, "Too many active goals"
        goal.setRank(Objectives.nbActiveGoals)
        goal.completed = completed
        Objectives.activeGoals.append(goal)

    def removeGoal(self, goal):
        Objectives.nbActiveGoals -= 1
        Objectives.activeGoals.remove(goal)

    def clearGoals(self):
        Objectives.nbActiveGoals = 0
        Objectives.nbRequiredGoals = 0
        Objectives.activeGoals.clear()

    # call after objective list is built
    @staticmethod
    def setNbRequiredGoals(n):
        Objectives.nbRequiredGoals = min(Objectives.nbActiveGoals, max(0, min(n, Objectives.maxRequiredGoals)))

    @staticmethod
    def isGoalActive(goalName):
        return Objectives.goals[goalName] in Objectives.activeGoals

    # having graph as a global sucks but Objectives instances are all over the place,
    # goals must access it, and it doesn't change often
    @staticmethod
    def setGraph(graph, maxDiff):
        Objectives.graph = graph
        Objectives.maxDiff = maxDiff
        for goalName, goal in Objectives.goals.items():
            if goal.area is not None:
                goal.escapeAccessPoints = getAreaEscapeAccessPoints(goal.area)

    @staticmethod
    def canAccess(sm, src, dst):
        return SMBool(Objectives.graph.canAccess(sm, src, dst, Objectives.maxDiff))

    @staticmethod
    def canAccessLocation(sm, ap, locName):
        loc = locationsDict[locName]
        availLocs = Objectives.graph.getAvailableLocations([loc], sm, Objectives.maxDiff, ap)
        return SMBool(loc in availLocs)

    # XXX consider "explore map" equivalent to "access all locations and APs"

    @staticmethod
    def canExploreArea(sm, rootApName, area):
        graph, maxDiff = Objectives.graph, Objectives.maxDiff

        accessibleAPs = graph.getAccessibleAccessPoints(rootApName)
        availAPs = graph.getAvailableAccessPoints(graph.accessPoints[rootApName], sm, maxDiff)
        areaAPs = [ap for ap in accessibleAPs if ap.GraphArea == area]
        for ap in areaAPs:
            if ap not in availAPs:
                return SMBool(False)

        accessibeLocs = graph.getAccessibleLocations(locationsDict.values(), rootApName)
        areaLocs = [loc for loc in accessibeLocs if loc.GraphArea == area]
        availLocs = graph.getAvailableLocations(areaLocs, sm, maxDiff, rootApName)
        if len(availLocs) != len(areaLocs):
            return SMBool(False)

        return SMBool(True)

    @staticmethod
    def canExploreMap(sm, rootApName):
        graph, maxDiff = Objectives.graph, Objectives.maxDiff
        accessibleAPs = graph.getAccessibleAccessPoints(rootApName)
        allAPs = [ap for ap in accessibleAPs if ap.GraphArea != "Tourian" and ap.GraphArea != "Ceres"]
        availAPs = graph.getAvailableAccessPoints(graph.accessPoints[rootApName], sm, maxDiff)
        for ap in allAPs:
            if ap not in availAPs:
                return SMBool(False)

        accessibeLocs = graph.getAccessibleLocations(locationsDict.values(), rootApName)
        allLocs = [loc for loc in accessibeLocs if loc.GraphArea != "Tourian"]
        availLocs = graph.getAvailableLocations(allLocs, sm, maxDiff, rootApName)
        if len(availLocs) != len(allLocs):
            return SMBool(False)

        return SMBool(True)

    @staticmethod
    def canExploreMapPercent(sm, rootApName, percent):
        graph, maxDiff = Objectives.graph, Objectives.maxDiff
        # questionable heuristic: consider "access x% items" equivalent to "can reach x% locations"
        accessibeLocs = graph.getAccessibleLocations(locationsDict.values(), rootApName)
        allLocs = [loc for loc in accessibeLocs if loc.GraphArea != "Tourian"]
        availLocs = graph.getAvailableLocations(allLocs, sm, maxDiff, rootApName)
        pct = 100*float(len(availLocs)) / float(len(allLocs))
        return SMBool(pct >= percent)

    def setVanilla(self):
        for goal in Objectives.vanillaGoals:
            self.addGoal(goal)

    def isVanilla(self):
        # kill G4 and/or scav hunt
        if Objectives.nbActiveGoals == 1:
            for goal in Objectives.activeGoals:
                if goal.name not in Objectives.scavHuntGoal + ["kill all g4"]:
                    return False
            return True
        elif Objectives.nbActiveGoals == 4:
            for goal in Objectives.activeGoals:
                if goal.name not in Objectives.vanillaGoals:
                    return False
            return True
        elif Objectives.nbActiveGoals == 5:
            for goal in Objectives.activeGoals:
                if goal.name not in Objectives.vanillaGoals + Objectives.scavHuntGoal:
                    return False
            return True
        else:
            return False

    def setScavengerHunt(self):
        self.addGoal("finish scavenger hunt")

    def updateScavengerEscapeAccess(self, ap):
        assert Objectives.isGoalActive("finish scavenger hunt")
        (_, apList) = Objectives.goals['finish scavenger hunt'].escapeAccessPoints
        apList.append(ap)

    def _replaceEscapeAccessPoints(self, goal, aps):
        (_, apList) = Objectives.goals[goal].escapeAccessPoints
        apList.clear()
        apList += aps

    def updateItemPercentEscapeAccess(self, collectedLocsAccessPoints):
        for pct in [25,50,75,100]:
            goal = 'collect %d%% items' % pct
            self._replaceEscapeAccessPoints(goal, collectedLocsAccessPoints)
        # not exactly accurate, but player has all upgrades to escape
        self._replaceEscapeAccessPoints("collect all upgrades", collectedLocsAccessPoints)

    def setScavengerHuntFunc(self, scavClearFunc):
        Objectives.goals["finish scavenger hunt"].clearFunc = scavClearFunc

    def setItemPercentFuncs(self, totalItemsCount=None, allUpgradeTypes=None):
        def getPctFunc(pct, totalItemsCount):
            def f(sm, ap):
                nonlocal pct, totalItemsCount
                return sm.hasItemsPercent(pct, totalItemsCount)
            return f

        for pct in [25,50,75,100]:
            goal = 'collect %d%% items' % pct
            Objectives.goals[goal].clearFunc = getPctFunc(pct, totalItemsCount)
        if allUpgradeTypes is not None:
            Objectives.goals["collect all upgrades"].clearFunc = lambda sm, ap: sm.haveItems(allUpgradeTypes)

    def setAreaFuncs(self, funcsByArea):
        goalsByArea = {goal.area:goal for goalName, goal in Objectives.goals.items()}
        for area, func in funcsByArea.items():
            if area in goalsByArea:
                goalsByArea[area].clearFunc = func

    def setSolverMode(self, solver):
        self.setScavengerHuntFunc(solver.scavengerHuntComplete)
        # in rando we know the number of items after randomizing, so set the functions only for the solver
        self.setItemPercentFuncs(allUpgradeTypes=solver.majorUpgrades)

        def getObjAreaFunc(area):
            def f(sm, ap):
                nonlocal solver, area
                visitedLocs = set([loc.Name for loc in solver.visitedLocations])
                return SMBool(all(locName in visitedLocs for locName in solver.splitLocsByArea[area]))
            return f
        self.setAreaFuncs({area:getObjAreaFunc(area) for area in solver.splitLocsByArea})

    def expandGoals(self):
        LOG.debug("Active goals:"+str(Objectives.activeGoals))
        # try to replace 'kill all G4' with the four associated objectives.
        # we need at least 3 empty objectives out of the max (-1 +4)
        if Objectives.maxActiveGoals - Objectives.nbActiveGoals < 3:
            return

        expandables = [goal for goal in Objectives.activeGoals if goal.expandableList]

        if len(expandables) == 0:
            return

        for expandable in expandables:
            if Objectives.nbActiveGoals + len(expandable.expandableList) > Objectives.maxRequiredGoals:
                continue
            LOG.debug("replace {} with {}".format(expandable.name, expandable.expandableList))
            self.removeGoal(expandable)
            for name in expandable.expandableList:
                self.addGoal(name)

        # rebuild ranks
        for i, goal in enumerate(Objectives.activeGoals, 1):
            goal.rank = i

    # call from logic
    @staticmethod
    def canClearGoals(smbm, ap):
        result = SMBool(True)
        for goal in Objectives.activeGoals:
            result = smbm.wand(result, goal.canClearGoal(smbm, ap))
        return result

    # call from solver
    def checkGoals(self, smbm, ap):
        ret = {}

        for goal in Objectives.activeGoals:
            if goal.completed is True:
                continue
            # check if goal can be completed
            ret[goal.name] = goal.canClearGoal(smbm, ap)

        return ret

    def setGoalCompleted(self, goalName, completed):
        for goal in Objectives.activeGoals:
            if goal.name == goalName:
                goal.completed = completed
                return
        assert False, "Can't set goal {} completion to {}, goal not active".format(goalName, completed)

    def enoughGoalsCompleted(self):
        nCompleted = len([goal for goal in Objectives.activeGoals if goal.completed])
        return nCompleted >= Objectives.nbRequiredGoals

    def getGoalFromCheckFunction(self, checkFunction):
        for name, goal in Objectives.goals.items():
            if goal.checkAddr == checkFunction:
                return goal
        assert True, "Goal with check function {} not found".format(hex(checkFunction))

    @staticmethod
    def getTotalItemsCount():
        return Objectives.totalItemsCount

    # call from web
    @staticmethod
    def getAddressesToRead():
        objectiveSize = 2
        bytesToRead = Objectives.maxActiveGoals * objectiveSize
        otherAddrs = ['totalItems', 'itemsMask', 'beamsMask', 'objectives_n_objectives', 'objectives_n_objectives_required']
        ret = [Addresses.getOne('objectivesList')+i for i in range(0, bytesToRead+1)]
        for addr in otherAddrs:
            ret += Addresses.getWeb(addr)
        return ret

    @staticmethod
    def getExclusions():
        # to compute exclusions in the front end
        return {goalName: goal.exclusion for goalName, goal in Objectives.goals.items()}

    @staticmethod
    def getObjectivesTypes():
        # to compute exclusions in the front end
        types = {'boss': [], 'miniboss': []}
        for goalName, goal in Objectives.goals.items():
            if goal.gtype in types:
                types[goal.gtype].append(goalName)
        return types

    @staticmethod
    def getObjectivesSort():
        return list(Objectives.goals.keys())

    @staticmethod
    def getObjectivesCategories():
        return {goal.name: goal.category for goal in Objectives.goals.values() if goal.category is not None}

    # call from rando check pool and solver
    @staticmethod
    def getMandatoryBosses():
        r = [goal.items for goal in Objectives.activeGoals]
        return [item for items in r for item in items]

    @staticmethod
    def checkLimitObjectives(beatableBosses):
        # check that there's enough bosses/minibosses for limit objectives
        from logic.smboolmanager import SMBoolManager
        smbm = SMBoolManager()
        smbm.addItems(beatableBosses)
        for goal in Objectives.activeGoals:
            if not goal.isLimit():
                continue
            if not goal.canClearGoal(smbm):
                return False
        return True

    # call from solver
    @staticmethod
    def getGoalsList():
        return [goal.name for goal in Objectives.activeGoals]

    # call from interactivesolver
    def getState(self):
        return {goal.name: goal.completed for goal in Objectives.activeGoals}

    def getTotalItemsCount(self):
        return Objectives.totalItemsCount

    def setState(self, state):
        for goalName, completed in state.items():
            self.addGoal(goalName, completed)

    def setTotalItemsCount(self, totalItemsCount):
        Objectives.totalItemsCount = totalItemsCount

    def resetGoals(self):
        for goal in Objectives.activeGoals:
            goal.completed = False

    # call from rando
    @staticmethod
    def getAllGoals(removeNothing=False):
        return [goal.name for goal in Objectives.goals.values() if goal.available and (not removeNothing or goal.name != "nothing")]

    # call from rando
    def setRandom(self, nbGoals, availableGoals):
        while Objectives.nbActiveGoals < nbGoals and availableGoals:
            goalName = random.choice(availableGoals)
            self.addGoal(goalName)
            availableGoals.remove(goalName)

    # call from solver
    def readGoals(self, romReader):
        self.resetGoals()
        # read objective quantities
        Objectives.nbActiveGoals = romReader.romFile.readByte(Addresses.getOne('objectives_n_objectives'))
        Objectives.nbRequiredGoals = romReader.romFile.readByte(Addresses.getOne('objectives_n_objectives_required'))
        # read objectives list
        romReader.romFile.seek(Addresses.getOne('objectivesList'))
        for i in range(Objectives.nbActiveGoals):
            checkFunction = romReader.romFile.readWord()
            goal = self.getGoalFromCheckFunction(checkFunction)
            Objectives.activeGoals.append(goal)

        # read number of available items for items % objectives
        Objectives.totalItemsCount = romReader.romFile.readByte(Addresses.getOne('totalItems'))

        for goal in Objectives.activeGoals:
            LOG.debug("active goal: {}".format(goal.name))

        Objectives._tourianRequired = not bool(romReader.romOptions.read('escapeTrigger'))
        LOG.debug("tourianRequired: {}".format(self.tourianRequired))

        LOG.debug(f"nbActiveGoals: {Objectives.nbActiveGoals}, nbRequiredGoals: {Objectives.nbRequiredGoals}")

    # call from rando
    def writeGoals(self, romFile, tourian):
        # write check functions
        romFile.seek(Addresses.getOne('objectivesList'))
        for goal in Objectives.activeGoals:
            romFile.writeWord(goal.checkAddr)
        # list terminator
        romFile.writeWord(0x0000)
        # write "in progress" check functions
        romFile.seek(Addresses.getOne('objectives_in_progress_funcs'))
        for goal in Objectives.activeGoals:
            romFile.writeWord(goal.inProgressAddr)

        if Objectives.nbRequiredGoals == 0:
            Objectives.nbRequiredGoals = min(Objectives.nbActiveGoals, Objectives.maxRequiredGoals)
        else:
            Objectives.nbRequiredGoals = min(Objectives.nbRequiredGoals, Objectives.nbActiveGoals)

        # write number of objectives
        romFile.writeWord(Objectives.nbActiveGoals, Addresses.getOne('objectives_n_objectives'))
        romFile.writeWord(Objectives.nbRequiredGoals, Addresses.getOne('objectives_n_objectives_required'))

        # compute chars
        char2tile = {
            '.': 0x4A,
            '/': 0x4B,
            ' ': 0x00,
            '%': 0x150,
            '0': 0x160,
            'a': 0x30,
            '?': 0x1ab,
            "'": 0x1b9,
            "!": 0x1ba,
            ",": 0x1bb
        }
        for i in range(1, ord('z')-ord('a')+1):
            char2tile[chr(ord('a')+i)] = char2tile['a']+i
        for i in range(1, ord('9')-ord('0')+1):
            char2tile[chr(ord('0')+i)] = char2tile['0']+i
        def writeString(text, addr=None):
            text = text.lower()
            if addr is not None:
                romFile.seek(addr)
            for c in text:
                if c not in char2tile:
                    continue
                romFile.writeWord(0x2800 + char2tile[c])
        # write Tourian status
        writeString(tourian[:8].rjust(8, ' '), Addresses.getOne('objectives_obj_bg1_tilemap_tourian'))
        # write objectives text
        romFile.seek(Addresses.getOne('objectives_objs_txt'))
        addrs = []
        for i, goal in enumerate(Objectives.activeGoals):
            addrs.append(romFile.tell())
            writeString(goal.getText())
            romFile.writeWord(0xffff) # string terminator
            assert romFile.tell() < Addresses.getOne("objectives_objs_txt_limit"), "Objectives text too long"
        romFile.seek(Addresses.getOne("objectives_obj_txt_ptrs"))
        for addr in addrs:
            romFile.writeWord(pc_to_snes(addr) & 0xffff)
        # if objectives are hidden, write the name of the room to visit
        roomName = self._getHiddenObjRoomName(tourian)
        if roomName is not None:
            writeString(" %s." % roomName, Addresses.getOne("objectives_obj_bg1_tilemap_reveal_room"))
        self.writeIntroObjectives(romFile, tourian)

    def _getHiddenObjRoomName(self, tourian):
        roomName = None
        if Objectives.hidden == True:
            roomName = "golden statues room"
            if tourian == "Fast":
                roomName = "tourian eye door room"
            noTourian = Objectives.graph.accessPoints["Golden Four"].ConnectedTo == "Golden Four"
            if noTourian:
                roomName = "climb escape room"
        return roomName

    def writeIntroObjectives(self, rom, tourian):
        nActive, nReq = Objectives.nbActiveGoals, Objectives.nbRequiredGoals
        if self.isVanilla() and tourian == "Vanilla" and nActive == nReq:
            return
        # objectives or tourian are not vanilla, prepare intro text
        # two \n for an actual newline
        roomName = self._getHiddenObjRoomName(tourian)
        if roomName is None:
            maxDisplay = 6
            if nActive == nReq:
                text = "MISSION OBJECTIVES\n"
            else:
                text = "COMPLETE %d OUT OF\n" % nReq
            for i, goal in enumerate(Objectives.activeGoals):
                if i + 1 == maxDisplay and Objectives.nbActiveGoals > maxDisplay:
                    text += "\n\n... %d MORE ..." % (nActive - maxDisplay + 1)
                    break
                text += "\n\n%s" % goal.getIntroText()
        else:
            if nActive == nReq:
                text = "COMPLETE %d OBJECTIVE%s\n" % (nActive, "S" if nActive > 1 else "")
            else:
                text = "COMPLETE %d OUT OF %d POSSIBLE\n\nOBJECTIVES.\n" % (nReq, nActive)
            text += "\n\nTO REVEAL %s YOU MUST VISIT\n\n%s." % ("THEM" if nActive > 1 else "IT", roomName)
        text += "\n\n\nTOURIAN IS %s.\n\n\n" % tourian
        text += "CHECK OBJECTIVES STATUS IN\n\n"
        text += "THE PAUSE SCREEN."
        # actually write text in ROM
        self._writeIntroText(rom, text.upper())

    def _writeIntroText(self, rom, text, startX=1, startY=2):
        # for character translation
        charCodes = {
            ' ': 0xD67D,
            '.': 0xD75D,
            '!': 0xD77B,
            "'": 0xD76F,
            '0': 0xD721,
            'A': 0xD685
        }
        def addCharRange(start, end, base): # inclusive range
            for c in range(ord(start), ord(end)+1):
                offset = c - ord(base)
                charCodes[chr(c)] = charCodes[base]+offset*6
        addCharRange('B', 'Z', 'A')
        addCharRange('1', '9', '0')
        # actually write chars
        x, y = startX, startY
        def writeChar(c, frameDelay=2):
            nonlocal rom, x, y
            assert x <= 0x1F and y <= 0x18, "Intro text formatting error (x=0x%x, y=0x%x):\n%s" % (x, y, text)
            if c == '\n':
                x = startX
                y += 1
            else:
                assert c in charCodes, "Invalid intro char "+c
                rom.writeWord(frameDelay)
                rom.writeByte(x)
                rom.writeByte(y)
                rom.writeWord(charCodes[c])
                x += 1
        rom.seek(Addresses.getOne('introText'))
        for c in text:
            writeChar(c)
        # write trailer, see intro_text.asm
        rom.writeWord(0xAE5B)
        rom.writeWord(0x9698)

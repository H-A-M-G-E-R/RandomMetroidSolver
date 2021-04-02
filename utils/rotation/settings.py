from utils.parameters import Settings

class SettingsRotation(Settings):
    @staticmethod
    def update():
        # update class member of Settings with rotation custom values
        for category in SettingsRotation._hellRunsTable.keys():
            for key, value in SettingsRotation._hellRunsTable[category]:
                SettingsRotation.hellRunsTable[category][key] = value

    _hellRunsTable = {
        'Ice': {
            # from 'Crocomire Speedway Bottom' to 'Business Center' through croc speedway
            'Croc -> Norfair Entrance': {'mult': 0.33, 'minE': 6, 'hellRun': 'Ice'},
            # to access "Missile (below Ice Beam)" from 'Crocomire Speedway Bottom'
            'Croc -> Ice Missiles': {'mult': 1.0, 'minE': 2, 'hellRun': 'MainUpperNorfair'},
            # from 'Crocomire Speedway Bottom' to 'Bubble Mountain Bottom' through Acid Snakes Tunnel
            # from 'Crocomire Speedway Bottom' to 'Business Center' through frog speedway and acid snakes tunnel
            'Croc -> Bubble Mountain': {'mult': 2.0, 'minE': 1, 'hellRun': 'Ice'}
        },
        'MainUpperNorfair': {
            # from 'Crocomire Speedway Bottom' to 'Business Center' through grapple escape
            # also used to grapple escape missiles
            'Croc -> Norfair Entrance': {'mult': 0.75, 'minE': 2, 'hellRun': 'MainUpperNorfair'}
        }
    }

    bathPresets = {
        # with Varia
        'Lava': {
            'No thanks' : None,
            'Gimme energy' : [(5, mania), (6, hardcore), (8, harder), (10, hard), (14, medium)],
            'Default' : [(4, mania), (5, hardcore), (6, hard), (9, medium)],
            'Bring the heat' : [(3, mania), (4, harder), (5, hard), (7, medium)],
            'I run RBO' : [(3, harder), (4, hard), (5, medium), (6, easy)],
            'Solution' : [(3, samus), (4, mania), (5, hardcore), (6, hard), (9, medium)]
        },
        # with Varia & Gravity
        'Acid': {
            'Default' : None,
            'Bring the heat' : [(10, mania), (13, hardcore), (18, harder)],
            'I run RBO' : [(8, mania), (9, hardcore), (11, harder), (14, hard), (18, medium)],
            'Solution' : [(8, impossibru), (18, mania)]
        }
    }

    baths = {
        'Lava': bathPresets['Lava']['Default'],
        'Acid': bathPresets['Acid']['Default']
    }

    bathsTable = {
        'Lava': {
            'Cathedral': {'bathMult': 1.0, 'bath': 'Lava'},
            'Magdollite Tunnel': {'bathMult': 2.0, 'bath': 'Lava'},
            'Acid Snakes Tunnel': {'bathMult': 0.75, 'bath': 'Lava'},
            'Spiky Platforms Tunnel': {'bathMult': 1.0, 'bath': 'Lava'},
            # when coming from bubble lava is up
            'Volcano Room': {'bathMult': 2.0, 'bath': 'Lava'},
            'Crocomire Escape': {'bathMult': 1.0, 'bath': 'Lava'},
            '': {'bathMult': 1.0, 'bath': 'Lava'},
        },
        'Acid': {
            'Gauntlet': {'bathMult': 1.0, 'bath': 'Acid'},
            'Landing Site PowerBomb': {'bathMult': 1.0, 'bath': 'Acid'}
        }
    }

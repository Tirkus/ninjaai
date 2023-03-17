--[[

    obs_space [
        self [
            coord [x, y, z]
            direction FLOAT
            invulnerable BOOL
            state INT (0-stand, 1-run, 2-hit, 3-wave, 4-dagger)
            recharge [FLOAT, FLOAT, FLOAT, FLOAT] (spells)
        ]

        enemies [
            enemy {
                coord [FLOAT, FLOAT, FLOAT]
                direction FLOAT
                invulnerable BOOL
                state INT (0-stand, 1-run, 2-hit, 3-wave, 4-dagger)
                recharge [FLOAT, FLOAT, FLOAT, FLOAT] (spells)
           }
        ]

        spells [
            type BOOL (0-wave)
            coord [FLOAT, FLOAT, FLOAT]
        ]
    ]

    action_space [

    ]

--]]

ObservationSpace = {}
ObservationSpace.__index = ObservationSpace

function ObservationSpace:new()
    local self = setmetatable({}, ObservationSpace)
    self.bot_state = {
        coord = {0.0, 0.0, 0.0},
        direction = 0.0,
        invulnerable = false,
        state = 0,
        recharge = {0.0, 0.0, 0.0, 0.0}
    }
    self.enemy_states = {}
    self.spells = {}
    return self
end

function ObservationSpace:update_bot_state(coord, direction, invulnerable, state, recharge)
    self.bot_state.coord = coord
    self.bot_state.direction = direction
    self.bot_state.invulnerable = invulnerable
    self.bot_state.state = state
    self.bot_state.recharge = recharge
end

function ObservationSpace:add_enemy_state(enemy_id, coord, direction, invulnerable, state, recharge)
    if not self.enemy_states[enemy_id] then
        self.enemy_states[enemy_id] = {}
    end
    local enemy_state = {
        coord = coord,
        direction = direction,
        invulnerable = invulnerable,
        state = state,
        recharge = recharge
    }
    table.insert(self.enemy_states[enemy_id], enemy_state)
end

function ObservationSpace:add_spell(spell_type, coord)
    local spell = {
        type = spell_type,
        coord = coord
    }
    table.insert(self.spells, spell)
end

function ObservationSpace:toString(observation_space)
    print(observation_space.bot_state.coord)
    print(observation_space.bot_state.direction)
    print(observation_space.bot_state.invulnerable)
    print(observation_space.bot_state.state)
    print(table.concat(observation_space.bot_state.recharge," "))
    print()
    for enemy in observation_space.enemy_states do
        print(enemy.coord)
        print(enemy.direction)
        print(enemy.invulnerable)
        print(enemy.state)
        print(table.concat(enemy.recharge," "))
    end

end
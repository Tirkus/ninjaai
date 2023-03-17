action_space = {
    {
        name = "CastWave",
        args = {
            {name = "cord_x", type = "float", min = 0, max = 10000},
            {name = "cord_y", type = "float", min = 0, max = 10000},
            {name = "cord_z", type = "float", min = 0, max = 10000}
        }
    },
    {
        name = "CastWaveCancel",
        args = {
            {name = "cord_x", type = "float", min = 0, max = 10000},
            {name = "cord_y", type = "float", min = 0, max = 10000},
            {name = "cord_z", type = "float", min = 0, max = 10000}
        }
    },
    {
        name = "CastDeflect",
        args = {}
    },
    {
        name = "CastBlink",
        args = {
            {name = "cord_x", type = "float", min = 0, max = 10000},
            {name = "cord_y", type = "float", min = 0, max = 10000},
            {name = "cord_z", type = "float", min = 0, max = 10000}
        }
    },
    {
        name = "CastDagger",
        args = {
            {name = "enemy", type = "entity"}
        }
    },
    {
        name = "CastDaggerCancel",
        args = {
            {name = "enemy", type = "entity"}
        }
    },
    {
        name = "Move",
        args = {
            {name = "cord_x", type = "float", min = 0, max = 10000},
            {name = "cord_y", type = "float", min = 0, max = 10000},
            {name = "cord_z", type = "float", min = 0, max = 10000}
        }
    },
    {
        name = "MoveDirection",
        args = {
            {name = "cord_x", type = "float", min = 0, max = 10000},
            {name = "cord_y", type = "float", min = 0, max = 10000},
            {name = "cord_z", type = "float", min = 0, max = 10000}
        }
    }
}
local Creator = loadstring(game:HttpGet(
    "https://pastebin.com/raw/0fSnvfGt"
))()

local entity = Creator.createEntity({
    CustomName = "Trololo Rush",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Trolololo-Rush/main/TROLL%20RUSH.rbxm",

    Speed = 300,
    DelayTime = 2.5,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1,
    },

    Cycles = {
        Min = 1,
        Max = 3,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {5, 5, 0.1, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11370278617",
            Image2 = "rbxassetid://11370278617",
            Shake = true,

            Sound1 = {
                116282238939992,
                {Volume = 0.5},
            },

            Sound2 = {
                116282238939992,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                true,
                Min = 1,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Trololo Rush...",
    },
})

-- Debug callbacks

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Trololo Rush spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Trololo Rush despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Trololo Rush started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Trololo Rush finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Trololo Rush entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Trololo Rush:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Trololo Rush.")
end

-- Run Trololo Rush normally
Creator.runEntity(entity)

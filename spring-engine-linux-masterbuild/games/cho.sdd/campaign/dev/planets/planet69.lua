--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/terran02.png"
	
	local planetData = {
		name = "Folsom",
		startingPlanet = true,
		predownloadMap = true,
		--tutorialSkip = true,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.05,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.87,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
			hintText = "Click this planet to begin.",
			hintSize = {410, 66},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "6550 km",
			primary = "Origin",
			primaryType = "G8V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[Use a nimble force of Glaives to penetrate the enemy lines and rescue your commander from the local automatons. Once activated, construct an army and storm the enemy base as retribution.]]
		},
		gameConfig = {
			gameName = "Quick Rocket Tutorial",
			mapName = "FolsomDamDeluxeV4",
			playerConfig = {
				startX = 300,
				startZ = 3800,
				allyTeam = 0,
				commanderParameters = {
					facplop = false,
				},
				extraUnlocks = {
					"factorycloak",
					"cloakraid",
					"staticmex",
					"energysolar",
					"turretlaser", -- This is here so the tab exists
					"staticradar", -- This is here so the tab exists
				},
			},
			modoptions = {
				integral_disable_defence = 1,
				integral_disable_special = 1,
			},
			aiConfig = {
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NullAI",
					humanName = "Ally",
					unlocks = {},
					allyTeam = 0,
					commander = false,
				},
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NullAI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = true,
				},
			},
			objectiveConfig = {
			},
			bonusObjectiveConfig = {
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factorycloak",
				"cloakraid",
				"staticmex",
				"energysolar",
			},
			modules = {
				"module_ablative_armor_LIMIT_A_2",
			},
			abilities = {},
			codexEntries = {"faction_chickens"}
		},
	}
	
	return planetData
end

return GetPlanet

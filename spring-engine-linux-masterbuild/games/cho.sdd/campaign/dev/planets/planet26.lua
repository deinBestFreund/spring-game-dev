--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/terran02.png"
	
	local planetData = {
		name = "Kalyp",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.415,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.59,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Tropical",
			radius = "5830 km",
			primary = "Hassex",
			primaryType = "G9V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24469",
			text = [[Shut down the enemy Tidal Generator operation on this sunny coastline with the Hovercraft factory.]]
		},
		tips = {
			{
				image = "unitpics/hoverraid.png",
				text = [[Hovercraft move quickly over flat terrain as well as the surface of bodies of water. Daggers are very fast and armed with a gauss gun which passes through units and water.]]
			},
			{
				image = "unitpics/hoverskirm.png",
				text = [[Scalpels fire a pair of guided missiles at medium range. They are helpless during their long reload time - either destroy the enemy with the first salvo or bring an escort. Maces are good at cleaning up after a Scalpel volley.]]
			},
			{
				image = "unitpics/energywind.png",
				text = [[When built in water, Wind Generators become Tidal Generators, which generate a constant amount of energy rather than the variable amount of Wind Generators.]]
			},
			{
				image = "unitpics/turrettorp.png",
				text = [[Urchin torpedo launchers are a cheap and reliable solution to underwater threats.]]
			},
		},
		gameConfig = {
			mapName = "Malibu Beach v1",
			playerConfig = {
				startX = 1200,
				startZ = 1200,
				allyTeam = 0,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
				},
				extraUnlocks = {
					"factoryhover",
					"hovercon",
					"hoverraid",
					"hoverriot",
					"hoverskirm",
					"turrettorp",
					"energywind",
				},
				startUnits = {
					{
						name = "staticmex",
						x = 776,
						z = 808,
						facing = 0,
					},
					{
						name = "hoverriot",
						x = 625,
						z = 1550,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 536,
						z = 376,
						facing = 1,
					},
					{
						name = "staticmex",
						x = 1576,
						z = 328,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1768,
						z = 696,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 2088,
						z = 504,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 296,
						z = 776,
						facing = 0,
					},
					{
						name = "staticcon",
						x = 1600,
						z = 1200,
						facing = 0,
						selfPatrol = true,
					},
					{
						name = "staticcon",
						x = 1680,
						z = 1200,
						facing = 0,
						selfPatrol = true,
					},
					{
						name = "staticstorage",
						x = 1300,
						z = 1500,
						facing = 0,
					},
					{
						name = "factoryhover",
						x = 1500,
						z = 1500,
						facing = 0,
					},
					{
						name = "energywind",
						x = 712,
						z = 728,
						facing = 1,
					},
					{
						name = "energywind",
						x = 680,
						z = 648,
						facing = 1,
					},
					{
						name = "energywind",
						x = 664,
						z = 568,
						facing = 1,
					},
					{
						name = "energysolar",
						x = 1624,
						z = 440,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1704,
						z = 584,
						facing = 0,
					},
					{
						name = "energywind",
						x = 632,
						z = 488,
						facing = 1,
					},
					{
						name = "energysolar",
						x = 1864,
						z = 648,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1992,
						z = 552,
						facing = 0,
					},
					{
						name = "energywind",
						x = 600,
						z = 408,
						facing = 1,
					},
					{
						name = "energywind",
						x = 456,
						z = 424,
						facing = 1,
					},
					{
						name = "energywind",
						x = 424,
						z = 504,
						facing = 1,
					},
					{
						name = "energywind",
						x = 392,
						z = 584,
						facing = 1,
					},
					{
						name = "energywind",
						x = 360,
						z = 664,
						facing = 1,
					},
					{
						name = "energywind",
						x = 344,
						z = 744,
						facing = 1,
					},
					{
						name = "staticradar",
						x = 2480,
						z = 1664,
						facing = 0,
					},
					{
						name = "staticradar",
						x = 336,
						z = 3424,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 1176,
						z = 1640,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 536,
						z = 2264,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 176,
						z = 2992,
						facing = 0,
					},
					{
						name = "turretlaser",
						x = 2272,
						z = 2576,
						facing = 1,
					},
					{
						name = "turretlaser",
						x = 2752,
						z = 592,
						facing = 1,
					},
					{
						name = "turretlaser",
						x = 2640,
						z = 1184,
						facing = 1,
					},
					{
						name = "energysolar",
						x = 1240,
						z = 1656,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 1160,
						z = 1704,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 1112,
						z = 1624,
						facing = 2,
					},
					{
						name = "energysolar",
						x = 1192,
						z = 1576,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1987,
						z = 1058,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1987,
						z = 1137,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1988,
						z = 1224,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1990,
						z = 1310,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1993,
						z = 1400,
						facing = 1,
					},
					{
						name = "hoverraid",
						x = 1990,
						z = 1493,
						facing = 1,
					},
					{
						name = "energysolar",
						x = 600,
						z = 2280,
						facing = 0,
					},
					{
						name = "hoverskirm",
						x = 400,
						z = 1400,
						facing = 0,
					},
					{
						name = "hoverskirm",
						x = 550,
						z = 1400,
						facing = 0,
					},
					{
						name = "hoverskirm",
						x = 700,
						z = 1400,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 520,
						z = 2328,
						facing = 3,
					},
					{
						name = "hoverriot",
						x = 475,
						z = 1550,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 472,
						z = 2248,
						facing = 2,
					},
					{
						name = "hovercon",
						x = 1821,
						z = 1127,
						facing = 1,
					},
					{
						name = "hovercon",
						x = 1813,
						z = 1268,
						facing = 1,
					},
					{
						name = "hovercon",
						x = 1808,
						z = 1423,
						facing = 1,
					},
					{
						name = "energysolar",
						x = 552,
						z = 2200,
						facing = 1,
					},
				}
			},
			aiConfig = {
				{
					startX = 9400,
					startZ = 800,
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					humanName = "Renewers",
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"staticradar",
						"turretlaser",
						--"turretmissile",
						--"turrettorp",
						"shieldcon",
						"shieldraid",
						"shieldskirm",
						"shieldriot",
						"shieldassault",
						"hoverraid",
						"hoverriot",
						"hoverskirm",
						"shipscout",
						"shipriot",
						"subraider"
					},
					difficultyDependantUnlocks = {
						[2] = {"shipskirm"},
						[3] = {"shipskirm","shipcon"},
						[4] = {"shipskirm","shipcon","shipassault"},
					},
					commanderLevel = 3,
					commander = {
						name = "Bairis",
						chassis = "guardian",
						decorations = {
							"skin_bombard_steel"
						},
						modules = {
							"commweapon_rocketlauncher",
							"commweapon_rocketlauncher",
							"module_heavy_armor",
							"module_heavy_armor",
							"module_adv_targeting",
						}
					},
					midgameUnits = {
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 2,
							spawnRadius = 100,
							delay = 7*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 2,
							spawnRadius = 100,
							delay = 7*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 2,
							spawnRadius = 100,
							delay = 7*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 3,
							spawnRadius = 100,
							delay = 6*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 5*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 5*30*60,
							orbitalDrop = false,
						},
						{
							name = "subraider",
							x = 9900,
							z = 4800,
							facing = 3,
							difficultyAtLeast = 4,
							spawnRadius = 100,
							delay = 5*30*60,
							orbitalDrop = false,
						},
					},
					startUnits = {
						{
							name = "subraider",
							x = 6000,
							z = 4600,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "subraider",
							x = 6000,
							z = 4500,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "subraider",
							x = 6000,
							z = 4700,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "subraider",
							x = 6100,
							z = 4600,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "subraider",
							x = 6100,
							z = 4500,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "subraider",
							x = 6100,
							z = 4700,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "subraider",
							x = 6200,
							z = 4600,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "subraider",
							x = 6200,
							z = 4500,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "shipassault",
							x = 6200,
							z = 4700,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "factoryshield",
							x = 10080,
							z = 2152,
							facing = 0,
						},
						{
							name = "factoryship",
							x = 8000,
							z = 4200,
							facing = 3,
						},
						{
							name = "energywind",
							x = 2040,
							z = 4104,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3672,
							z = 4792,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4296,
							z = 3000,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6056,
							z = 3960,
							facing = 0,
						},
						{
							name = "energywind",
							x = 8936,
							z = 4664,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6152,
							z = 3992,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6248,
							z = 4024,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6360,
							z = 4024,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5944,
							z = 3928,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5976,
							z = 3992,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6296,
							z = 4104,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6088,
							z = 4056,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6184,
							z = 4072,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9016,
							z = 4696,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9112,
							z = 4728,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9192,
							z = 4728,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9288,
							z = 4712,
							facing = 0,
						},
						{
							name = "energywind",
							x = 8936,
							z = 4776,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9032,
							z = 4808,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9144,
							z = 4824,
							facing = 0,
						},
						{
							name = "energywind",
							x = 9240,
							z = 4824,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4376,
							z = 3032,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4472,
							z = 3048,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4552,
							z = 3080,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4648,
							z = 3096,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4296,
							z = 3112,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4376,
							z = 3144,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4472,
							z = 3160,
							facing = 0,
						},
						{
							name = "energywind",
							x = 4584,
							z = 3192,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3592,
							z = 4792,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3768,
							z = 4792,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3880,
							z = 4760,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3496,
							z = 4760,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3496,
							z = 4856,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3624,
							z = 4872,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3736,
							z = 4888,
							facing = 0,
						},
						{
							name = "energywind",
							x = 3848,
							z = 4840,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1944,
							z = 4136,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1848,
							z = 4152,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1736,
							z = 4152,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1800,
							z = 4232,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1912,
							z = 4216,
							facing = 0,
						},
						{
							name = "energywind",
							x = 2008,
							z = 4184,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1704,
							z = 4232,
							facing = 0,
						},
						{
							name = "energywind",
							x = 1640,
							z = 4168,
							facing = 0,
						},
						{
							name = "factoryhover",
							x = 9456,
							z = 4048,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9496,
							z = 2392,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9480,
							z = 2936,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 10152,
							z = 2824,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 10152,
							z = 1272,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9736,
							z = 1064,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 10072,
							z = 712,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 7424,
							z = 1712,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 9888,
							z = 3392,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7640,
							z = 3800,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7720,
							z = 3832,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7832,
							z = 3848,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7928,
							z = 3864,
							facing = 0,
						},
						{
							name = "energywind",
							x = 8024,
							z = 3880,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7656,
							z = 3896,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7768,
							z = 3912,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7864,
							z = 3928,
							facing = 0,
						},
						{
							name = "energywind",
							x = 7960,
							z = 3960,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 7840,
							z = 704,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 10032,
							z = 3008,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 7664,
							z = 2880,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 7680,
							z = 1264,
							facing = 3,
						},
						{
							name = "turrettorp",
							x = 1864,
							z = 4008,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1600,
							z = 4576,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 2848,
							z = 4240,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 7728,
							z = 4720,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 7952,
							z = 4592,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 8144,
							z = 4688,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 8368,
							z = 4720,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 6816,
							z = 4544,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 7168,
							z = 4256,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 3320,
							z = 4872,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 3992,
							z = 4680,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 4344,
							z = 3304,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 4536,
							z = 2920,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 5816,
							z = 4088,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 6248,
							z = 3816,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 6360,
							z = 4248,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 7848,
							z = 3704,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 8760,
							z = 4936,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 9240,
							z = 4568,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 8600,
							z = 3480,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 9496,
							z = 4232,
							facing = 0,
						},
						{
							name = "shieldraid",
							x = 8783,
							z = 2157,
							facing = 0,
						},
						{
							name = "shieldraid",
							x = 8658,
							z = 1509,
							facing = 0,
						},
						{
							name = "shieldraid",
							x = 8843,
							z = 1110,
							facing = 0,
						},
						{
							name = "shieldraid",
							x = 8730,
							z = 607,
							facing = 0,
						},
						{
							name = "shieldraid",
							x = 9229,
							z = 1453,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 9189,
							z = 2162,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 9218,
							z = 2079,
							facing = 0,
						},
						{
							name = "shieldassault",
							x = 9241,
							z = 2246,
							facing = 0,
						},
						{
							name = "shieldriot",
							x = 9288,
							z = 2157,
							facing = 0,
						},
						{
							name = "hoverraid",
							x = 9076,
							z = 4353,
							facing = 0,
						},
						{
							name = "hoverraid",
							x = 9003,
							z = 4249,
							facing = 0,
						},
						{
							name = "hoverraid",
							x = 9100,
							z = 4244,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9640,
							z = 3688,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9256,
							z = 3816,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 9752,
							z = 4056,
							facing = 0,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					vitalUnitTypes = {
						"energywind"
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy Tidal Generators",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Build 10 Scalpels
					satisfyOnce = true,
					countRemovedUnits = true, -- count units that previously died.
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 23,
					unitTypes = {
						"hoverskirm",
					},
					image = planetUtilities.ICON_DIR .. "hoverskirm.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build 20 Scalpels",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Destroy all enemy factories
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_MOST,
					targetNumber = 0,
					enemyUnitTypes = {
						"factoryshield",
						"factoryhover",
						"factoryship",
					},
					image = planetUtilities.ICON_DIR .. "factoryshield.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy all enemy factories",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = {
					victoryByTime = 900,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 15:00",
					experience = planetUtilities.BONUS_EXP,
				},
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factoryhover",
				"hovercon",
				"hoverraid",
				"hoverriot",
				"hoverskirm",
				"turrettorp",
			},
			modules = {
				"module_adv_nano_LIMIT_C_1",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet

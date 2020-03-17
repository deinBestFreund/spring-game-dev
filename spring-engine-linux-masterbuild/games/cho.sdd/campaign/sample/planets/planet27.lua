--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/terran03.png"
	
	local planetData = {
		name = "Falloway",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.425,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.705,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "6700 km",
			primary = "Misir",
			primaryType = "G9V",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24469",
			text = "This planet was renowned for its tourism resorts and galaxy-famous culinary traditions - or so the advertisement broadcasts tell me. I don't remember ever hearing about it, but it is true this world has been relatively spared from collateral damage, compared to others in the sector."
			.. "\n "
			.. "\nUltimately, as the strategic picture became grimmer, even such a place suffered military occupation."
			,
			extendedText = "Some of the local forces recognize one of the IFF codes I found last world. They can take care of surface targets, but I will need to support them with Claymore depth charge and Flail AA hovercraft against underwater and aerial threats."
		},
		tips = {
			{
				image = "unitpics/hoverdepthcharge.png",
				text = [[Claymores fire depth charges at short range for large area-of-effect damage. To make this less of a suicide mission the depth charge floats for a few seconds before tracking its target. Depth charges can also be dropped as short-lived mines, even on land. Press D to drop a mine manually.]]
			},
			{
				image = "unitpics/hoveraa.png",
				text = [[Flails fire guided missiles at enemy air units. It's most effective against planes but it will also get the job done against gunships.]]
			},
			{
				image = "unitpics/energyfusion.png",
				text = [[Destroying the opposition's energy production will slow them down.]]
			},
		},
		gameConfig = {
			mapName = "Cull",
			playerConfig = {
				startX = 4785,
				startZ = 979,
				allyTeam = 0,
				facplop = false,
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
					"hoverdepthcharge",
					"hoveraa",
					"energywind",
				},
				startUnits = {
					{
						name = "staticcon",
						x = 4568,
						z = 728,
						facing = 0,
						selfPatrol = true,
					},
 					{
						name = "staticmex",
						x = 5064,
						z = 1208,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 5224,
						z = 472,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 5608,
						z = 760,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 5112,
						z = 1208,
						facing = 1,
					},
 					{
						name = "energywind",
						x = 5112,
						z = 1256,
						facing = 1,
					},
 					{
						name = "energywind",
						x = 5064,
						z = 1256,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 5016,
						z = 1256,
						facing = 0,
					},
 					{
						name = "energywind",
						x = 5016,
						z = 1208,
						facing = 3,
					},
 					{
						name = "energywind",
						x = 5016,
						z = 1160,
						facing = 3,
					},
 					{
						name = "energywind",
						x = 5064,
						z = 1160,
						facing = 2,
					},
 					{
						name = "energywind",
						x = 5112,
						z = 1160,
						facing = 2,
					},
 					{
						name = "factoryhover",
						x = 4900,
						z = 900,
						facing = 0,
					},
 					{
						name = "hoveraa",
						x = 4417,
						z = 1254,
						facing = 0,
					},
 					{
						name = "hoverdepthcharge",
						x = 4653,
						z = 1236,
						facing = 0,
					},
					{
						name = "hoverdepthcharge",
						x = 4312,
						z = 1140,
						facing = 0,
					},
 					{
						name = "hoveraa",
						x = 4543,
						z = 1150,
						facing = 0,
					},
 					{
						name = "hoverskirm",
						x = 4526,
						z = 1259,
						facing = 0,
					},
 					{
						name = "hoverskirm",
						x = 4443,
						z = 1142,
						facing = 0,
					},
					{
						name = "hovercon",
						x = 4500,
						z = 1000,
						facing = 0,
					},
				}
			},
			aiConfig = {
				{
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Privateers",
					allyTeam = 0,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"staticradar",
						"staticcon",
						"turrettorp",
						"turretlaser",
						"turretmissile",
						"shipcon",
						"subraider",
						--"shiptorpraider",
						"shiparty",
						"shipriot",
						--"shipscout",
						"shipskirm",
					},
					commander = false,
					startUnits = {
						{
							name = "turretgauss",
							x = 4000,
							z = 400,
							facing = 3,
						},
						{
							name = "staticmex",
							x = 3992,
							z = 2024,
							facing = 0,
						},
 						{
							name = "shiptorpraider",
							x = 4728,
							z = 1607,
							facing = 0,
							patrolRoute = {
								{4644, 1455},
								{4703, 1479},
							},
						},
 						{
							name = "staticmex",
							x = 3480,
							z = 1208,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4040,
							z = 1256,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4424,
							z = 1544,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4984,
							z = 1912,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 5048,
							z = 2504,
							facing = 0,
						},
 						{
							name = "factoryship",
							x = 4720,
							z = 1504,
							facing = 0,
						},
 						{
							name = "staticheavyradar",
							x = 3872,
							z = 1088,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4472,
							z = 1544,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4472,
							z = 1592,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4424,
							z = 1592,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4376,
							z = 1592,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4376,
							z = 1544,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 4376,
							z = 1496,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 4424,
							z = 1496,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4472,
							z = 1496,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 5032,
							z = 1912,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 5032,
							z = 1960,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4984,
							z = 1960,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4936,
							z = 1960,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4936,
							z = 1912,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 4936,
							z = 1864,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 4984,
							z = 1864,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 5032,
							z = 1864,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4040,
							z = 2024,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4040,
							z = 2072,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 3992,
							z = 2072,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 3944,
							z = 2072,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 3944,
							z = 2024,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 3944,
							z = 1976,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 3992,
							z = 1976,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4040,
							z = 1976,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 4904,
							z = 1368,
							facing = 0,
						},
 						{
							name = "staticcon",
							x = 4984,
							z = 1576,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4328,
							z = 1544,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4328,
							z = 1496,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4328,
							z = 1448,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 4376,
							z = 1448,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 4424,
							z = 1448,
							facing = 0,
						},
 						{
							name = "turrettorp",
							x = 4072,
							z = 2328,
							facing = 0,
						},
 						{
							name = "turrettorp",
							x = 3224,
							z = 1784,
							facing = 0,
						},
 						{
							name = "turrettorp",
							x = 2904,
							z = 1672,
							facing = 0,
						},
 						{
							name = "turretgauss",
							x = 3576,
							z = 2312,
							facing = 0,
						},
 						{
							name = "turretgauss",
							x = 4504,
							z = 2632,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 5552,
							z = 2528,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 5856,
							z = 2576,
							facing = 0,
						},
 						{
							name = "turrettorp",
							x = 5064,
							z = 2904,
							facing = 0,
						},
 						{
							name = "turretaalaser",
							x = 5096,
							z = 2248,
							facing = 0,
						},
 						{
							name = "turretaalaser",
							x = 3800,
							z = 1464,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 4976,
							z = 1504,
							facing = 3,
						},
 						{
							name = "shipcon",
							x = 4952,
							z = 1628,
							facing = 0,
						},
 						{
							name = "shipriot",
							x = 2739,
							z = 1626,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 4128,
							z = 1344,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3064,
							z = 1208,
							facing = 0,
						},
 						{
							name = "shiptorpraider",
							x = 4515,
							z = 1872,
							facing = 2,
							patrolRoute = {
								{4644, 1455},
								{4679, 1508},
							},
						},
 						{
							name = "staticradar",
							x = 4224,
							z = 1536,
							facing = 0,
						},
 						{
							name = "shipscout",
							x = 4236,
							z = 3139,
							facing = 0,
						},
 						{
							name = "shipcon",
							x = 4728,
							z = 1504,
							facing = 0,
							buildProgress = 0.0469,
						},
 						{
							name = "shipriot",
							x = 3277,
							z = 1538,
							facing = 0,
						},
 						{
							name = "shipskirm",
							x = 4222,
							z = 1771,
							facing = 0,
						},
 						{
							name = "shipskirm",
							x = 4550,
							z = 2015,
							facing = 0,
						},
 						{
							name = "shipriot",
							x = 4280,
							z = 2069,
							facing = 0,
						},
 						{
							name = "staticstorage",
							x = 4136,
							z = 1608,
							facing = 0,
						},
 						{
							name = "turrettorp",
							x = 3064,
							z = 808,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 2960,
							z = 1152,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 3296,
							z = 1264,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3704,
							z = 2312,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 2312,
							z = 1672,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 2952,
							z = 2296,
							facing = 0,
						},
					}
				},
								{
					startX = 2673,
					startZ = 5100,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Pirates",
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"staticradar",
						"staticcon",
						--"turrettorp",
						--"turretlaser",
						--"turretmissile",
						--"turretaalaser",
						"shipcon",
						"subraider",
						"shiptorpraider",
						"shipscout",
						"shipskirm",
						"shipaa",
						"amphcon",
						"amphraid",
						"amphriot",
						"amphaa",
						"amphbomb",
						"gunshipcon",
						"gunshipraid",
						"gunshipskirm",
						"gunshipbomb",
					},
					difficultyDependantUnlocks = {
						[3] = {"amphfloater","gunshipheavyskirm"},
						[4] = {"amphfloater","gunshipheavyskirm","gunshipassault","shipriot"},
					},
					commanderLevel = 3,
					commander = {
						name = "Cap'n Conquest",
						chassis = "guardian",
						decorations = {
						},
						modules = {
							"commweapon_riotcannon",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_adv_targeting",
							"module_adv_targeting",
							"module_ablative_armor",
						}
					},
					startUnits = {
 						{
							name = "energyfusion",
							x = 5544,
							z = 5456,
							facing = 2,
							-- bonusObjectiveID = 2,
							-- mapMarker = {
								-- text = "Fusion Reactor",
								-- color = "red_small"
							-- },
						},
						{
							name = "turrettorp",
							x = 3200,
							z = 4800,
							facing = 0,
						},
						{
							name = "turrettorp",
							x = 3000,
							z = 4300,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 936,
							z = 5432,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1480,
							z = 4888,
							facing = 0,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 1096,
							z = 4616,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 2616,
							z = 4856,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "staticmex",
							x = 3432,
							z = 5352,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3848,
							z = 4648,
							facing = 0,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 4408,
							z = 4472,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 4840,
							z = 4232,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "staticmex",
							x = 4888,
							z = 4952,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 5224,
							z = 5624,
							facing = 0,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 1320,
							z = 4184,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "factoryship",
							x = 3248,
							z = 4640,
							facing = 2,
						},
 						{
							name = "turretmissile",
							x = 1088,
							z = 5152,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 1320,
							z = 4552,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 4712,
							z = 4552,
							facing = 2,
						},
 						{
							name = "staticheavyradar",
							x = 2560,
							z = 5056,
							facing = 2,
						},
 						{
							name = "factoryamph",
							x = 1544,
							z = 4520,
							facing = 2,
						},
 						{
							name = "factorygunship",
							x = 2792,
							z = 5032,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 3032,
							z = 4840,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 1528,
							z = 4696,
							facing = 2,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {1528, 4696}, options = {"shift"}},
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {1544, 4482}, options = {"shift"}},
							},
						},
 						{
							name = "energywind",
							x = 1416,
							z = 4872,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1336,
							z = 4824,
							facing = 2,
						},
 						{
							name = "turretmissile",
							x = 832,
							z = 4976,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1256,
							z = 4776,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1176,
							z = 4728,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1096,
							z = 4680,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1160,
							z = 4568,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1192,
							z = 4488,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1208,
							z = 4408,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4488,
							z = 4456,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1240,
							z = 4328,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4568,
							z = 4424,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1272,
							z = 4248,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4648,
							z = 4376,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4728,
							z = 4344,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4808,
							z = 4312,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4488,
							z = 4536,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4552,
							z = 4616,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4616,
							z = 4696,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4680,
							z = 4776,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 4760,
							z = 4856,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 5384,
							z = 5544,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 5288,
							z = 5592,
							facing = 2,
						},
 						{
							name = "turretriot",
							x = 5704,
							z = 4792,
							facing = 2,
						},
 						{
							name = "turretheavylaser",
							x = 5096,
							z = 3880,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 4736,
							z = 3744,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 5408,
							z = 4032,
							facing = 2,
						},
 						{
							name = "turretaalaser",
							x = 1176,
							z = 4856,
							facing = 2,
						},
 						{
							name = "turretaalaser",
							x = 4856,
							z = 4696,
							facing = 2,
						},
 						{
							name = "turretaalaser",
							x = 3016,
							z = 5176,
							facing = 2,
						},
 						{
							name = "turretgauss",
							x = 680,
							z = 3240,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 2872,
							z = 3832,
							facing = 2,
						},
 						{
							name = "turretgauss",
							x = 1784,
							z = 3336,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 2184,
							z = 3656,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 3400,
							z = 3832,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 4248,
							z = 3736,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 2432,
							z = 3888,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 912,
							z = 3648,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 1280,
							z = 3664,
							facing = 2,
						},
 						{
							name = "turretaaclose",
							x = 5688,
							z = 5496,
							facing = 2,
						},
 						{
							name = "turretriot",
							x = 5368,
							z = 5384,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 2704,
							z = 4784,
							facing = 2,
						},
 						{
							name = "turretriot",
							x = 4568,
							z = 5368,
							facing = 3,
						},
 						{
							name = "turretlaser",
							x = 4112,
							z = 5040,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 2704,
							z = 5216,
							facing = 1,
						},
 						{
							name = "shipscout",
							x = 1457,
							z = 4285,
							facing = 1,
						},
 						{
							name = "amphfloater",
							x = 1544,
							z = 4484,
							facing = 2,
							buildProgress = 0.1044,
							difficultyAtLeast = 3,
						},
 						{
							name = "turretlaser",
							x = 3488,
							z = 4624,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 2600,
							z = 4792,
							facing = 2,
						},
 						{
							name = "amphfloater",
							x = 1944,
							z = 3209,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 2520,
							z = 4808,
							facing = 2,
						},
 						{
							name = "gunshipheavyskirm",
							x = 2792,
							z = 5031,
							facing = 1,
							buildProgress = 0.4754,
							difficultyAtLeast = 3,
						},
 						{
							name = "turrettorp",
							x = 1416,
							z = 4664,
							facing = 1,
						},
 						{
							name = "shipskirm",
							x = 2982,
							z = 3179,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 2808,
							z = 5176,
							facing = 2,
						},
 						{
							name = "amphfloater",
							x = 1602,
							z = 4378,
							facing = 2,
						},
 						{
							name = "turretlaser",
							x = 2512,
							z = 4864,
							facing = 2,
						},
 						{
							name = "staticradar",
							x = 3456,
							z = 5024,
							facing = 2,
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
						"factoryship",
						"factoryamph",
						"factorygunship",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy factories",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Build 12 Flails
					satisfyOnce = true,
					countRemovedUnits = true, -- count units that previously died.
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 14,
					unitTypes = {
						"hoveraa",
					},
					image = planetUtilities.ICON_DIR .. "hoveraa.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build 12 Flails",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Win by 20:00
					victoryByTime = 1200,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 20:00",
					experience = planetUtilities.BONUS_EXP,
				},
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"hoverdepthcharge",
				"hoveraa",
			},
			modules = {
				"commweapon_riotcannon",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet

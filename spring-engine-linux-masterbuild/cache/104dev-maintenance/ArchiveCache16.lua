local archiveCache = {

	internalver = 16,

	archives = {  -- count = 8
		{
			name = "bitmaps.sdz",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/base/spring/",
			modified = "1575668279",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 4,
				name = "Spring Bitmaps",
				name_pure = "Spring Bitmaps",
			},
		},
		{
			name = "cho.sdd",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/games/",
			modified = "1584420927",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archiveDataPath = "/home/michael/sprDev/spring-engine-linux-masterbuild/games/cho.sdd/modinfo.lua",
			modifiedArchiveData = "1582515014",
			archivedata = {
				description = "An in-game lobby",
				engine = "104.0.1-287-gf7b0fcc",
				game = "Chobby",
				modtype = 5,
				mutator = "Official",
				name = "Chobby $VERSION",
				name_pure = "Chobby",
				onlylocal = true,
				shortgame = "IGL",
				shortname = "IGL",
				url = "https://github.com/Spring-Chobby/Chobby",
				version = "$VERSION",
				depend = {
					"Spring Cursors",
					"Spring content v1",
				},
			},
		},
		{
			name = "comet_catcher_redux_v3.1.sd7",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/maps/",
			modified = "1576918516",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				mapfile = "maps/Comet Catcher Redux v3.1.smf",
				modtype = 3,
				name = "Comet Catcher Redux v3.1",
				name_pure = "Comet Catcher Redux v3.1",
			},
		},
		{
			name = "cursors.sdz",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/base/",
			modified = "1575668279",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 4,
				name = "Spring Cursors",
				name_pure = "Spring Cursors",
			},
		},
		{
			name = "folsomdamdeluxev4.sd7",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/maps/",
			modified = "1584420953",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				mapfile = "maps/FolsomDamDeluxeV4.smf",
				modtype = 3,
				name = "FolsomDamDeluxeV4",
				name_pure = "FolsomDamDeluxeV4",
			},
		},
		{
			name = "living_lands_4.1.sd7",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/maps/",
			modified = "1584420936",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				author = "mestizo, Saktoth, aeonios, TheMooseIsLoose",
				autoshowmetal = true,
				description = "1v1 map based on DeadLands, designed for Zero-K.",
				extractorradius = 70.000000,
				gravity = 130.000000,
				mapfile = "maps/Living Lands.smf",
				maphardness = 200.000000,
				maxmetal = 0.900000,
				modtype = 3,
				name = "Living Lands 4.1",
				name_pure = "Living Lands",
				notdeformable = false,
				shortname = "Living Lands",
				tidalstrength = 0.000000,
				version = "4.1",
				voidwater = false,
			},
		},
		{
			name = "maphelper.sdz",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/base/",
			modified = "1575668279",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 4,
				name = "Map Helper v1",
				name_pure = "Map Helper v1",
			},
		},
		{
			name = "springcontent.sdz",
			path = "/home/michael/sprDev/spring-engine-linux-masterbuild/base/",
			modified = "1575668279",
			checksum = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
			archivedata = {
				description = "Mods can depend on this archive to get all the spring content",
				modtype = 4,
				name = "Spring content v1",
				name_pure = "Spring content v1",
				depend = {
					"Spring Bitmaps",
				},
			},
		},
	},

	brokenArchives = {  -- count = 0
	},
}

return archiveCache

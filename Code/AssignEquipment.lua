local guns = {
	["SMG"] = "MOG__ImpishEquipment__Item_MainGun_SMG",
	["Assault Rifle"] = "MOG__ImpishEquipment__Item_MainGun_AssaultRifle",
	["Machine Gun"] = "MOG__ImpishEquipment__Item_MainGun_MachineGun",
	["Grenade Launcher"] = "MOG__ImpishEquipment__Item_MainGun_GrenadeLauncher",
	["Shotgun"] = "MOG__ImpishEquipment__Item_MainGun_Shotgun",
	["Sniper Rifle"] = "MOG__ImpishEquipment__Item_MainGun_SniperRifle",
	["Dual Pistols"] = "MOG__ImpishEquipment__Item_MainGun_DualPistols",
}
local sidearms = {
	["Pistol"] = "MOG__ImpishEquipment__Item_Sidearm_Pistol",
	["Revolver"] = "MOG__ImpishEquipment__Item_Sidearm_Revolver",
	["Machine Pistol"] = "MOG__ImpishEquipment__Item_Sidearm_MachinePistol",
}
local armors = {
	["Light"] = "MOG__ImpishEquipment__Item_Armor_Light",
	["Heavy"] = "MOG__ImpishEquipment__Item_Armor_Heavy",
	["Camo"] = "MOG__ImpishEquipment__Item_Armor_Camo",
}
local throwables = {
	["Frag Grenades"] = "MOG__ImpishEquipment__Item_Throwables_FragGrenades",
	["Glow Sticks"] = "MOG__ImpishEquipment__Item_Throwables_GlowSticks",
	["Smoke Grenades"] = "MOG__ImpishEquipment__Item_Throwables_SmokeGrenades",
	["Tear Gas"] = "MOG__ImpishEquipment__Item_Throwables_TeargasGrenades",
	["Molotov Cocktails"] = "MOG__ImpishEquipment__Item_Throwables_MolotovCocktails",
}
local extras = {
	["Flare Gun"] = "MOG__ImpishEquipment__Item_Extra_FlareGun",
	["First Aid Kit"] = "MOG__ImpishEquipment__Item_Extra_FirstAidKit",
	["Lockpicks"] = "MOG__ImpishEquipment__Item_Extra_Lockpicks",
	["Wire Cutter"] = "MOG__ImpishEquipment__Item_Extra_WireCutter",
	["Crowbar"] = "MOG__ImpishEquipment__Item_Extra_Crowbar",
}

local function MOG__ImpishEquipment__Item_Apply()
	local equipments = {
		-- [1] = {
		IMP_female_01 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_F1"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_F1"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_F1"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_F1"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_F1"]],
		},
		-- [2] = {
		IMP_female_02 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_F2"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_F2"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_F2"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_F2"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_F2"]],
		},
		-- [3] = {
		IMP_female_03 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_F3"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_F3"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_F3"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_F3"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_F3"]],
		},
		-- [4] = {
		IMP_male_01 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_M1"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_M1"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_M1"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_M1"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_M1"]],
		},
		-- [5] = {
		IMP_male_02 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_M2"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_M2"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_M2"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_M2"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_M2"]],
		},
		-- [6] = {
		IMP_male_03 = {
			guns[CurrentModOptions["MOG__ImpishEquipment__Option_MainGun_M3"]],
			sidearms[CurrentModOptions["MOG__ImpishEquipment__Option_Sidearm_M3"]],
			armors[CurrentModOptions["MOG__ImpishEquipment__Option_Armor_M3"]],
			throwables[CurrentModOptions["MOG__ImpishEquipment__Option_Throwables_M3"]],
			extras[CurrentModOptions["MOG__ImpishEquipment__Option_Extra_M3"]],
		},
	}

	for id, equipment in pairs(equipments) do
		local imp = UnitDataDefs[id]

		imp.Equipment = equipment
		_G[id].Equipment = equipment
	end

	-- local equipmentDefault = { "IMP_equipment_basic" }
	-- local imps = {}
	-- local i = 0

	-- for x, unit in pairs(UnitDataDefs) do
	-- 	if unit.group == "IMP" then
	-- 		print("Imp: '" .. x .. "'")
	-- 		i = i + 1
	-- 		imps[i] = unit
	-- 	end
	-- end

	-- local function sortById(a,b)
	-- 	return a.id < b.id
	-- end

	-- table.sort(imps, sortById)

	-- for j, imp in ipairs(imps) do
	-- 	local equipment = equipments[j] or equipmentDefault

	-- 	imp.Equipment = equipment
	-- 	_G[imp.id].Equipment = equipment
	-- end
end

function OnMsg.OptionsApply()
	MOG__ImpishEquipment__Item_Apply()
end

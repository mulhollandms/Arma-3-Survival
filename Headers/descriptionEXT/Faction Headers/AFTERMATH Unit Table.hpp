class AFTERMATH_JACKALS_faction : FIA_faction
{
	displayName = "AFTERMATH - Jackals";

	infantry[] = {
		"jackal_01_body",
		"jackal_02_body",
		"jackal_03_body",
		"jackal_04_body",
		"jackal_05_body",
		"jackal_06_body",
		"jackal_07_body",
		"jackal_08_body"
	};
};

class AFTERMATH_KINGS_faction : FIA_faction
{
	displayName = "AFTERMATH - Kings";

	infantry[] = {
		"kings_outfit_01_body",
		"kings_outfit_03_body"
	};
};

class AFTERMATH_NCR_faction : NATO_faction
{
	displayName = "AFTERMATH - NCR Army";

	transportHelicopters[] = {
		"B_T_VTOL_01_infantry_NCR_F"
	};
	cargoAircraft[] = {
		"B_T_VTOL_01_vehicle_NCR_F"
	};
	attackHelicopters[] = {
		"B_T_VTOL_01_armed_NCR_F"
	};
	infantry[] = {
		"armor_ncr_trooper_11_body",
		"armor_ncr_trooper_17_body"
	};
};

class AFTERMATH_NCR_RANGERS_faction : AFTERMATH_NCR_faction
{
	displayName = "AFTERMATH - NCR Rangers";
	
	infantry[] = {
		"ncr_ranger_01_body",
		"ncr_ranger_05_body",
		"ncr_ranger_06_body",
		"armor_ncr_ranger_10_body",
		"armor_ncr_ranger_11_body",
		"armor_ncr_ranger_12_body",
		"armor_ncr_trooper_20_body",
		"combat_ranger11_body"
	};
};

class AFTERMATH_RAILROAD_faction : FIA_faction
{
	displayName = "AFTERMATH - Railroad";

	infantry[] = {
		"Armored_Coat_01_body",
		"Armored_Coat_02_body"
	};
};
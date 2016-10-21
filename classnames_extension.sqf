// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = nil;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = nil;			// Default "B_Truck_01_medical_F";
huron_typename = nil;					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = nil;			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = nil;				// Default "B_officer_F"
crewman_classname = nil;				// Default "B_crew_F";
pilot_classname = nil;					// Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [

];

light_vehicles_overwrite = false;
light_vehicles_extension = [
	["rhsusf_m998_w_4dr",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["fsf_fnk_norm_ce",0,0,3],
	["greuh_fnk_norm_ce",0,0,3],
	["I_MRAP_03_F",0,0,3],
	["I_MRAP_03_hmg_F",0,10,3],
	["I_MRAP_03_gmg_F",0,20,3],
	["fsf_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_dsrt",0,0,3],
	["rhsusf_m1025_d_m2",0,10,3],
	["rhsusf_m1025_d_Mk19",0,10,3],
	["rhsusf_m1025_d",0,10,3],
	["rhsusf_m998_d_2dr_fulltop",0,10,3],
	["rhsusf_m998_d_2dr",0,10,3],
	["rhsusf_m998_d_4dr_fulltop",0,10,3],
	["rhsusf_m998_d_4dr_halftop",0,10,3],
	["rhsusf_m998_d_4dr",0,10,3],
	["rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy",0,0,8],
	["rhsusf_M1078A1P2_B_M2_d_open_fmtv_usarmy",0,0,8],
	["rhsusf_mkvsoc",0,15,9],
	["rhsusf_m998_d_2dr_halftop",0,10,4],
	["rhsusf_M1117_D",0,11,4],
	["rhsusf_rg33_d",0,10,4],
	["rhsusf_M1078A1P2_B_M2_d_flatbed_fmtv_usarmy",0,10,10],
	["rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy",0,10,10],
	
	["rhsusf_rg33_usmc_d",0,0,8],
	["rhsusf_rg33_m2_usmc_d",0,5,8],
	
	["B_SDV_01_F",0,5,5],
	
	["rhsusf_M1083A1P2_B_M2_d_Medical_fmtv_usarmy",0,5,10],
	["rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy",0,5,10],
	
	["rhs_tigr_msv",0,10,10],
	["RHS_UAZ_MSV_01",0,10,10],
	["rhs_tigr_sts_3camo_msv",0,10,10],
	["RHS_Ural_Flat_MSV_01",0,10,3],
	["RHS_Ural_MSV_01",0,10,3]
];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [
	["I_APC_Wheeled_03_cannon_F",0,50,10],
	["greuh_pandur_wdld",0,50,10],
	["I_APC_tracked_03_cannon_F",0,40,15],
	["greuh_fv510_wdld",0,40,15],
	["greuh_fv510_dsrt",0,40,15],
	["RHS_M2A3_BUSKIII_wd",0,55,15],
	["Steve_MBT_Kuma",0,100,25],
	["I_MBT_03_cannon_F",0,100,25],
	["rhsusf_m1a2sep1tuskiid_usarmy",0,100,25],
	["Burnes_FV4034_01",0,250,40],
	["rhsusf_m1a1aimd_usarmy",0,60,20],
	["rhsusf_m1a1aim_tuski_d",0,57,20],
	["rhsusf_m1a2sep1d_usarmy",0,57,20],
	["rhsusf_m1a2sep1tuskid_usarmy",0,56,20],
	["rhsusf_m109d_usarmy",0,55,20],
	["RHS_M2A2_BUSKI",0,40,15],
	["RHS_M2A3_BUSKI",0,42,15],
	["RHS_M6",0,40,15],
	["rhsusf_m113d_usarmy",0,42,15],
	["rhsusf_m113d_usarmy_M240",0,45,15],
	["rhsusf_m113d_usarmy_medical",0,40,18],
	["rhsusf_m113d_usarmy_MK19",0,48,15],
	["rhsusf_m113d_usarmy_unarmed",0,0,15],
	["RHS_M119_D",0,50,20],
	["RHS_M2A2",0,50,20],
	["RHS_M2A3",0,53,22],
	["RHS_M2A3_BUSKIII",0,55,22],
	["rhsusf_m113d_usarmy_supply",0,55,24],
	
	["rhs_t80",0,60,20],
	["rhs_t72bd_tv",0,60,20],
	["rhs_t80u45m",0,60,20],
	["rhs_t90_tv",0,60,20],
	["rhs_2s3_tv",0,60,20],
	["rhs_bmp2k_tv",0,50,20],
	["rhs_bmp1_tv",0,45,20],
	["rhs_2s3_tv",0,55,25],
	["rhs_9k79",0,60,25],
	["rhs_9k79_K",0,60,25],
	["rhs_9k79_B",0,60,25],
	["rhs_btr80a_msv",0,60,25],
	["rhs_btr70_msv",0,60,25],
	["RHS_Ural_Zu23_MSV_01",0,30,25],
	["RHS_BM21_MSV_01",0,30,25]
];

air_vehicles_overwrite = false;
air_vehicles_extension = [
	["greuh_aw159_t",0,0,12],
	["greuh_aw159_a",0,50,12],
	["I_Heli_light_03_unarmed_F",0,0,12],
	["I_Heli_light_03_F",0,50,12],
	["JNS_Skycrane_BLU_Black",0,0,18],
	["RHS_CH_47F",0,20,20],
	["greuh_eh101_gr",0,0,25],
	["I_Heli_Transport_02_F",0,0,25],
	["MV22",0,0,25],
	["RHS_AH1Z_wd_GS",0,175,30],
	["H_RAH66",0,200,30],
	["RHS_AH64D_wd",0,400,50],
	["FIR_F16C",0,100,30],
	["FIR_F15E",0,200,50],
	["JS_JC_FA18E",0,350,40],
	["JS_JC_FA18F",0,350,40],
	["sab_C130_CSP",0,0,100],
	["sab_C130_J",0,0,100],
	["usaf_f22",0,500,75],
	["USAF_F35A",0,600,75],
	["I_Plane_Fighter_03_AA_F",0,50,30],
	["I_Plane_Fighter_03_CAS_F",0,100,30],
	["RHS_AH64D",0,75,25],
	["RHS_CH_47F_10",0,45,30],
	["RHS_UH60M_d",0,45,25],
	["RHS_AH1Z",0,75,25],
	["RHS_UH1Y_GS",0,65,27],
	["RHS_A10",0,200,30],
	["rhsusf_f22",0,150,30],
	["RHS_UH1Y",0,100,26],
	
	["RHS_AH1Z_wd",0,78,25],
	["rhsusf_CH53E_USMC",0,2,30],
	["RHS_UH1Y_UNARMED",0,0,25],
	["RHS_MELB_H6M",0,0,20],
	["RHS_MELB_MH6M",0,1,20],
	["RHS_MELB_AH6M_M",0,23,20],
	["RHS_MELB_AH6M_L",0,20,21],
	["RHS_MELB_AH6M_H",0,25,22],
	["RHS_AH64D_wd_GS",0,25,25],
	["RHS_AH64D_wd_CS",0,25,25],
	["RHS_AH64D_wd_AA",0,25,25],
	["RHS_UH60M_MEV2",0,0,25],
	["RHS_UH60M",0,20,25],
	["RHS_A10_AT",0,200,30],
	["RHS_C130J",0,0,65],
	
	["RHS_UH60M_MEV",0,0,25],
	
	["B_T_UAV_03_F",0,45,30],
	
	["usaf_b1b",0,275,60],
	["usaf_b2",0,300,65], //oh bby new b2
	
	["USAF_F35A",0,150,30],
	["USAF_A10",0,200,30],
	["USAF_F16",0,150,30],
	["usaf_f22",0,150,30],
	
	["USAF_C17",0,0,500],
	["USAF_CV22",0,100,50],
	
	["LDL_C130J",0,300,500],
	["USAF_AC130U",0,300,500],
	
	["RHS_Su25SM_vvsc",0,200,30],
	["RHS_Su25SM_CAS_vvsc",0,200,30],
	["RHS_Su25SM_KH29_vvsc",0,200,30],
	["RHS_T50_vvs_054",0,215,30],
	["RHS_T50_vvs_blueonblue",0,215,30],
	["RHS_Ka52_UPK23_vvs",0,20,25],
	["RHS_Ka52_vvs",0,20,25],
	["RHS_Mi24V_UPK23_vvs",0,20,25],
	["RHS_Mi24V_FAB_vvs",0,20,25],
	["RHS_Mi24V_AT_vvs",0,20,25],
	["RHS_Mi8mt_vvs",0,20,25],
	["RHS_Mi8mt_Cargo_vvs",0,20,25],
	["RHS_Mi8AMTSh_FAB_vvs",0,20,25],
	["USAF_HH60G",0,25,25],
	["USAF_HH60GMED",0,0,25],
	["usaf_c5",0,0,525],
	["USAF_MQ9",0,150,20]
	
];

static_vehicles_overwrite = false;
static_vehicles_extension = [
	["RHS_Stinger_AA_pod_D",0,50,10],
	["RHS_M2StaticMG_D",0,25,5],
	["RHS_M2StaticMG_MiniTripod_D",0,25,5],
	["RHS_TOW_TriPod_D",0,30,5],
	["RHS_MK19_TriPod_D",0,25,5],
	["RHS_M252_D",0,15,5],
	["RHS_M119_D",0,15,5],
	
	["rhs_D30_vdv",0,15,5],
	["rhs_D30_at_vdv",0,15,5],
	["RHS_ZU23_VDV",0,15,5],
	["rhs_Igla_AA_pod_vdv",0,50,10],
	["RHS_NSV_TriPod_VDV",0,25,5],
	["rhs_KORD_high_VDV",0,25,5],
	["rhs_KORD_VDV",0,25,5],
	["RHS_AGS30_TriPod_VDV",0,25,5],
	["rhs_Kornet_9M133_2_vdv",0,30,5],
	["rhs_Metis_9k115_2_vdv",0,30,5],
	["rhs_SPG9M_VDV",0,30,5]

];

buildings_overwrite = false;
buildings_extension = [
	["Land_Medevac_house_V1_F",0,0,0],
	["Land_Medevac_HQ_V1_F",0,0,0],
	["ACE_Track",0,2,0],
	["ACE_Wheel",0,2,0],
	["Land_OfficeChair_01_F",0,0,0],
	["Land_LandMark_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["Land_Sign_Mines_F",0,0,0],
	["Land_Sign_WarningUnexploadedAmmo_F",0,0,0],
	["Windsock_01_F",0,0,0],
	["Land_TentHangar_V1_F",0,0,0],
	["Land_WorkStand_F",0,0,0],
	["Land_LampAirport_F",0,0,0],
	["Land_LampSolar_F",0,0,0],
	["Land_WoodenBox_F",0,0,0],
	["CargoNet_01_barrels_F",0,0,0],
	["PortableHelipadLight_01_F",0,0,0],
	["PortableHelipadLight_01_yellow_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["PortableHelipadLight_01_green_F",0,0,0],
	["PortableHelipadLight_01_white_F",0,0,0],
	["Land_Campfire_F",0,0,0],
	["Land_PartyTent_01_F",0,0,0],
	["Land_TointBox_F",0,0,0],
	["Land_WoodenTable_large_F",0,0,0],
	["Land_WoodenTable_small_F",0,0,0],
	["OfficeTable_01_new_F",0,0,0],
	["Land_Mil_WiredFence_F",0,0,0],
	["Land_Mil_WiredFence_Gate_F",0,0,0],
	["Land_Mil_WallBig_Gate_F",0,0,0],
	["Land_Mil_WallBig_4m_F",0,0,0],
	["Land_HBarrierWall_corridor_F",0,0,0],
	["Land_BarGate_F",0,0,0],
	["Flag_US_F",0,0,0],
	["Land_Cargo_Tower_V1_F",0,0,0],
	["Land_PillboxBunker_01_hex_F",0,0,0],
	["Land_PillboxBunker_01_rectangle_F",0,0,0],
	["Land_PillboxWall_01_6m_F",0,0,0],
	["Land_PillboxWall_01_6m_round_F",0,0,0],
	["Land_PillboxWall_01_3m_round_F",0,0,0],
	["Land_PillboxWall_01_3m_F",0,0,0],
	["Land_BagFence_01_long_green_F",0,0,0],
	["Land_BagFence_01_round_green_F",0,0,0],
	["Land_BagFence_01_short_green_F",0,0,0],
	["Land_BagFence_01_end_green_F",0,0,0],
	["Land_LandMark_F",0,0,0]	
];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
	["JNS_Skycrane_Pod_Bench_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Ammo_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Medical_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Repair_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Transport_BLU_Black",5,0,0],
	["rhsusf_M977A4_AMMO_BKIT_usarmy_d",5,0,10],
	["rhsusf_M977A4_REPAIR_usarmy_d",5,0,10],
	["rhsusf_M978A4_usarmy_d",5,0,10],
	
	["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d",5,10,10],
	["rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",5,10,10],
	["rhsusf_M977A4_BKIT_M2_usarmy_d",5,10,10],
	
	["rhs_gaz66_ammo_msv",5,0,10], //ammo
	["rhs_gaz66_ap2_msv",5,0,0], //mev
	["RHS_Ural_Fuel_MSV_01",5,0,0] //fuel
	
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
	"B_T_UAV_03_F",
	"USAF_MQ9"
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = [

];

// Heavy infantry squad
blufor_squad_inf = [

];

// AT specialists squad
blufor_squad_at = [

];

// AA specialists squad
blufor_squad_aa = [

];

// Force recon squad
blufor_squad_recon = [

];

// Paratroopers squad
blufor_squad_para = [

];







// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = nil;
opfor_rifleman = nil;
opfor_grenadier = nil;
opfor_squad_leader = nil;
opfor_team_leader = nil;
opfor_marksman = nil;
opfor_machinegunner = nil;
opfor_heavygunner = nil;
opfor_medic = nil;
opfor_rpg = nil;
opfor_at = nil;
opfor_aa = nil;
opfor_officer = nil;
opfor_sharpshooter = nil;
opfor_sniper = nil;
opfor_engineer = nil;
opfor_paratrooper = nil;

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = nil;
opfor_mrap_armed = nil;
opfor_transport_helo = nil;
opfor_transport_truck = nil;
opfor_fuel_truck = nil;
opfor_ammo_truck = nil;
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = nil;

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = false;
militia_squad_extension = [

];

// Militia vehicles to choose from
militia_vehicles_overwrite = false;
militia_vehicles_extension = [
	"rhs_btr70_chdkz",
	"rhs_zsu234_chdkz",
	"I_MU_mercs_Offroad_01_armed_F",
	"I_MU_mercs_Offroad_01_armed_F",
	"LOP_AFR_BTR60",
	"LOP_AFR_M113_W",
	"LOP_AFR_T72BA",
	"I_MU_mercs_Offroad_01_armed_F"
];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = false;
opfor_vehicles_extension = [

];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = false;
opfor_vehicles_low_intensity_extension = [

];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = false;
opfor_battlegroup_vehicles_extension = [

];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = false;
opfor_battlegroup_vehicles_low_intensity_extension = [

];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = false;
opfor_troup_transports_extension = [

];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = false;
opfor_choppers_extension = [

];

// Opfor military aircrafts
opfor_air_overwrite = false;
opfor_air_extension = [

];







// Other stuff

// Civilians
civilians_overwrite = false;
civilians_extension = [

];

// Civilian vehicles
civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [

];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [
	["rhsusf_M977A4_REPAIR_usarmy_d",5,0,0]
];
	
vehicle_rearm_sources_extension = [
	["rhsusf_M977A4_AMMO_BKIT_usarmy_d",5,0,0],
	["rhsusf_M977A4_AMMO_usarmy_d",5,0,0],
	["rhs_gaz66_ammo_msv",5,0,10]
];
	
vehicle_refuel_sources_extension = [
	["rhsusf_M978A4_usarmy_d",5,0,0],
	["RHS_Ural_Fuel_MSV_01",5,0,0]
];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles_extension = [
	"Steve_MBT_Kuma",
	"Burnes_FV4034_01",
	"RHS_AH1Z_wd_GS",
	"H_RAH66",
	"RHS_AH64D_wd",
	"JS_JC_FA18E",
	"JS_JC_FA18F",
	"greuh_pandur_wdld",
	"RHS_M2A3_BUSKIII_wd",
	"usaf_f22",
	"USAF_F35A",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"FIR_F16C",
	"FIR_F15E"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];

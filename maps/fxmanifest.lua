fx_version "adamant"

game "gta5"

this_is_a_map "yes"

client_scripts {
    "client.lua",
    "gabz_mrpd_entitysets.lua"
}

files {
	"stream/shells/shellprops.ytyp",
	"stream/shells/shellpropsv2.ytyp",
	"stream/officeshells/shellpropsv3.ytyp",
	"stream/storeshell/shellpropsv4.ytyp",
	"stream/warehouseshell/shellpropsv5.ytyp",
	"stream/mediumShells/shellpropsv10.ytyp",
	"stream/modernhousingpack/shellpropsv12.ytyp",
	"stream/breze_shells/breze_shells.ytyp",
	"gusepe_timecycle_mods_1.xml",
	"gabz_bennys_timecycle.xml",
	"gabz_mrpd_timecycle.xml",
	"timecycle_mods_1.xml",
	"interiorproxies.meta",
	'cams.ytyp',
}

data_file "DLC_ITYP_REQUEST" "stream/shells/shellprops.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/shells/shellpropsv2.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/officeshells/shellpropsv3.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/storeshell/shellpropsv4.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/warehouseshell/shellpropsv5.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/mediumShells/shellpropsv10.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/modernhousingpack/shellpropsv12.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/breze_shells/breze_shells.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/vw_prop_vw_casino_art_02.ytyp"

-- Prison
data_file "DLC_ITYP_REQUEST" "stream/prisonprops/prison_props.ytyp"

-- Golf Club
data_file 'DLC_ITYP_REQUEST' 'stream/golfclub/apa_int_mp_h_props.ytyp'

-- Data Files
data_file "TIMECYCLEMOD_FILE" "meta/gabz_timecycle_mods_1.xml"
data_file 'TIMECYCLEMOD_FILE' 'gabz_mrpd_timecycle.xml'
data_file "TIMECYCLEMOD_FILE" "gusepe_timecycle_mods_1.xml"
data_file "TIMECYCLEMOD_FILE" "timecycle_mods_1.xml"
data_file "INTERIOR_PROXY_ORDER_FILE" "interiorproxies.meta"
data_file 'DLC_ITYP_REQUEST' 'cams.ytyp'


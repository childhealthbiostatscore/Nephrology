/* Edit the following line to reflect the full path to your CSV file */
/*%let csv_file = 'H:\From CBC Individual\BrintonJ\AKI\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\data\NINJAPICU_DATA_NOHDRS_2024-05-21_1344.csv';
*/

/*%let csv_file = 'S:\Brinton\Nephrology\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\data\NINJAPICU_DATA_NOHDRS_2024-05-21_1344.csv'*/
%let csv_file = "S:\Brinton\Nephrology\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\data\NINJAPICU_DATA_NOHDRS_2024-05-21_1344.csv";

OPTIONS nofmterr;

proc format;
	value form_1_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value days_prior_to_ninja_flag___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_2___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_3___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_4___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_6___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_5___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_7___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_8___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja_flag_9___6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_0_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_1_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_2_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_3_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_4_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_5_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_6_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_7_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_8_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_9_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_10_ 0='Unchecked' 1='Checked';
	value days_prior_to_ninja__v_11_ 0='Unchecked' 1='Checked';
	value renal_angina_index_c_v_12_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value ntmx_3_days_prior___48_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___12_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___49_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___13_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___50_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___14_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___15_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___51_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___44_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___16_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___17_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___18_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___19_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___20_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___21_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___22_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___52_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___42_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___53_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___23_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___24_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___25_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___26_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___27_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___47_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___30_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___28_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___54_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___43_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___29_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___55_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___56_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___31_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___57_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___32_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___58_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___59_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___60_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___33_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___61_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___62_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___34_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___35_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___36_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___63_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___37_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___38_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___39_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___40_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___45_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___46_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___64_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___65_ 0='Unchecked' 1='Checked';
	value ntmx_3_days_prior___41_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___48_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___12_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___49_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___13_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___50_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___14_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___15_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___51_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___44_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___16_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___17_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___18_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___19_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___20_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___21_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___22_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___52_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___42_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___53_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___23_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___24_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___25_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___26_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___27_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___47_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___30_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___28_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___54_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___43_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___29_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___55_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___56_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___31_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___57_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___32_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___58_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___59_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___60_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___33_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___61_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___62_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___34_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___35_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___36_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___63_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___37_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___38_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___39_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___40_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___45_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___46_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___64_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___65_ 0='Unchecked' 1='Checked';
	value ntmx_2_days_prior___41_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___48_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___12_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___49_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___13_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___50_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___14_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___15_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___51_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___44_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___16_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___17_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___18_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___19_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___20_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___21_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___22_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___52_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___42_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___53_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___23_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___24_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___25_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___26_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___27_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___47_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___30_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___28_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___54_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___43_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___29_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___55_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___56_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___31_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___57_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___32_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___58_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___59_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___60_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___33_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___61_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___62_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___34_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___35_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___36_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___63_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___37_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___38_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___39_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___40_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___45_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___46_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___64_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___65_ 0='Unchecked' 1='Checked';
	value ntmx_1_days_prior___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_1___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_2___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_3___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_4___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_5___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_6___41_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___48_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___12_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___49_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___13_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___50_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___14_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___15_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___51_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___44_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___16_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___17_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___18_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___19_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___20_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___21_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___22_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___52_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___42_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___53_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___23_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___24_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___25_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___26_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___27_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___47_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___30_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___28_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___54_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___43_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___29_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___55_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___56_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___31_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___57_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___32_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___58_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___59_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___60_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___33_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___61_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___62_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___34_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___35_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___36_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___63_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___37_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___38_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___39_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___40_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___45_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___46_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___64_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___65_ 0='Unchecked' 1='Checked';
	value ntmx_day_of_7___41_ 0='Unchecked' 1='Checked';
	value supratherapeutic_vancomyci_ 1='Yes' 0='No';
	value gentamicin_trough_2_ 1='Yes' 0='No';
	value tacrolimus_level_15_ 1='Yes' 0='No';
	value cyclosporine_level_300_ 1='Yes' 0='No';
	value nephrotoxic_exposures_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value gender_assigned_at_birth_ 1='Male' 2='Female' 
		3='Other';
	value history_of_renal_issues___1_ 0='Unchecked' 1='Checked';
	value history_of_renal_issues___2_ 0='Unchecked' 1='Checked';
	value history_of_renal_issues___3_ 0='Unchecked' 1='Checked';
	value history_of_renal_issues___4_ 0='Unchecked' 1='Checked';
	value code_event_up_to_3d_prior___1_ 0='Unchecked' 1='Checked';
	value code_event_up_to_3d_prior___2_ 0='Unchecked' 1='Checked';
	value ecmo_during_hospitalizatio_ 1='Yes' 0='No';
	value demographics_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value lab_data_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value dialysis_needed_after_hosp_ 1='Yes' 0='No';
	value indication_for_dialysis___1_ 0='Unchecked' 1='Checked';
	value indication_for_dialysis___2_ 0='Unchecked' 1='Checked';
	value indication_for_dialysis___3_ 0='Unchecked' 1='Checked';
	value indication_for_dialysis___4_ 0='Unchecked' 1='Checked';
	value indication_for_dialysis___5_ 0='Unchecked' 1='Checked';
	value outcomes_data_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	value vis_information_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';

	run;

data work.redcap; %let _EFIERR_ = 0;
infile &csv_file  delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ;

	informat record_id $500. ;
	informat mrn $500. ;
	informat service_for_aki_episode $500. ;
	informat start_date_for_ntmx_encoun yymmdd10. ;
	informat aki_episode_start_date yymmdd10. ;
	informat ntmx_exposure_type $500. ;
	informat baseline_scr_lowest_docume $500. ;
	informat daily_scr_value_on_1st_day best32. ;
	informat absolute_scr_difference_fr best32. ;
	informat scr_difference_from_baseli best32. ;
	informat initial_aki_stage $500. ;
	informat additional_comments $500. ;
	informat aki_episode_resolution_dat yymmdd10. ;
	informat of_days_with_aki best32. ;
	informat reason_for_closing_aki_epi $500. ;
	informat maximum_scr_during_this_ak best32. ;
	informat date_of_maximum_scr_during yymmdd10. ;
	informat highest_aki_stage_for_this $500. ;
	informat form_1_complete best32. ;
	informat days_prior_to_ninja_flag___1 best32. ;
	informat days_prior_to_ninja_flag___2 best32. ;
	informat days_prior_to_ninja_flag___3 best32. ;
	informat days_prior_to_ninja_flag___4 best32. ;
	informat days_prior_to_ninja_flag___5 best32. ;
	informat days_prior_to_ninja_flag___6 best32. ;
	informat days_prior_to_ninja_flag_2___1 best32. ;
	informat days_prior_to_ninja_flag_2___2 best32. ;
	informat days_prior_to_ninja_flag_2___3 best32. ;
	informat days_prior_to_ninja_flag_2___4 best32. ;
	informat days_prior_to_ninja_flag_2___5 best32. ;
	informat days_prior_to_ninja_flag_2___6 best32. ;
	informat days_prior_to_ninja_flag_3___1 best32. ;
	informat days_prior_to_ninja_flag_3___2 best32. ;
	informat days_prior_to_ninja_flag_3___3 best32. ;
	informat days_prior_to_ninja_flag_3___4 best32. ;
	informat days_prior_to_ninja_flag_3___5 best32. ;
	informat days_prior_to_ninja_flag_3___6 best32. ;
	informat days_prior_to_ninja_flag_4___1 best32. ;
	informat days_prior_to_ninja_flag_4___2 best32. ;
	informat days_prior_to_ninja_flag_4___3 best32. ;
	informat days_prior_to_ninja_flag_4___4 best32. ;
	informat days_prior_to_ninja_flag_4___5 best32. ;
	informat days_prior_to_ninja_flag_4___6 best32. ;
	informat days_prior_to_ninja_flag_6___1 best32. ;
	informat days_prior_to_ninja_flag_6___2 best32. ;
	informat days_prior_to_ninja_flag_6___3 best32. ;
	informat days_prior_to_ninja_flag_6___4 best32. ;
	informat days_prior_to_ninja_flag_6___5 best32. ;
	informat days_prior_to_ninja_flag_6___6 best32. ;
	informat days_prior_to_ninja_flag_5___1 best32. ;
	informat days_prior_to_ninja_flag_5___2 best32. ;
	informat days_prior_to_ninja_flag_5___3 best32. ;
	informat days_prior_to_ninja_flag_5___4 best32. ;
	informat days_prior_to_ninja_flag_5___5 best32. ;
	informat days_prior_to_ninja_flag_5___6 best32. ;
	informat days_prior_to_ninja_flag_7___1 best32. ;
	informat days_prior_to_ninja_flag_7___2 best32. ;
	informat days_prior_to_ninja_flag_7___3 best32. ;
	informat days_prior_to_ninja_flag_7___4 best32. ;
	informat days_prior_to_ninja_flag_7___5 best32. ;
	informat days_prior_to_ninja_flag_7___6 best32. ;
	informat days_prior_to_ninja_flag_8___1 best32. ;
	informat days_prior_to_ninja_flag_8___2 best32. ;
	informat days_prior_to_ninja_flag_8___3 best32. ;
	informat days_prior_to_ninja_flag_8___4 best32. ;
	informat days_prior_to_ninja_flag_8___5 best32. ;
	informat days_prior_to_ninja_flag_8___6 best32. ;
	informat days_prior_to_ninja_flag_9___1 best32. ;
	informat days_prior_to_ninja_flag_9___2 best32. ;
	informat days_prior_to_ninja_flag_9___3 best32. ;
	informat days_prior_to_ninja_flag_9___4 best32. ;
	informat days_prior_to_ninja_flag_9___5 best32. ;
	informat days_prior_to_ninja_flag_9___6 best32. ;
	informat days_prior_to_ninja__v_0 best32. ;
	informat days_prior_to_ninja__v_1 best32. ;
	informat days_prior_to_ninja__v_2 best32. ;
	informat days_prior_to_ninja__v_3 best32. ;
	informat days_prior_to_ninja__v_4 best32. ;
	informat days_prior_to_ninja__v_5 best32. ;
	informat days_prior_to_ninja__v_6 best32. ;
	informat days_prior_to_ninja__v_7 best32. ;
	informat days_prior_to_ninja__v_8 best32. ;
	informat days_prior_to_ninja__v_9 best32. ;
	informat days_prior_to_ninja__v_10 best32. ;
	informat days_prior_to_ninja__v_11 best32. ;
	informat renal_angina_index_c_v_12 best32. ;
	informat ntmx_3_days_prior___48 best32. ;
	informat ntmx_3_days_prior___12 best32. ;
	informat ntmx_3_days_prior___49 best32. ;
	informat ntmx_3_days_prior___13 best32. ;
	informat ntmx_3_days_prior___50 best32. ;
	informat ntmx_3_days_prior___14 best32. ;
	informat ntmx_3_days_prior___15 best32. ;
	informat ntmx_3_days_prior___51 best32. ;
	informat ntmx_3_days_prior___44 best32. ;
	informat ntmx_3_days_prior___16 best32. ;
	informat ntmx_3_days_prior___17 best32. ;
	informat ntmx_3_days_prior___18 best32. ;
	informat ntmx_3_days_prior___19 best32. ;
	informat ntmx_3_days_prior___20 best32. ;
	informat ntmx_3_days_prior___21 best32. ;
	informat ntmx_3_days_prior___22 best32. ;
	informat ntmx_3_days_prior___52 best32. ;
	informat ntmx_3_days_prior___42 best32. ;
	informat ntmx_3_days_prior___53 best32. ;
	informat ntmx_3_days_prior___23 best32. ;
	informat ntmx_3_days_prior___24 best32. ;
	informat ntmx_3_days_prior___25 best32. ;
	informat ntmx_3_days_prior___26 best32. ;
	informat ntmx_3_days_prior___27 best32. ;
	informat ntmx_3_days_prior___47 best32. ;
	informat ntmx_3_days_prior___30 best32. ;
	informat ntmx_3_days_prior___28 best32. ;
	informat ntmx_3_days_prior___54 best32. ;
	informat ntmx_3_days_prior___43 best32. ;
	informat ntmx_3_days_prior___29 best32. ;
	informat ntmx_3_days_prior___55 best32. ;
	informat ntmx_3_days_prior___56 best32. ;
	informat ntmx_3_days_prior___31 best32. ;
	informat ntmx_3_days_prior___57 best32. ;
	informat ntmx_3_days_prior___32 best32. ;
	informat ntmx_3_days_prior___58 best32. ;
	informat ntmx_3_days_prior___59 best32. ;
	informat ntmx_3_days_prior___60 best32. ;
	informat ntmx_3_days_prior___33 best32. ;
	informat ntmx_3_days_prior___61 best32. ;
	informat ntmx_3_days_prior___62 best32. ;
	informat ntmx_3_days_prior___34 best32. ;
	informat ntmx_3_days_prior___35 best32. ;
	informat ntmx_3_days_prior___36 best32. ;
	informat ntmx_3_days_prior___63 best32. ;
	informat ntmx_3_days_prior___37 best32. ;
	informat ntmx_3_days_prior___38 best32. ;
	informat ntmx_3_days_prior___39 best32. ;
	informat ntmx_3_days_prior___40 best32. ;
	informat ntmx_3_days_prior___45 best32. ;
	informat ntmx_3_days_prior___46 best32. ;
	informat ntmx_3_days_prior___64 best32. ;
	informat ntmx_3_days_prior___65 best32. ;
	informat ntmx_3_days_prior___41 best32. ;
	informat ntmx_2_days_prior___48 best32. ;
	informat ntmx_2_days_prior___12 best32. ;
	informat ntmx_2_days_prior___49 best32. ;
	informat ntmx_2_days_prior___13 best32. ;
	informat ntmx_2_days_prior___50 best32. ;
	informat ntmx_2_days_prior___14 best32. ;
	informat ntmx_2_days_prior___15 best32. ;
	informat ntmx_2_days_prior___51 best32. ;
	informat ntmx_2_days_prior___44 best32. ;
	informat ntmx_2_days_prior___16 best32. ;
	informat ntmx_2_days_prior___17 best32. ;
	informat ntmx_2_days_prior___18 best32. ;
	informat ntmx_2_days_prior___19 best32. ;
	informat ntmx_2_days_prior___20 best32. ;
	informat ntmx_2_days_prior___21 best32. ;
	informat ntmx_2_days_prior___22 best32. ;
	informat ntmx_2_days_prior___52 best32. ;
	informat ntmx_2_days_prior___42 best32. ;
	informat ntmx_2_days_prior___53 best32. ;
	informat ntmx_2_days_prior___23 best32. ;
	informat ntmx_2_days_prior___24 best32. ;
	informat ntmx_2_days_prior___25 best32. ;
	informat ntmx_2_days_prior___26 best32. ;
	informat ntmx_2_days_prior___27 best32. ;
	informat ntmx_2_days_prior___47 best32. ;
	informat ntmx_2_days_prior___30 best32. ;
	informat ntmx_2_days_prior___28 best32. ;
	informat ntmx_2_days_prior___54 best32. ;
	informat ntmx_2_days_prior___43 best32. ;
	informat ntmx_2_days_prior___29 best32. ;
	informat ntmx_2_days_prior___55 best32. ;
	informat ntmx_2_days_prior___56 best32. ;
	informat ntmx_2_days_prior___31 best32. ;
	informat ntmx_2_days_prior___57 best32. ;
	informat ntmx_2_days_prior___32 best32. ;
	informat ntmx_2_days_prior___58 best32. ;
	informat ntmx_2_days_prior___59 best32. ;
	informat ntmx_2_days_prior___60 best32. ;
	informat ntmx_2_days_prior___33 best32. ;
	informat ntmx_2_days_prior___61 best32. ;
	informat ntmx_2_days_prior___62 best32. ;
	informat ntmx_2_days_prior___34 best32. ;
	informat ntmx_2_days_prior___35 best32. ;
	informat ntmx_2_days_prior___36 best32. ;
	informat ntmx_2_days_prior___63 best32. ;
	informat ntmx_2_days_prior___37 best32. ;
	informat ntmx_2_days_prior___38 best32. ;
	informat ntmx_2_days_prior___39 best32. ;
	informat ntmx_2_days_prior___40 best32. ;
	informat ntmx_2_days_prior___45 best32. ;
	informat ntmx_2_days_prior___46 best32. ;
	informat ntmx_2_days_prior___64 best32. ;
	informat ntmx_2_days_prior___65 best32. ;
	informat ntmx_2_days_prior___41 best32. ;
	informat ntmx_1_days_prior___48 best32. ;
	informat ntmx_1_days_prior___12 best32. ;
	informat ntmx_1_days_prior___49 best32. ;
	informat ntmx_1_days_prior___13 best32. ;
	informat ntmx_1_days_prior___50 best32. ;
	informat ntmx_1_days_prior___14 best32. ;
	informat ntmx_1_days_prior___15 best32. ;
	informat ntmx_1_days_prior___51 best32. ;
	informat ntmx_1_days_prior___44 best32. ;
	informat ntmx_1_days_prior___16 best32. ;
	informat ntmx_1_days_prior___17 best32. ;
	informat ntmx_1_days_prior___18 best32. ;
	informat ntmx_1_days_prior___19 best32. ;
	informat ntmx_1_days_prior___20 best32. ;
	informat ntmx_1_days_prior___21 best32. ;
	informat ntmx_1_days_prior___22 best32. ;
	informat ntmx_1_days_prior___52 best32. ;
	informat ntmx_1_days_prior___42 best32. ;
	informat ntmx_1_days_prior___53 best32. ;
	informat ntmx_1_days_prior___23 best32. ;
	informat ntmx_1_days_prior___24 best32. ;
	informat ntmx_1_days_prior___25 best32. ;
	informat ntmx_1_days_prior___26 best32. ;
	informat ntmx_1_days_prior___27 best32. ;
	informat ntmx_1_days_prior___47 best32. ;
	informat ntmx_1_days_prior___30 best32. ;
	informat ntmx_1_days_prior___28 best32. ;
	informat ntmx_1_days_prior___54 best32. ;
	informat ntmx_1_days_prior___43 best32. ;
	informat ntmx_1_days_prior___29 best32. ;
	informat ntmx_1_days_prior___55 best32. ;
	informat ntmx_1_days_prior___56 best32. ;
	informat ntmx_1_days_prior___31 best32. ;
	informat ntmx_1_days_prior___57 best32. ;
	informat ntmx_1_days_prior___32 best32. ;
	informat ntmx_1_days_prior___58 best32. ;
	informat ntmx_1_days_prior___59 best32. ;
	informat ntmx_1_days_prior___60 best32. ;
	informat ntmx_1_days_prior___33 best32. ;
	informat ntmx_1_days_prior___61 best32. ;
	informat ntmx_1_days_prior___62 best32. ;
	informat ntmx_1_days_prior___34 best32. ;
	informat ntmx_1_days_prior___35 best32. ;
	informat ntmx_1_days_prior___36 best32. ;
	informat ntmx_1_days_prior___63 best32. ;
	informat ntmx_1_days_prior___37 best32. ;
	informat ntmx_1_days_prior___38 best32. ;
	informat ntmx_1_days_prior___39 best32. ;
	informat ntmx_1_days_prior___40 best32. ;
	informat ntmx_1_days_prior___45 best32. ;
	informat ntmx_1_days_prior___46 best32. ;
	informat ntmx_1_days_prior___64 best32. ;
	informat ntmx_1_days_prior___65 best32. ;
	informat ntmx_1_days_prior___41 best32. ;
	informat ntmx_day_of___48 best32. ;
	informat ntmx_day_of___12 best32. ;
	informat ntmx_day_of___49 best32. ;
	informat ntmx_day_of___13 best32. ;
	informat ntmx_day_of___50 best32. ;
	informat ntmx_day_of___14 best32. ;
	informat ntmx_day_of___15 best32. ;
	informat ntmx_day_of___51 best32. ;
	informat ntmx_day_of___44 best32. ;
	informat ntmx_day_of___16 best32. ;
	informat ntmx_day_of___17 best32. ;
	informat ntmx_day_of___18 best32. ;
	informat ntmx_day_of___19 best32. ;
	informat ntmx_day_of___20 best32. ;
	informat ntmx_day_of___21 best32. ;
	informat ntmx_day_of___22 best32. ;
	informat ntmx_day_of___52 best32. ;
	informat ntmx_day_of___42 best32. ;
	informat ntmx_day_of___53 best32. ;
	informat ntmx_day_of___23 best32. ;
	informat ntmx_day_of___24 best32. ;
	informat ntmx_day_of___25 best32. ;
	informat ntmx_day_of___26 best32. ;
	informat ntmx_day_of___27 best32. ;
	informat ntmx_day_of___47 best32. ;
	informat ntmx_day_of___30 best32. ;
	informat ntmx_day_of___28 best32. ;
	informat ntmx_day_of___54 best32. ;
	informat ntmx_day_of___43 best32. ;
	informat ntmx_day_of___29 best32. ;
	informat ntmx_day_of___55 best32. ;
	informat ntmx_day_of___56 best32. ;
	informat ntmx_day_of___31 best32. ;
	informat ntmx_day_of___57 best32. ;
	informat ntmx_day_of___32 best32. ;
	informat ntmx_day_of___58 best32. ;
	informat ntmx_day_of___59 best32. ;
	informat ntmx_day_of___60 best32. ;
	informat ntmx_day_of___33 best32. ;
	informat ntmx_day_of___61 best32. ;
	informat ntmx_day_of___62 best32. ;
	informat ntmx_day_of___34 best32. ;
	informat ntmx_day_of___35 best32. ;
	informat ntmx_day_of___36 best32. ;
	informat ntmx_day_of___63 best32. ;
	informat ntmx_day_of___37 best32. ;
	informat ntmx_day_of___38 best32. ;
	informat ntmx_day_of___39 best32. ;
	informat ntmx_day_of___40 best32. ;
	informat ntmx_day_of___45 best32. ;
	informat ntmx_day_of___46 best32. ;
	informat ntmx_day_of___64 best32. ;
	informat ntmx_day_of___65 best32. ;
	informat ntmx_day_of___41 best32. ;
	informat ntmx_day_of_1___48 best32. ;
	informat ntmx_day_of_1___12 best32. ;
	informat ntmx_day_of_1___49 best32. ;
	informat ntmx_day_of_1___13 best32. ;
	informat ntmx_day_of_1___50 best32. ;
	informat ntmx_day_of_1___14 best32. ;
	informat ntmx_day_of_1___15 best32. ;
	informat ntmx_day_of_1___51 best32. ;
	informat ntmx_day_of_1___44 best32. ;
	informat ntmx_day_of_1___16 best32. ;
	informat ntmx_day_of_1___17 best32. ;
	informat ntmx_day_of_1___18 best32. ;
	informat ntmx_day_of_1___19 best32. ;
	informat ntmx_day_of_1___20 best32. ;
	informat ntmx_day_of_1___21 best32. ;
	informat ntmx_day_of_1___22 best32. ;
	informat ntmx_day_of_1___52 best32. ;
	informat ntmx_day_of_1___42 best32. ;
	informat ntmx_day_of_1___53 best32. ;
	informat ntmx_day_of_1___23 best32. ;
	informat ntmx_day_of_1___24 best32. ;
	informat ntmx_day_of_1___25 best32. ;
	informat ntmx_day_of_1___26 best32. ;
	informat ntmx_day_of_1___27 best32. ;
	informat ntmx_day_of_1___47 best32. ;
	informat ntmx_day_of_1___30 best32. ;
	informat ntmx_day_of_1___28 best32. ;
	informat ntmx_day_of_1___54 best32. ;
	informat ntmx_day_of_1___43 best32. ;
	informat ntmx_day_of_1___29 best32. ;
	informat ntmx_day_of_1___55 best32. ;
	informat ntmx_day_of_1___56 best32. ;
	informat ntmx_day_of_1___31 best32. ;
	informat ntmx_day_of_1___57 best32. ;
	informat ntmx_day_of_1___32 best32. ;
	informat ntmx_day_of_1___58 best32. ;
	informat ntmx_day_of_1___59 best32. ;
	informat ntmx_day_of_1___60 best32. ;
	informat ntmx_day_of_1___33 best32. ;
	informat ntmx_day_of_1___61 best32. ;
	informat ntmx_day_of_1___62 best32. ;
	informat ntmx_day_of_1___34 best32. ;
	informat ntmx_day_of_1___35 best32. ;
	informat ntmx_day_of_1___36 best32. ;
	informat ntmx_day_of_1___63 best32. ;
	informat ntmx_day_of_1___37 best32. ;
	informat ntmx_day_of_1___38 best32. ;
	informat ntmx_day_of_1___39 best32. ;
	informat ntmx_day_of_1___40 best32. ;
	informat ntmx_day_of_1___45 best32. ;
	informat ntmx_day_of_1___46 best32. ;
	informat ntmx_day_of_1___64 best32. ;
	informat ntmx_day_of_1___65 best32. ;
	informat ntmx_day_of_1___41 best32. ;
	informat ntmx_day_of_2___48 best32. ;
	informat ntmx_day_of_2___12 best32. ;
	informat ntmx_day_of_2___49 best32. ;
	informat ntmx_day_of_2___13 best32. ;
	informat ntmx_day_of_2___50 best32. ;
	informat ntmx_day_of_2___14 best32. ;
	informat ntmx_day_of_2___15 best32. ;
	informat ntmx_day_of_2___51 best32. ;
	informat ntmx_day_of_2___44 best32. ;
	informat ntmx_day_of_2___16 best32. ;
	informat ntmx_day_of_2___17 best32. ;
	informat ntmx_day_of_2___18 best32. ;
	informat ntmx_day_of_2___19 best32. ;
	informat ntmx_day_of_2___20 best32. ;
	informat ntmx_day_of_2___21 best32. ;
	informat ntmx_day_of_2___22 best32. ;
	informat ntmx_day_of_2___52 best32. ;
	informat ntmx_day_of_2___42 best32. ;
	informat ntmx_day_of_2___53 best32. ;
	informat ntmx_day_of_2___23 best32. ;
	informat ntmx_day_of_2___24 best32. ;
	informat ntmx_day_of_2___25 best32. ;
	informat ntmx_day_of_2___26 best32. ;
	informat ntmx_day_of_2___27 best32. ;
	informat ntmx_day_of_2___47 best32. ;
	informat ntmx_day_of_2___30 best32. ;
	informat ntmx_day_of_2___28 best32. ;
	informat ntmx_day_of_2___54 best32. ;
	informat ntmx_day_of_2___43 best32. ;
	informat ntmx_day_of_2___29 best32. ;
	informat ntmx_day_of_2___55 best32. ;
	informat ntmx_day_of_2___56 best32. ;
	informat ntmx_day_of_2___31 best32. ;
	informat ntmx_day_of_2___57 best32. ;
	informat ntmx_day_of_2___32 best32. ;
	informat ntmx_day_of_2___58 best32. ;
	informat ntmx_day_of_2___59 best32. ;
	informat ntmx_day_of_2___60 best32. ;
	informat ntmx_day_of_2___33 best32. ;
	informat ntmx_day_of_2___61 best32. ;
	informat ntmx_day_of_2___62 best32. ;
	informat ntmx_day_of_2___34 best32. ;
	informat ntmx_day_of_2___35 best32. ;
	informat ntmx_day_of_2___36 best32. ;
	informat ntmx_day_of_2___63 best32. ;
	informat ntmx_day_of_2___37 best32. ;
	informat ntmx_day_of_2___38 best32. ;
	informat ntmx_day_of_2___39 best32. ;
	informat ntmx_day_of_2___40 best32. ;
	informat ntmx_day_of_2___45 best32. ;
	informat ntmx_day_of_2___46 best32. ;
	informat ntmx_day_of_2___64 best32. ;
	informat ntmx_day_of_2___65 best32. ;
	informat ntmx_day_of_2___41 best32. ;
	informat ntmx_day_of_3___48 best32. ;
	informat ntmx_day_of_3___12 best32. ;
	informat ntmx_day_of_3___49 best32. ;
	informat ntmx_day_of_3___13 best32. ;
	informat ntmx_day_of_3___50 best32. ;
	informat ntmx_day_of_3___14 best32. ;
	informat ntmx_day_of_3___15 best32. ;
	informat ntmx_day_of_3___51 best32. ;
	informat ntmx_day_of_3___44 best32. ;
	informat ntmx_day_of_3___16 best32. ;
	informat ntmx_day_of_3___17 best32. ;
	informat ntmx_day_of_3___18 best32. ;
	informat ntmx_day_of_3___19 best32. ;
	informat ntmx_day_of_3___20 best32. ;
	informat ntmx_day_of_3___21 best32. ;
	informat ntmx_day_of_3___22 best32. ;
	informat ntmx_day_of_3___52 best32. ;
	informat ntmx_day_of_3___42 best32. ;
	informat ntmx_day_of_3___53 best32. ;
	informat ntmx_day_of_3___23 best32. ;
	informat ntmx_day_of_3___24 best32. ;
	informat ntmx_day_of_3___25 best32. ;
	informat ntmx_day_of_3___26 best32. ;
	informat ntmx_day_of_3___27 best32. ;
	informat ntmx_day_of_3___47 best32. ;
	informat ntmx_day_of_3___30 best32. ;
	informat ntmx_day_of_3___28 best32. ;
	informat ntmx_day_of_3___54 best32. ;
	informat ntmx_day_of_3___43 best32. ;
	informat ntmx_day_of_3___29 best32. ;
	informat ntmx_day_of_3___55 best32. ;
	informat ntmx_day_of_3___56 best32. ;
	informat ntmx_day_of_3___31 best32. ;
	informat ntmx_day_of_3___57 best32. ;
	informat ntmx_day_of_3___32 best32. ;
	informat ntmx_day_of_3___58 best32. ;
	informat ntmx_day_of_3___59 best32. ;
	informat ntmx_day_of_3___60 best32. ;
	informat ntmx_day_of_3___33 best32. ;
	informat ntmx_day_of_3___61 best32. ;
	informat ntmx_day_of_3___62 best32. ;
	informat ntmx_day_of_3___34 best32. ;
	informat ntmx_day_of_3___35 best32. ;
	informat ntmx_day_of_3___36 best32. ;
	informat ntmx_day_of_3___63 best32. ;
	informat ntmx_day_of_3___37 best32. ;
	informat ntmx_day_of_3___38 best32. ;
	informat ntmx_day_of_3___39 best32. ;
	informat ntmx_day_of_3___40 best32. ;
	informat ntmx_day_of_3___45 best32. ;
	informat ntmx_day_of_3___46 best32. ;
	informat ntmx_day_of_3___64 best32. ;
	informat ntmx_day_of_3___65 best32. ;
	informat ntmx_day_of_3___41 best32. ;
	informat ntmx_day_of_4___48 best32. ;
	informat ntmx_day_of_4___12 best32. ;
	informat ntmx_day_of_4___49 best32. ;
	informat ntmx_day_of_4___13 best32. ;
	informat ntmx_day_of_4___50 best32. ;
	informat ntmx_day_of_4___14 best32. ;
	informat ntmx_day_of_4___15 best32. ;
	informat ntmx_day_of_4___51 best32. ;
	informat ntmx_day_of_4___44 best32. ;
	informat ntmx_day_of_4___16 best32. ;
	informat ntmx_day_of_4___17 best32. ;
	informat ntmx_day_of_4___18 best32. ;
	informat ntmx_day_of_4___19 best32. ;
	informat ntmx_day_of_4___20 best32. ;
	informat ntmx_day_of_4___21 best32. ;
	informat ntmx_day_of_4___22 best32. ;
	informat ntmx_day_of_4___52 best32. ;
	informat ntmx_day_of_4___42 best32. ;
	informat ntmx_day_of_4___53 best32. ;
	informat ntmx_day_of_4___23 best32. ;
	informat ntmx_day_of_4___24 best32. ;
	informat ntmx_day_of_4___25 best32. ;
	informat ntmx_day_of_4___26 best32. ;
	informat ntmx_day_of_4___27 best32. ;
	informat ntmx_day_of_4___47 best32. ;
	informat ntmx_day_of_4___30 best32. ;
	informat ntmx_day_of_4___28 best32. ;
	informat ntmx_day_of_4___54 best32. ;
	informat ntmx_day_of_4___43 best32. ;
	informat ntmx_day_of_4___29 best32. ;
	informat ntmx_day_of_4___55 best32. ;
	informat ntmx_day_of_4___56 best32. ;
	informat ntmx_day_of_4___31 best32. ;
	informat ntmx_day_of_4___57 best32. ;
	informat ntmx_day_of_4___32 best32. ;
	informat ntmx_day_of_4___58 best32. ;
	informat ntmx_day_of_4___59 best32. ;
	informat ntmx_day_of_4___60 best32. ;
	informat ntmx_day_of_4___33 best32. ;
	informat ntmx_day_of_4___61 best32. ;
	informat ntmx_day_of_4___62 best32. ;
	informat ntmx_day_of_4___34 best32. ;
	informat ntmx_day_of_4___35 best32. ;
	informat ntmx_day_of_4___36 best32. ;
	informat ntmx_day_of_4___63 best32. ;
	informat ntmx_day_of_4___37 best32. ;
	informat ntmx_day_of_4___38 best32. ;
	informat ntmx_day_of_4___39 best32. ;
	informat ntmx_day_of_4___40 best32. ;
	informat ntmx_day_of_4___45 best32. ;
	informat ntmx_day_of_4___46 best32. ;
	informat ntmx_day_of_4___64 best32. ;
	informat ntmx_day_of_4___65 best32. ;
	informat ntmx_day_of_4___41 best32. ;
	informat ntmx_day_of_5___48 best32. ;
	informat ntmx_day_of_5___12 best32. ;
	informat ntmx_day_of_5___49 best32. ;
	informat ntmx_day_of_5___13 best32. ;
	informat ntmx_day_of_5___50 best32. ;
	informat ntmx_day_of_5___14 best32. ;
	informat ntmx_day_of_5___15 best32. ;
	informat ntmx_day_of_5___51 best32. ;
	informat ntmx_day_of_5___44 best32. ;
	informat ntmx_day_of_5___16 best32. ;
	informat ntmx_day_of_5___17 best32. ;
	informat ntmx_day_of_5___18 best32. ;
	informat ntmx_day_of_5___19 best32. ;
	informat ntmx_day_of_5___20 best32. ;
	informat ntmx_day_of_5___21 best32. ;
	informat ntmx_day_of_5___22 best32. ;
	informat ntmx_day_of_5___52 best32. ;
	informat ntmx_day_of_5___42 best32. ;
	informat ntmx_day_of_5___53 best32. ;
	informat ntmx_day_of_5___23 best32. ;
	informat ntmx_day_of_5___24 best32. ;
	informat ntmx_day_of_5___25 best32. ;
	informat ntmx_day_of_5___26 best32. ;
	informat ntmx_day_of_5___27 best32. ;
	informat ntmx_day_of_5___47 best32. ;
	informat ntmx_day_of_5___30 best32. ;
	informat ntmx_day_of_5___28 best32. ;
	informat ntmx_day_of_5___54 best32. ;
	informat ntmx_day_of_5___43 best32. ;
	informat ntmx_day_of_5___29 best32. ;
	informat ntmx_day_of_5___55 best32. ;
	informat ntmx_day_of_5___56 best32. ;
	informat ntmx_day_of_5___31 best32. ;
	informat ntmx_day_of_5___57 best32. ;
	informat ntmx_day_of_5___32 best32. ;
	informat ntmx_day_of_5___58 best32. ;
	informat ntmx_day_of_5___59 best32. ;
	informat ntmx_day_of_5___60 best32. ;
	informat ntmx_day_of_5___33 best32. ;
	informat ntmx_day_of_5___61 best32. ;
	informat ntmx_day_of_5___62 best32. ;
	informat ntmx_day_of_5___34 best32. ;
	informat ntmx_day_of_5___35 best32. ;
	informat ntmx_day_of_5___36 best32. ;
	informat ntmx_day_of_5___63 best32. ;
	informat ntmx_day_of_5___37 best32. ;
	informat ntmx_day_of_5___38 best32. ;
	informat ntmx_day_of_5___39 best32. ;
	informat ntmx_day_of_5___40 best32. ;
	informat ntmx_day_of_5___45 best32. ;
	informat ntmx_day_of_5___46 best32. ;
	informat ntmx_day_of_5___64 best32. ;
	informat ntmx_day_of_5___65 best32. ;
	informat ntmx_day_of_5___41 best32. ;
	informat ntmx_day_of_6___48 best32. ;
	informat ntmx_day_of_6___12 best32. ;
	informat ntmx_day_of_6___49 best32. ;
	informat ntmx_day_of_6___13 best32. ;
	informat ntmx_day_of_6___50 best32. ;
	informat ntmx_day_of_6___14 best32. ;
	informat ntmx_day_of_6___15 best32. ;
	informat ntmx_day_of_6___51 best32. ;
	informat ntmx_day_of_6___44 best32. ;
	informat ntmx_day_of_6___16 best32. ;
	informat ntmx_day_of_6___17 best32. ;
	informat ntmx_day_of_6___18 best32. ;
	informat ntmx_day_of_6___19 best32. ;
	informat ntmx_day_of_6___20 best32. ;
	informat ntmx_day_of_6___21 best32. ;
	informat ntmx_day_of_6___22 best32. ;
	informat ntmx_day_of_6___52 best32. ;
	informat ntmx_day_of_6___42 best32. ;
	informat ntmx_day_of_6___53 best32. ;
	informat ntmx_day_of_6___23 best32. ;
	informat ntmx_day_of_6___24 best32. ;
	informat ntmx_day_of_6___25 best32. ;
	informat ntmx_day_of_6___26 best32. ;
	informat ntmx_day_of_6___27 best32. ;
	informat ntmx_day_of_6___47 best32. ;
	informat ntmx_day_of_6___30 best32. ;
	informat ntmx_day_of_6___28 best32. ;
	informat ntmx_day_of_6___54 best32. ;
	informat ntmx_day_of_6___43 best32. ;
	informat ntmx_day_of_6___29 best32. ;
	informat ntmx_day_of_6___55 best32. ;
	informat ntmx_day_of_6___56 best32. ;
	informat ntmx_day_of_6___31 best32. ;
	informat ntmx_day_of_6___57 best32. ;
	informat ntmx_day_of_6___32 best32. ;
	informat ntmx_day_of_6___58 best32. ;
	informat ntmx_day_of_6___59 best32. ;
	informat ntmx_day_of_6___60 best32. ;
	informat ntmx_day_of_6___33 best32. ;
	informat ntmx_day_of_6___61 best32. ;
	informat ntmx_day_of_6___62 best32. ;
	informat ntmx_day_of_6___34 best32. ;
	informat ntmx_day_of_6___35 best32. ;
	informat ntmx_day_of_6___36 best32. ;
	informat ntmx_day_of_6___63 best32. ;
	informat ntmx_day_of_6___37 best32. ;
	informat ntmx_day_of_6___38 best32. ;
	informat ntmx_day_of_6___39 best32. ;
	informat ntmx_day_of_6___40 best32. ;
	informat ntmx_day_of_6___45 best32. ;
	informat ntmx_day_of_6___46 best32. ;
	informat ntmx_day_of_6___64 best32. ;
	informat ntmx_day_of_6___65 best32. ;
	informat ntmx_day_of_6___41 best32. ;
	informat ntmx_day_of_7___48 best32. ;
	informat ntmx_day_of_7___12 best32. ;
	informat ntmx_day_of_7___49 best32. ;
	informat ntmx_day_of_7___13 best32. ;
	informat ntmx_day_of_7___50 best32. ;
	informat ntmx_day_of_7___14 best32. ;
	informat ntmx_day_of_7___15 best32. ;
	informat ntmx_day_of_7___51 best32. ;
	informat ntmx_day_of_7___44 best32. ;
	informat ntmx_day_of_7___16 best32. ;
	informat ntmx_day_of_7___17 best32. ;
	informat ntmx_day_of_7___18 best32. ;
	informat ntmx_day_of_7___19 best32. ;
	informat ntmx_day_of_7___20 best32. ;
	informat ntmx_day_of_7___21 best32. ;
	informat ntmx_day_of_7___22 best32. ;
	informat ntmx_day_of_7___52 best32. ;
	informat ntmx_day_of_7___42 best32. ;
	informat ntmx_day_of_7___53 best32. ;
	informat ntmx_day_of_7___23 best32. ;
	informat ntmx_day_of_7___24 best32. ;
	informat ntmx_day_of_7___25 best32. ;
	informat ntmx_day_of_7___26 best32. ;
	informat ntmx_day_of_7___27 best32. ;
	informat ntmx_day_of_7___47 best32. ;
	informat ntmx_day_of_7___30 best32. ;
	informat ntmx_day_of_7___28 best32. ;
	informat ntmx_day_of_7___54 best32. ;
	informat ntmx_day_of_7___43 best32. ;
	informat ntmx_day_of_7___29 best32. ;
	informat ntmx_day_of_7___55 best32. ;
	informat ntmx_day_of_7___56 best32. ;
	informat ntmx_day_of_7___31 best32. ;
	informat ntmx_day_of_7___57 best32. ;
	informat ntmx_day_of_7___32 best32. ;
	informat ntmx_day_of_7___58 best32. ;
	informat ntmx_day_of_7___59 best32. ;
	informat ntmx_day_of_7___60 best32. ;
	informat ntmx_day_of_7___33 best32. ;
	informat ntmx_day_of_7___61 best32. ;
	informat ntmx_day_of_7___62 best32. ;
	informat ntmx_day_of_7___34 best32. ;
	informat ntmx_day_of_7___35 best32. ;
	informat ntmx_day_of_7___36 best32. ;
	informat ntmx_day_of_7___63 best32. ;
	informat ntmx_day_of_7___37 best32. ;
	informat ntmx_day_of_7___38 best32. ;
	informat ntmx_day_of_7___39 best32. ;
	informat ntmx_day_of_7___40 best32. ;
	informat ntmx_day_of_7___45 best32. ;
	informat ntmx_day_of_7___46 best32. ;
	informat ntmx_day_of_7___64 best32. ;
	informat ntmx_day_of_7___65 best32. ;
	informat ntmx_day_of_7___41 best32. ;
	informat supratherapeutic_vancomyci best32. ;
	informat date_of_vanc_level yymmdd10. ;
	informat gentamicin_trough_2 best32. ;
	informat date_of_supratherapeutic_g yymmdd10. ;
	informat tacrolimus_level_15 best32. ;
	informat date_of_supratherapeutic_t yymmdd10. ;
	informat cyclosporine_level_300 best32. ;
	informat date_of_supratherapeutic_c yymmdd10. ;
	informat nephrotoxic_exposures_complete best32. ;
	informat age $500. ;
	informat gender_assigned_at_birth best32. ;
	informat admission_diagnosis $500. ;
	informat admission_location_and_pri $500. ;
	informat date_of_hospital_admission yymmdd10. ;
	informat date_of_icu_admission_for yymmdd10. ;
	informat history_of_renal_issues___1 best32. ;
	informat history_of_renal_issues___2 best32. ;
	informat history_of_renal_issues___3 best32. ;
	informat history_of_renal_issues___4 best32. ;
	informat other_renal_issue $500. ;
	informat code_event_up_to_3d_prior___1 best32. ;
	informat code_event_up_to_3d_prior___2 best32. ;
	informat ecmo_during_hospitalizatio best32. ;
	informat first_day_ecmo yymmdd10. ;
	informat last_day_of_ecmo yymmdd10. ;
	informat or_procedure_up_to_3_days $500. ;
	informat or_estimated_blood_loss_in $500. ;
	informat demographics_complete best32. ;
	informat ungal_level $500. ;
	informat scr_day_3 $500. ;
	informat scr_day_2 $500. ;
	informat scr_day_1 $500. ;
	informat scr_day_of_ninja_flag $500. ;
	informat scr_day_plus1 $500. ;
	informat scr_day2 $500. ;
	informat scr_day3 $500. ;
	informat scr_day4 $500. ;
	informat scr_day5 $500. ;
	informat scr_day6 $500. ;
	informat scr_day7 $500. ;
	informat lab_data_complete best32. ;
	informat date_of_icu_discharge yymmdd10. ;
	informat date_of_hospital_discharge yymmdd10. ;
	informat date_of_death yymmdd10. ;
	informat date_of_first_dialysis_tre yymmdd10. ;
	informat last_date_of_dialysis_in_h yymmdd10. ;
	informat dialysis_needed_after_hosp best32. ;
	informat indication_for_dialysis___1 best32. ;
	informat indication_for_dialysis___2 best32. ;
	informat indication_for_dialysis___3 best32. ;
	informat indication_for_dialysis___4 best32. ;
	informat indication_for_dialysis___5 best32. ;
	informat outcomes_data_complete best32. ;
	informat dopa_day_3 $500. ;
	informat dopa_day_2 $500. ;
	informat dopa_day_1 $500. ;
	informat dopa_day_0 $500. ;
	informat dopa_day_p1 $500. ;
	informat dopa_day_p2 $500. ;
	informat dopa_day_p3 $500. ;
	informat dobut_day_3 $500. ;
	informat dobut_day_2 $500. ;
	informat dobut_day_1 $500. ;
	informat dobut_day_0 $500. ;
	informat dobut_day_p1 $500. ;
	informat dobut_day_p2 $500. ;
	informat dobut_day_p3 $500. ;
	informat milrinone_day_3 $500. ;
	informat milrinone_day_2 $500. ;
	informat milrinone_day_1 $500. ;
	informat milrinone_day_0 $500. ;
	informat milrinone_day_p1 $500. ;
	informat milrinone_day_p2 $500. ;
	informat milrinone_day_p3 $500. ;
	informat epi_day_3 $500. ;
	informat epi_day_2 $500. ;
	informat epi_day_1 $500. ;
	informat epi_day_0 $500. ;
	informat epi_day_p1 $500. ;
	informat epi_day_p2 $500. ;
	informat epi_day_p3 $500. ;
	informat norepi_day_3 $500. ;
	informat norepi_day_2 $500. ;
	informat norepi_day_1 $500. ;
	informat norepi_day_0 $500. ;
	informat norepi_day_p1 $500. ;
	informat norepi_day_p2 $500. ;
	informat norepi_day_p3 $500. ;
	informat vaso_day_3 $500. ;
	informat vaso_day_2 $500. ;
	informat vaso_day_1 $500. ;
	informat vaso_day_0 $500. ;
	informat vaso_day_p1 $500. ;
	informat vaso_day_p2 $500. ;
	informat vaso_day_p3 $500. ;
	informat vis_information_complete best32. ;

	format record_id $500. ;
	format mrn $500. ;
	format service_for_aki_episode $500. ;
	format start_date_for_ntmx_encoun yymmdd10. ;
	format aki_episode_start_date yymmdd10. ;
	format ntmx_exposure_type $500. ;
	format baseline_scr_lowest_docume $500. ;
	format daily_scr_value_on_1st_day best12. ;
	format absolute_scr_difference_fr best12. ;
	format scr_difference_from_baseli best12. ;
	format initial_aki_stage $500. ;
	format additional_comments $500. ;
	format aki_episode_resolution_dat yymmdd10. ;
	format of_days_with_aki best12. ;
	format reason_for_closing_aki_epi $500. ;
	format maximum_scr_during_this_ak best12. ;
	format date_of_maximum_scr_during yymmdd10. ;
	format highest_aki_stage_for_this $500. ;
	format form_1_complete best12. ;
	format days_prior_to_ninja_flag___1 best12. ;
	format days_prior_to_ninja_flag___2 best12. ;
	format days_prior_to_ninja_flag___3 best12. ;
	format days_prior_to_ninja_flag___4 best12. ;
	format days_prior_to_ninja_flag___5 best12. ;
	format days_prior_to_ninja_flag___6 best12. ;
	format days_prior_to_ninja_flag_2___1 best12. ;
	format days_prior_to_ninja_flag_2___2 best12. ;
	format days_prior_to_ninja_flag_2___3 best12. ;
	format days_prior_to_ninja_flag_2___4 best12. ;
	format days_prior_to_ninja_flag_2___5 best12. ;
	format days_prior_to_ninja_flag_2___6 best12. ;
	format days_prior_to_ninja_flag_3___1 best12. ;
	format days_prior_to_ninja_flag_3___2 best12. ;
	format days_prior_to_ninja_flag_3___3 best12. ;
	format days_prior_to_ninja_flag_3___4 best12. ;
	format days_prior_to_ninja_flag_3___5 best12. ;
	format days_prior_to_ninja_flag_3___6 best12. ;
	format days_prior_to_ninja_flag_4___1 best12. ;
	format days_prior_to_ninja_flag_4___2 best12. ;
	format days_prior_to_ninja_flag_4___3 best12. ;
	format days_prior_to_ninja_flag_4___4 best12. ;
	format days_prior_to_ninja_flag_4___5 best12. ;
	format days_prior_to_ninja_flag_4___6 best12. ;
	format days_prior_to_ninja_flag_6___1 best12. ;
	format days_prior_to_ninja_flag_6___2 best12. ;
	format days_prior_to_ninja_flag_6___3 best12. ;
	format days_prior_to_ninja_flag_6___4 best12. ;
	format days_prior_to_ninja_flag_6___5 best12. ;
	format days_prior_to_ninja_flag_6___6 best12. ;
	format days_prior_to_ninja_flag_5___1 best12. ;
	format days_prior_to_ninja_flag_5___2 best12. ;
	format days_prior_to_ninja_flag_5___3 best12. ;
	format days_prior_to_ninja_flag_5___4 best12. ;
	format days_prior_to_ninja_flag_5___5 best12. ;
	format days_prior_to_ninja_flag_5___6 best12. ;
	format days_prior_to_ninja_flag_7___1 best12. ;
	format days_prior_to_ninja_flag_7___2 best12. ;
	format days_prior_to_ninja_flag_7___3 best12. ;
	format days_prior_to_ninja_flag_7___4 best12. ;
	format days_prior_to_ninja_flag_7___5 best12. ;
	format days_prior_to_ninja_flag_7___6 best12. ;
	format days_prior_to_ninja_flag_8___1 best12. ;
	format days_prior_to_ninja_flag_8___2 best12. ;
	format days_prior_to_ninja_flag_8___3 best12. ;
	format days_prior_to_ninja_flag_8___4 best12. ;
	format days_prior_to_ninja_flag_8___5 best12. ;
	format days_prior_to_ninja_flag_8___6 best12. ;
	format days_prior_to_ninja_flag_9___1 best12. ;
	format days_prior_to_ninja_flag_9___2 best12. ;
	format days_prior_to_ninja_flag_9___3 best12. ;
	format days_prior_to_ninja_flag_9___4 best12. ;
	format days_prior_to_ninja_flag_9___5 best12. ;
	format days_prior_to_ninja_flag_9___6 best12. ;
	format days_prior_to_ninja__v_0 best12. ;
	format days_prior_to_ninja__v_1 best12. ;
	format days_prior_to_ninja__v_2 best12. ;
	format days_prior_to_ninja__v_3 best12. ;
	format days_prior_to_ninja__v_4 best12. ;
	format days_prior_to_ninja__v_5 best12. ;
	format days_prior_to_ninja__v_6 best12. ;
	format days_prior_to_ninja__v_7 best12. ;
	format days_prior_to_ninja__v_8 best12. ;
	format days_prior_to_ninja__v_9 best12. ;
	format days_prior_to_ninja__v_10 best12. ;
	format days_prior_to_ninja__v_11 best12. ;
	format renal_angina_index_c_v_12 best12. ;
	format ntmx_3_days_prior___48 best12. ;
	format ntmx_3_days_prior___12 best12. ;
	format ntmx_3_days_prior___49 best12. ;
	format ntmx_3_days_prior___13 best12. ;
	format ntmx_3_days_prior___50 best12. ;
	format ntmx_3_days_prior___14 best12. ;
	format ntmx_3_days_prior___15 best12. ;
	format ntmx_3_days_prior___51 best12. ;
	format ntmx_3_days_prior___44 best12. ;
	format ntmx_3_days_prior___16 best12. ;
	format ntmx_3_days_prior___17 best12. ;
	format ntmx_3_days_prior___18 best12. ;
	format ntmx_3_days_prior___19 best12. ;
	format ntmx_3_days_prior___20 best12. ;
	format ntmx_3_days_prior___21 best12. ;
	format ntmx_3_days_prior___22 best12. ;
	format ntmx_3_days_prior___52 best12. ;
	format ntmx_3_days_prior___42 best12. ;
	format ntmx_3_days_prior___53 best12. ;
	format ntmx_3_days_prior___23 best12. ;
	format ntmx_3_days_prior___24 best12. ;
	format ntmx_3_days_prior___25 best12. ;
	format ntmx_3_days_prior___26 best12. ;
	format ntmx_3_days_prior___27 best12. ;
	format ntmx_3_days_prior___47 best12. ;
	format ntmx_3_days_prior___30 best12. ;
	format ntmx_3_days_prior___28 best12. ;
	format ntmx_3_days_prior___54 best12. ;
	format ntmx_3_days_prior___43 best12. ;
	format ntmx_3_days_prior___29 best12. ;
	format ntmx_3_days_prior___55 best12. ;
	format ntmx_3_days_prior___56 best12. ;
	format ntmx_3_days_prior___31 best12. ;
	format ntmx_3_days_prior___57 best12. ;
	format ntmx_3_days_prior___32 best12. ;
	format ntmx_3_days_prior___58 best12. ;
	format ntmx_3_days_prior___59 best12. ;
	format ntmx_3_days_prior___60 best12. ;
	format ntmx_3_days_prior___33 best12. ;
	format ntmx_3_days_prior___61 best12. ;
	format ntmx_3_days_prior___62 best12. ;
	format ntmx_3_days_prior___34 best12. ;
	format ntmx_3_days_prior___35 best12. ;
	format ntmx_3_days_prior___36 best12. ;
	format ntmx_3_days_prior___63 best12. ;
	format ntmx_3_days_prior___37 best12. ;
	format ntmx_3_days_prior___38 best12. ;
	format ntmx_3_days_prior___39 best12. ;
	format ntmx_3_days_prior___40 best12. ;
	format ntmx_3_days_prior___45 best12. ;
	format ntmx_3_days_prior___46 best12. ;
	format ntmx_3_days_prior___64 best12. ;
	format ntmx_3_days_prior___65 best12. ;
	format ntmx_3_days_prior___41 best12. ;
	format ntmx_2_days_prior___48 best12. ;
	format ntmx_2_days_prior___12 best12. ;
	format ntmx_2_days_prior___49 best12. ;
	format ntmx_2_days_prior___13 best12. ;
	format ntmx_2_days_prior___50 best12. ;
	format ntmx_2_days_prior___14 best12. ;
	format ntmx_2_days_prior___15 best12. ;
	format ntmx_2_days_prior___51 best12. ;
	format ntmx_2_days_prior___44 best12. ;
	format ntmx_2_days_prior___16 best12. ;
	format ntmx_2_days_prior___17 best12. ;
	format ntmx_2_days_prior___18 best12. ;
	format ntmx_2_days_prior___19 best12. ;
	format ntmx_2_days_prior___20 best12. ;
	format ntmx_2_days_prior___21 best12. ;
	format ntmx_2_days_prior___22 best12. ;
	format ntmx_2_days_prior___52 best12. ;
	format ntmx_2_days_prior___42 best12. ;
	format ntmx_2_days_prior___53 best12. ;
	format ntmx_2_days_prior___23 best12. ;
	format ntmx_2_days_prior___24 best12. ;
	format ntmx_2_days_prior___25 best12. ;
	format ntmx_2_days_prior___26 best12. ;
	format ntmx_2_days_prior___27 best12. ;
	format ntmx_2_days_prior___47 best12. ;
	format ntmx_2_days_prior___30 best12. ;
	format ntmx_2_days_prior___28 best12. ;
	format ntmx_2_days_prior___54 best12. ;
	format ntmx_2_days_prior___43 best12. ;
	format ntmx_2_days_prior___29 best12. ;
	format ntmx_2_days_prior___55 best12. ;
	format ntmx_2_days_prior___56 best12. ;
	format ntmx_2_days_prior___31 best12. ;
	format ntmx_2_days_prior___57 best12. ;
	format ntmx_2_days_prior___32 best12. ;
	format ntmx_2_days_prior___58 best12. ;
	format ntmx_2_days_prior___59 best12. ;
	format ntmx_2_days_prior___60 best12. ;
	format ntmx_2_days_prior___33 best12. ;
	format ntmx_2_days_prior___61 best12. ;
	format ntmx_2_days_prior___62 best12. ;
	format ntmx_2_days_prior___34 best12. ;
	format ntmx_2_days_prior___35 best12. ;
	format ntmx_2_days_prior___36 best12. ;
	format ntmx_2_days_prior___63 best12. ;
	format ntmx_2_days_prior___37 best12. ;
	format ntmx_2_days_prior___38 best12. ;
	format ntmx_2_days_prior___39 best12. ;
	format ntmx_2_days_prior___40 best12. ;
	format ntmx_2_days_prior___45 best12. ;
	format ntmx_2_days_prior___46 best12. ;
	format ntmx_2_days_prior___64 best12. ;
	format ntmx_2_days_prior___65 best12. ;
	format ntmx_2_days_prior___41 best12. ;
	format ntmx_1_days_prior___48 best12. ;
	format ntmx_1_days_prior___12 best12. ;
	format ntmx_1_days_prior___49 best12. ;
	format ntmx_1_days_prior___13 best12. ;
	format ntmx_1_days_prior___50 best12. ;
	format ntmx_1_days_prior___14 best12. ;
	format ntmx_1_days_prior___15 best12. ;
	format ntmx_1_days_prior___51 best12. ;
	format ntmx_1_days_prior___44 best12. ;
	format ntmx_1_days_prior___16 best12. ;
	format ntmx_1_days_prior___17 best12. ;
	format ntmx_1_days_prior___18 best12. ;
	format ntmx_1_days_prior___19 best12. ;
	format ntmx_1_days_prior___20 best12. ;
	format ntmx_1_days_prior___21 best12. ;
	format ntmx_1_days_prior___22 best12. ;
	format ntmx_1_days_prior___52 best12. ;
	format ntmx_1_days_prior___42 best12. ;
	format ntmx_1_days_prior___53 best12. ;
	format ntmx_1_days_prior___23 best12. ;
	format ntmx_1_days_prior___24 best12. ;
	format ntmx_1_days_prior___25 best12. ;
	format ntmx_1_days_prior___26 best12. ;
	format ntmx_1_days_prior___27 best12. ;
	format ntmx_1_days_prior___47 best12. ;
	format ntmx_1_days_prior___30 best12. ;
	format ntmx_1_days_prior___28 best12. ;
	format ntmx_1_days_prior___54 best12. ;
	format ntmx_1_days_prior___43 best12. ;
	format ntmx_1_days_prior___29 best12. ;
	format ntmx_1_days_prior___55 best12. ;
	format ntmx_1_days_prior___56 best12. ;
	format ntmx_1_days_prior___31 best12. ;
	format ntmx_1_days_prior___57 best12. ;
	format ntmx_1_days_prior___32 best12. ;
	format ntmx_1_days_prior___58 best12. ;
	format ntmx_1_days_prior___59 best12. ;
	format ntmx_1_days_prior___60 best12. ;
	format ntmx_1_days_prior___33 best12. ;
	format ntmx_1_days_prior___61 best12. ;
	format ntmx_1_days_prior___62 best12. ;
	format ntmx_1_days_prior___34 best12. ;
	format ntmx_1_days_prior___35 best12. ;
	format ntmx_1_days_prior___36 best12. ;
	format ntmx_1_days_prior___63 best12. ;
	format ntmx_1_days_prior___37 best12. ;
	format ntmx_1_days_prior___38 best12. ;
	format ntmx_1_days_prior___39 best12. ;
	format ntmx_1_days_prior___40 best12. ;
	format ntmx_1_days_prior___45 best12. ;
	format ntmx_1_days_prior___46 best12. ;
	format ntmx_1_days_prior___64 best12. ;
	format ntmx_1_days_prior___65 best12. ;
	format ntmx_1_days_prior___41 best12. ;
	format ntmx_day_of___48 best12. ;
	format ntmx_day_of___12 best12. ;
	format ntmx_day_of___49 best12. ;
	format ntmx_day_of___13 best12. ;
	format ntmx_day_of___50 best12. ;
	format ntmx_day_of___14 best12. ;
	format ntmx_day_of___15 best12. ;
	format ntmx_day_of___51 best12. ;
	format ntmx_day_of___44 best12. ;
	format ntmx_day_of___16 best12. ;
	format ntmx_day_of___17 best12. ;
	format ntmx_day_of___18 best12. ;
	format ntmx_day_of___19 best12. ;
	format ntmx_day_of___20 best12. ;
	format ntmx_day_of___21 best12. ;
	format ntmx_day_of___22 best12. ;
	format ntmx_day_of___52 best12. ;
	format ntmx_day_of___42 best12. ;
	format ntmx_day_of___53 best12. ;
	format ntmx_day_of___23 best12. ;
	format ntmx_day_of___24 best12. ;
	format ntmx_day_of___25 best12. ;
	format ntmx_day_of___26 best12. ;
	format ntmx_day_of___27 best12. ;
	format ntmx_day_of___47 best12. ;
	format ntmx_day_of___30 best12. ;
	format ntmx_day_of___28 best12. ;
	format ntmx_day_of___54 best12. ;
	format ntmx_day_of___43 best12. ;
	format ntmx_day_of___29 best12. ;
	format ntmx_day_of___55 best12. ;
	format ntmx_day_of___56 best12. ;
	format ntmx_day_of___31 best12. ;
	format ntmx_day_of___57 best12. ;
	format ntmx_day_of___32 best12. ;
	format ntmx_day_of___58 best12. ;
	format ntmx_day_of___59 best12. ;
	format ntmx_day_of___60 best12. ;
	format ntmx_day_of___33 best12. ;
	format ntmx_day_of___61 best12. ;
	format ntmx_day_of___62 best12. ;
	format ntmx_day_of___34 best12. ;
	format ntmx_day_of___35 best12. ;
	format ntmx_day_of___36 best12. ;
	format ntmx_day_of___63 best12. ;
	format ntmx_day_of___37 best12. ;
	format ntmx_day_of___38 best12. ;
	format ntmx_day_of___39 best12. ;
	format ntmx_day_of___40 best12. ;
	format ntmx_day_of___45 best12. ;
	format ntmx_day_of___46 best12. ;
	format ntmx_day_of___64 best12. ;
	format ntmx_day_of___65 best12. ;
	format ntmx_day_of___41 best12. ;
	format ntmx_day_of_1___48 best12. ;
	format ntmx_day_of_1___12 best12. ;
	format ntmx_day_of_1___49 best12. ;
	format ntmx_day_of_1___13 best12. ;
	format ntmx_day_of_1___50 best12. ;
	format ntmx_day_of_1___14 best12. ;
	format ntmx_day_of_1___15 best12. ;
	format ntmx_day_of_1___51 best12. ;
	format ntmx_day_of_1___44 best12. ;
	format ntmx_day_of_1___16 best12. ;
	format ntmx_day_of_1___17 best12. ;
	format ntmx_day_of_1___18 best12. ;
	format ntmx_day_of_1___19 best12. ;
	format ntmx_day_of_1___20 best12. ;
	format ntmx_day_of_1___21 best12. ;
	format ntmx_day_of_1___22 best12. ;
	format ntmx_day_of_1___52 best12. ;
	format ntmx_day_of_1___42 best12. ;
	format ntmx_day_of_1___53 best12. ;
	format ntmx_day_of_1___23 best12. ;
	format ntmx_day_of_1___24 best12. ;
	format ntmx_day_of_1___25 best12. ;
	format ntmx_day_of_1___26 best12. ;
	format ntmx_day_of_1___27 best12. ;
	format ntmx_day_of_1___47 best12. ;
	format ntmx_day_of_1___30 best12. ;
	format ntmx_day_of_1___28 best12. ;
	format ntmx_day_of_1___54 best12. ;
	format ntmx_day_of_1___43 best12. ;
	format ntmx_day_of_1___29 best12. ;
	format ntmx_day_of_1___55 best12. ;
	format ntmx_day_of_1___56 best12. ;
	format ntmx_day_of_1___31 best12. ;
	format ntmx_day_of_1___57 best12. ;
	format ntmx_day_of_1___32 best12. ;
	format ntmx_day_of_1___58 best12. ;
	format ntmx_day_of_1___59 best12. ;
	format ntmx_day_of_1___60 best12. ;
	format ntmx_day_of_1___33 best12. ;
	format ntmx_day_of_1___61 best12. ;
	format ntmx_day_of_1___62 best12. ;
	format ntmx_day_of_1___34 best12. ;
	format ntmx_day_of_1___35 best12. ;
	format ntmx_day_of_1___36 best12. ;
	format ntmx_day_of_1___63 best12. ;
	format ntmx_day_of_1___37 best12. ;
	format ntmx_day_of_1___38 best12. ;
	format ntmx_day_of_1___39 best12. ;
	format ntmx_day_of_1___40 best12. ;
	format ntmx_day_of_1___45 best12. ;
	format ntmx_day_of_1___46 best12. ;
	format ntmx_day_of_1___64 best12. ;
	format ntmx_day_of_1___65 best12. ;
	format ntmx_day_of_1___41 best12. ;
	format ntmx_day_of_2___48 best12. ;
	format ntmx_day_of_2___12 best12. ;
	format ntmx_day_of_2___49 best12. ;
	format ntmx_day_of_2___13 best12. ;
	format ntmx_day_of_2___50 best12. ;
	format ntmx_day_of_2___14 best12. ;
	format ntmx_day_of_2___15 best12. ;
	format ntmx_day_of_2___51 best12. ;
	format ntmx_day_of_2___44 best12. ;
	format ntmx_day_of_2___16 best12. ;
	format ntmx_day_of_2___17 best12. ;
	format ntmx_day_of_2___18 best12. ;
	format ntmx_day_of_2___19 best12. ;
	format ntmx_day_of_2___20 best12. ;
	format ntmx_day_of_2___21 best12. ;
	format ntmx_day_of_2___22 best12. ;
	format ntmx_day_of_2___52 best12. ;
	format ntmx_day_of_2___42 best12. ;
	format ntmx_day_of_2___53 best12. ;
	format ntmx_day_of_2___23 best12. ;
	format ntmx_day_of_2___24 best12. ;
	format ntmx_day_of_2___25 best12. ;
	format ntmx_day_of_2___26 best12. ;
	format ntmx_day_of_2___27 best12. ;
	format ntmx_day_of_2___47 best12. ;
	format ntmx_day_of_2___30 best12. ;
	format ntmx_day_of_2___28 best12. ;
	format ntmx_day_of_2___54 best12. ;
	format ntmx_day_of_2___43 best12. ;
	format ntmx_day_of_2___29 best12. ;
	format ntmx_day_of_2___55 best12. ;
	format ntmx_day_of_2___56 best12. ;
	format ntmx_day_of_2___31 best12. ;
	format ntmx_day_of_2___57 best12. ;
	format ntmx_day_of_2___32 best12. ;
	format ntmx_day_of_2___58 best12. ;
	format ntmx_day_of_2___59 best12. ;
	format ntmx_day_of_2___60 best12. ;
	format ntmx_day_of_2___33 best12. ;
	format ntmx_day_of_2___61 best12. ;
	format ntmx_day_of_2___62 best12. ;
	format ntmx_day_of_2___34 best12. ;
	format ntmx_day_of_2___35 best12. ;
	format ntmx_day_of_2___36 best12. ;
	format ntmx_day_of_2___63 best12. ;
	format ntmx_day_of_2___37 best12. ;
	format ntmx_day_of_2___38 best12. ;
	format ntmx_day_of_2___39 best12. ;
	format ntmx_day_of_2___40 best12. ;
	format ntmx_day_of_2___45 best12. ;
	format ntmx_day_of_2___46 best12. ;
	format ntmx_day_of_2___64 best12. ;
	format ntmx_day_of_2___65 best12. ;
	format ntmx_day_of_2___41 best12. ;
	format ntmx_day_of_3___48 best12. ;
	format ntmx_day_of_3___12 best12. ;
	format ntmx_day_of_3___49 best12. ;
	format ntmx_day_of_3___13 best12. ;
	format ntmx_day_of_3___50 best12. ;
	format ntmx_day_of_3___14 best12. ;
	format ntmx_day_of_3___15 best12. ;
	format ntmx_day_of_3___51 best12. ;
	format ntmx_day_of_3___44 best12. ;
	format ntmx_day_of_3___16 best12. ;
	format ntmx_day_of_3___17 best12. ;
	format ntmx_day_of_3___18 best12. ;
	format ntmx_day_of_3___19 best12. ;
	format ntmx_day_of_3___20 best12. ;
	format ntmx_day_of_3___21 best12. ;
	format ntmx_day_of_3___22 best12. ;
	format ntmx_day_of_3___52 best12. ;
	format ntmx_day_of_3___42 best12. ;
	format ntmx_day_of_3___53 best12. ;
	format ntmx_day_of_3___23 best12. ;
	format ntmx_day_of_3___24 best12. ;
	format ntmx_day_of_3___25 best12. ;
	format ntmx_day_of_3___26 best12. ;
	format ntmx_day_of_3___27 best12. ;
	format ntmx_day_of_3___47 best12. ;
	format ntmx_day_of_3___30 best12. ;
	format ntmx_day_of_3___28 best12. ;
	format ntmx_day_of_3___54 best12. ;
	format ntmx_day_of_3___43 best12. ;
	format ntmx_day_of_3___29 best12. ;
	format ntmx_day_of_3___55 best12. ;
	format ntmx_day_of_3___56 best12. ;
	format ntmx_day_of_3___31 best12. ;
	format ntmx_day_of_3___57 best12. ;
	format ntmx_day_of_3___32 best12. ;
	format ntmx_day_of_3___58 best12. ;
	format ntmx_day_of_3___59 best12. ;
	format ntmx_day_of_3___60 best12. ;
	format ntmx_day_of_3___33 best12. ;
	format ntmx_day_of_3___61 best12. ;
	format ntmx_day_of_3___62 best12. ;
	format ntmx_day_of_3___34 best12. ;
	format ntmx_day_of_3___35 best12. ;
	format ntmx_day_of_3___36 best12. ;
	format ntmx_day_of_3___63 best12. ;
	format ntmx_day_of_3___37 best12. ;
	format ntmx_day_of_3___38 best12. ;
	format ntmx_day_of_3___39 best12. ;
	format ntmx_day_of_3___40 best12. ;
	format ntmx_day_of_3___45 best12. ;
	format ntmx_day_of_3___46 best12. ;
	format ntmx_day_of_3___64 best12. ;
	format ntmx_day_of_3___65 best12. ;
	format ntmx_day_of_3___41 best12. ;
	format ntmx_day_of_4___48 best12. ;
	format ntmx_day_of_4___12 best12. ;
	format ntmx_day_of_4___49 best12. ;
	format ntmx_day_of_4___13 best12. ;
	format ntmx_day_of_4___50 best12. ;
	format ntmx_day_of_4___14 best12. ;
	format ntmx_day_of_4___15 best12. ;
	format ntmx_day_of_4___51 best12. ;
	format ntmx_day_of_4___44 best12. ;
	format ntmx_day_of_4___16 best12. ;
	format ntmx_day_of_4___17 best12. ;
	format ntmx_day_of_4___18 best12. ;
	format ntmx_day_of_4___19 best12. ;
	format ntmx_day_of_4___20 best12. ;
	format ntmx_day_of_4___21 best12. ;
	format ntmx_day_of_4___22 best12. ;
	format ntmx_day_of_4___52 best12. ;
	format ntmx_day_of_4___42 best12. ;
	format ntmx_day_of_4___53 best12. ;
	format ntmx_day_of_4___23 best12. ;
	format ntmx_day_of_4___24 best12. ;
	format ntmx_day_of_4___25 best12. ;
	format ntmx_day_of_4___26 best12. ;
	format ntmx_day_of_4___27 best12. ;
	format ntmx_day_of_4___47 best12. ;
	format ntmx_day_of_4___30 best12. ;
	format ntmx_day_of_4___28 best12. ;
	format ntmx_day_of_4___54 best12. ;
	format ntmx_day_of_4___43 best12. ;
	format ntmx_day_of_4___29 best12. ;
	format ntmx_day_of_4___55 best12. ;
	format ntmx_day_of_4___56 best12. ;
	format ntmx_day_of_4___31 best12. ;
	format ntmx_day_of_4___57 best12. ;
	format ntmx_day_of_4___32 best12. ;
	format ntmx_day_of_4___58 best12. ;
	format ntmx_day_of_4___59 best12. ;
	format ntmx_day_of_4___60 best12. ;
	format ntmx_day_of_4___33 best12. ;
	format ntmx_day_of_4___61 best12. ;
	format ntmx_day_of_4___62 best12. ;
	format ntmx_day_of_4___34 best12. ;
	format ntmx_day_of_4___35 best12. ;
	format ntmx_day_of_4___36 best12. ;
	format ntmx_day_of_4___63 best12. ;
	format ntmx_day_of_4___37 best12. ;
	format ntmx_day_of_4___38 best12. ;
	format ntmx_day_of_4___39 best12. ;
	format ntmx_day_of_4___40 best12. ;
	format ntmx_day_of_4___45 best12. ;
	format ntmx_day_of_4___46 best12. ;
	format ntmx_day_of_4___64 best12. ;
	format ntmx_day_of_4___65 best12. ;
	format ntmx_day_of_4___41 best12. ;
	format ntmx_day_of_5___48 best12. ;
	format ntmx_day_of_5___12 best12. ;
	format ntmx_day_of_5___49 best12. ;
	format ntmx_day_of_5___13 best12. ;
	format ntmx_day_of_5___50 best12. ;
	format ntmx_day_of_5___14 best12. ;
	format ntmx_day_of_5___15 best12. ;
	format ntmx_day_of_5___51 best12. ;
	format ntmx_day_of_5___44 best12. ;
	format ntmx_day_of_5___16 best12. ;
	format ntmx_day_of_5___17 best12. ;
	format ntmx_day_of_5___18 best12. ;
	format ntmx_day_of_5___19 best12. ;
	format ntmx_day_of_5___20 best12. ;
	format ntmx_day_of_5___21 best12. ;
	format ntmx_day_of_5___22 best12. ;
	format ntmx_day_of_5___52 best12. ;
	format ntmx_day_of_5___42 best12. ;
	format ntmx_day_of_5___53 best12. ;
	format ntmx_day_of_5___23 best12. ;
	format ntmx_day_of_5___24 best12. ;
	format ntmx_day_of_5___25 best12. ;
	format ntmx_day_of_5___26 best12. ;
	format ntmx_day_of_5___27 best12. ;
	format ntmx_day_of_5___47 best12. ;
	format ntmx_day_of_5___30 best12. ;
	format ntmx_day_of_5___28 best12. ;
	format ntmx_day_of_5___54 best12. ;
	format ntmx_day_of_5___43 best12. ;
	format ntmx_day_of_5___29 best12. ;
	format ntmx_day_of_5___55 best12. ;
	format ntmx_day_of_5___56 best12. ;
	format ntmx_day_of_5___31 best12. ;
	format ntmx_day_of_5___57 best12. ;
	format ntmx_day_of_5___32 best12. ;
	format ntmx_day_of_5___58 best12. ;
	format ntmx_day_of_5___59 best12. ;
	format ntmx_day_of_5___60 best12. ;
	format ntmx_day_of_5___33 best12. ;
	format ntmx_day_of_5___61 best12. ;
	format ntmx_day_of_5___62 best12. ;
	format ntmx_day_of_5___34 best12. ;
	format ntmx_day_of_5___35 best12. ;
	format ntmx_day_of_5___36 best12. ;
	format ntmx_day_of_5___63 best12. ;
	format ntmx_day_of_5___37 best12. ;
	format ntmx_day_of_5___38 best12. ;
	format ntmx_day_of_5___39 best12. ;
	format ntmx_day_of_5___40 best12. ;
	format ntmx_day_of_5___45 best12. ;
	format ntmx_day_of_5___46 best12. ;
	format ntmx_day_of_5___64 best12. ;
	format ntmx_day_of_5___65 best12. ;
	format ntmx_day_of_5___41 best12. ;
	format ntmx_day_of_6___48 best12. ;
	format ntmx_day_of_6___12 best12. ;
	format ntmx_day_of_6___49 best12. ;
	format ntmx_day_of_6___13 best12. ;
	format ntmx_day_of_6___50 best12. ;
	format ntmx_day_of_6___14 best12. ;
	format ntmx_day_of_6___15 best12. ;
	format ntmx_day_of_6___51 best12. ;
	format ntmx_day_of_6___44 best12. ;
	format ntmx_day_of_6___16 best12. ;
	format ntmx_day_of_6___17 best12. ;
	format ntmx_day_of_6___18 best12. ;
	format ntmx_day_of_6___19 best12. ;
	format ntmx_day_of_6___20 best12. ;
	format ntmx_day_of_6___21 best12. ;
	format ntmx_day_of_6___22 best12. ;
	format ntmx_day_of_6___52 best12. ;
	format ntmx_day_of_6___42 best12. ;
	format ntmx_day_of_6___53 best12. ;
	format ntmx_day_of_6___23 best12. ;
	format ntmx_day_of_6___24 best12. ;
	format ntmx_day_of_6___25 best12. ;
	format ntmx_day_of_6___26 best12. ;
	format ntmx_day_of_6___27 best12. ;
	format ntmx_day_of_6___47 best12. ;
	format ntmx_day_of_6___30 best12. ;
	format ntmx_day_of_6___28 best12. ;
	format ntmx_day_of_6___54 best12. ;
	format ntmx_day_of_6___43 best12. ;
	format ntmx_day_of_6___29 best12. ;
	format ntmx_day_of_6___55 best12. ;
	format ntmx_day_of_6___56 best12. ;
	format ntmx_day_of_6___31 best12. ;
	format ntmx_day_of_6___57 best12. ;
	format ntmx_day_of_6___32 best12. ;
	format ntmx_day_of_6___58 best12. ;
	format ntmx_day_of_6___59 best12. ;
	format ntmx_day_of_6___60 best12. ;
	format ntmx_day_of_6___33 best12. ;
	format ntmx_day_of_6___61 best12. ;
	format ntmx_day_of_6___62 best12. ;
	format ntmx_day_of_6___34 best12. ;
	format ntmx_day_of_6___35 best12. ;
	format ntmx_day_of_6___36 best12. ;
	format ntmx_day_of_6___63 best12. ;
	format ntmx_day_of_6___37 best12. ;
	format ntmx_day_of_6___38 best12. ;
	format ntmx_day_of_6___39 best12. ;
	format ntmx_day_of_6___40 best12. ;
	format ntmx_day_of_6___45 best12. ;
	format ntmx_day_of_6___46 best12. ;
	format ntmx_day_of_6___64 best12. ;
	format ntmx_day_of_6___65 best12. ;
	format ntmx_day_of_6___41 best12. ;
	format ntmx_day_of_7___48 best12. ;
	format ntmx_day_of_7___12 best12. ;
	format ntmx_day_of_7___49 best12. ;
	format ntmx_day_of_7___13 best12. ;
	format ntmx_day_of_7___50 best12. ;
	format ntmx_day_of_7___14 best12. ;
	format ntmx_day_of_7___15 best12. ;
	format ntmx_day_of_7___51 best12. ;
	format ntmx_day_of_7___44 best12. ;
	format ntmx_day_of_7___16 best12. ;
	format ntmx_day_of_7___17 best12. ;
	format ntmx_day_of_7___18 best12. ;
	format ntmx_day_of_7___19 best12. ;
	format ntmx_day_of_7___20 best12. ;
	format ntmx_day_of_7___21 best12. ;
	format ntmx_day_of_7___22 best12. ;
	format ntmx_day_of_7___52 best12. ;
	format ntmx_day_of_7___42 best12. ;
	format ntmx_day_of_7___53 best12. ;
	format ntmx_day_of_7___23 best12. ;
	format ntmx_day_of_7___24 best12. ;
	format ntmx_day_of_7___25 best12. ;
	format ntmx_day_of_7___26 best12. ;
	format ntmx_day_of_7___27 best12. ;
	format ntmx_day_of_7___47 best12. ;
	format ntmx_day_of_7___30 best12. ;
	format ntmx_day_of_7___28 best12. ;
	format ntmx_day_of_7___54 best12. ;
	format ntmx_day_of_7___43 best12. ;
	format ntmx_day_of_7___29 best12. ;
	format ntmx_day_of_7___55 best12. ;
	format ntmx_day_of_7___56 best12. ;
	format ntmx_day_of_7___31 best12. ;
	format ntmx_day_of_7___57 best12. ;
	format ntmx_day_of_7___32 best12. ;
	format ntmx_day_of_7___58 best12. ;
	format ntmx_day_of_7___59 best12. ;
	format ntmx_day_of_7___60 best12. ;
	format ntmx_day_of_7___33 best12. ;
	format ntmx_day_of_7___61 best12. ;
	format ntmx_day_of_7___62 best12. ;
	format ntmx_day_of_7___34 best12. ;
	format ntmx_day_of_7___35 best12. ;
	format ntmx_day_of_7___36 best12. ;
	format ntmx_day_of_7___63 best12. ;
	format ntmx_day_of_7___37 best12. ;
	format ntmx_day_of_7___38 best12. ;
	format ntmx_day_of_7___39 best12. ;
	format ntmx_day_of_7___40 best12. ;
	format ntmx_day_of_7___45 best12. ;
	format ntmx_day_of_7___46 best12. ;
	format ntmx_day_of_7___64 best12. ;
	format ntmx_day_of_7___65 best12. ;
	format ntmx_day_of_7___41 best12. ;
	format supratherapeutic_vancomyci best12. ;
	format date_of_vanc_level yymmdd10. ;
	format gentamicin_trough_2 best12. ;
	format date_of_supratherapeutic_g yymmdd10. ;
	format tacrolimus_level_15 best12. ;
	format date_of_supratherapeutic_t yymmdd10. ;
	format cyclosporine_level_300 best12. ;
	format date_of_supratherapeutic_c yymmdd10. ;
	format nephrotoxic_exposures_complete best12. ;
	format age $500. ;
	format gender_assigned_at_birth best12. ;
	format admission_diagnosis $500. ;
	format admission_location_and_pri $500. ;
	format date_of_hospital_admission yymmdd10. ;
	format date_of_icu_admission_for yymmdd10. ;
	format history_of_renal_issues___1 best12. ;
	format history_of_renal_issues___2 best12. ;
	format history_of_renal_issues___3 best12. ;
	format history_of_renal_issues___4 best12. ;
	format other_renal_issue $500. ;
	format code_event_up_to_3d_prior___1 best12. ;
	format code_event_up_to_3d_prior___2 best12. ;
	format ecmo_during_hospitalizatio best12. ;
	format first_day_ecmo yymmdd10. ;
	format last_day_of_ecmo yymmdd10. ;
	format or_procedure_up_to_3_days $500. ;
	format or_estimated_blood_loss_in $500. ;
	format demographics_complete best12. ;
	format ungal_level $500. ;
	format scr_day_3 $500. ;
	format scr_day_2 $500. ;
	format scr_day_1 $500. ;
	format scr_day_of_ninja_flag $500. ;
	format scr_day_plus1 $500. ;
	format scr_day2 $500. ;
	format scr_day3 $500. ;
	format scr_day4 $500. ;
	format scr_day5 $500. ;
	format scr_day6 $500. ;
	format scr_day7 $500. ;
	format lab_data_complete best12. ;
	format date_of_icu_discharge yymmdd10. ;
	format date_of_hospital_discharge yymmdd10. ;
	format date_of_death yymmdd10. ;
	format date_of_first_dialysis_tre yymmdd10. ;
	format last_date_of_dialysis_in_h yymmdd10. ;
	format dialysis_needed_after_hosp best12. ;
	format indication_for_dialysis___1 best12. ;
	format indication_for_dialysis___2 best12. ;
	format indication_for_dialysis___3 best12. ;
	format indication_for_dialysis___4 best12. ;
	format indication_for_dialysis___5 best12. ;
	format outcomes_data_complete best12. ;
	format dopa_day_3 $500. ;
	format dopa_day_2 $500. ;
	format dopa_day_1 $500. ;
	format dopa_day_0 $500. ;
	format dopa_day_p1 $500. ;
	format dopa_day_p2 $500. ;
	format dopa_day_p3 $500. ;
	format dobut_day_3 $500. ;
	format dobut_day_2 $500. ;
	format dobut_day_1 $500. ;
	format dobut_day_0 $500. ;
	format dobut_day_p1 $500. ;
	format dobut_day_p2 $500. ;
	format dobut_day_p3 $500. ;
	format milrinone_day_3 $500. ;
	format milrinone_day_2 $500. ;
	format milrinone_day_1 $500. ;
	format milrinone_day_0 $500. ;
	format milrinone_day_p1 $500. ;
	format milrinone_day_p2 $500. ;
	format milrinone_day_p3 $500. ;
	format epi_day_3 $500. ;
	format epi_day_2 $500. ;
	format epi_day_1 $500. ;
	format epi_day_0 $500. ;
	format epi_day_p1 $500. ;
	format epi_day_p2 $500. ;
	format epi_day_p3 $500. ;
	format norepi_day_3 $500. ;
	format norepi_day_2 $500. ;
	format norepi_day_1 $500. ;
	format norepi_day_0 $500. ;
	format norepi_day_p1 $500. ;
	format norepi_day_p2 $500. ;
	format norepi_day_p3 $500. ;
	format vaso_day_3 $500. ;
	format vaso_day_2 $500. ;
	format vaso_day_1 $500. ;
	format vaso_day_0 $500. ;
	format vaso_day_p1 $500. ;
	format vaso_day_p2 $500. ;
	format vaso_day_p3 $500. ;
	format vis_information_complete best12. ;

input
	record_id $
	mrn $
	service_for_aki_episode $
	start_date_for_ntmx_encoun
	aki_episode_start_date
	ntmx_exposure_type $
	baseline_scr_lowest_docume $
	daily_scr_value_on_1st_day
	absolute_scr_difference_fr
	scr_difference_from_baseli
	initial_aki_stage $
	additional_comments $
	aki_episode_resolution_dat
	of_days_with_aki
	reason_for_closing_aki_epi $
	maximum_scr_during_this_ak
	date_of_maximum_scr_during
	highest_aki_stage_for_this $
	form_1_complete
	days_prior_to_ninja_flag___1
	days_prior_to_ninja_flag___2
	days_prior_to_ninja_flag___3
	days_prior_to_ninja_flag___4
	days_prior_to_ninja_flag___5
	days_prior_to_ninja_flag___6
	days_prior_to_ninja_flag_2___1
	days_prior_to_ninja_flag_2___2
	days_prior_to_ninja_flag_2___3
	days_prior_to_ninja_flag_2___4
	days_prior_to_ninja_flag_2___5
	days_prior_to_ninja_flag_2___6
	days_prior_to_ninja_flag_3___1
	days_prior_to_ninja_flag_3___2
	days_prior_to_ninja_flag_3___3
	days_prior_to_ninja_flag_3___4
	days_prior_to_ninja_flag_3___5
	days_prior_to_ninja_flag_3___6
	days_prior_to_ninja_flag_4___1
	days_prior_to_ninja_flag_4___2
	days_prior_to_ninja_flag_4___3
	days_prior_to_ninja_flag_4___4
	days_prior_to_ninja_flag_4___5
	days_prior_to_ninja_flag_4___6
	days_prior_to_ninja_flag_6___1
	days_prior_to_ninja_flag_6___2
	days_prior_to_ninja_flag_6___3
	days_prior_to_ninja_flag_6___4
	days_prior_to_ninja_flag_6___5
	days_prior_to_ninja_flag_6___6
	days_prior_to_ninja_flag_5___1
	days_prior_to_ninja_flag_5___2
	days_prior_to_ninja_flag_5___3
	days_prior_to_ninja_flag_5___4
	days_prior_to_ninja_flag_5___5
	days_prior_to_ninja_flag_5___6
	days_prior_to_ninja_flag_7___1
	days_prior_to_ninja_flag_7___2
	days_prior_to_ninja_flag_7___3
	days_prior_to_ninja_flag_7___4
	days_prior_to_ninja_flag_7___5
	days_prior_to_ninja_flag_7___6
	days_prior_to_ninja_flag_8___1
	days_prior_to_ninja_flag_8___2
	days_prior_to_ninja_flag_8___3
	days_prior_to_ninja_flag_8___4
	days_prior_to_ninja_flag_8___5
	days_prior_to_ninja_flag_8___6
	days_prior_to_ninja_flag_9___1
	days_prior_to_ninja_flag_9___2
	days_prior_to_ninja_flag_9___3
	days_prior_to_ninja_flag_9___4
	days_prior_to_ninja_flag_9___5
	days_prior_to_ninja_flag_9___6
	days_prior_to_ninja__v_0
	days_prior_to_ninja__v_1
	days_prior_to_ninja__v_2
	days_prior_to_ninja__v_3
	days_prior_to_ninja__v_4
	days_prior_to_ninja__v_5
	days_prior_to_ninja__v_6
	days_prior_to_ninja__v_7
	days_prior_to_ninja__v_8
	days_prior_to_ninja__v_9
	days_prior_to_ninja__v_10
	days_prior_to_ninja__v_11
	renal_angina_index_c_v_12
	ntmx_3_days_prior___48
	ntmx_3_days_prior___12
	ntmx_3_days_prior___49
	ntmx_3_days_prior___13
	ntmx_3_days_prior___50
	ntmx_3_days_prior___14
	ntmx_3_days_prior___15
	ntmx_3_days_prior___51
	ntmx_3_days_prior___44
	ntmx_3_days_prior___16
	ntmx_3_days_prior___17
	ntmx_3_days_prior___18
	ntmx_3_days_prior___19
	ntmx_3_days_prior___20
	ntmx_3_days_prior___21
	ntmx_3_days_prior___22
	ntmx_3_days_prior___52
	ntmx_3_days_prior___42
	ntmx_3_days_prior___53
	ntmx_3_days_prior___23
	ntmx_3_days_prior___24
	ntmx_3_days_prior___25
	ntmx_3_days_prior___26
	ntmx_3_days_prior___27
	ntmx_3_days_prior___47
	ntmx_3_days_prior___30
	ntmx_3_days_prior___28
	ntmx_3_days_prior___54
	ntmx_3_days_prior___43
	ntmx_3_days_prior___29
	ntmx_3_days_prior___55
	ntmx_3_days_prior___56
	ntmx_3_days_prior___31
	ntmx_3_days_prior___57
	ntmx_3_days_prior___32
	ntmx_3_days_prior___58
	ntmx_3_days_prior___59
	ntmx_3_days_prior___60
	ntmx_3_days_prior___33
	ntmx_3_days_prior___61
	ntmx_3_days_prior___62
	ntmx_3_days_prior___34
	ntmx_3_days_prior___35
	ntmx_3_days_prior___36
	ntmx_3_days_prior___63
	ntmx_3_days_prior___37
	ntmx_3_days_prior___38
	ntmx_3_days_prior___39
	ntmx_3_days_prior___40
	ntmx_3_days_prior___45
	ntmx_3_days_prior___46
	ntmx_3_days_prior___64
	ntmx_3_days_prior___65
	ntmx_3_days_prior___41
	ntmx_2_days_prior___48
	ntmx_2_days_prior___12
	ntmx_2_days_prior___49
	ntmx_2_days_prior___13
	ntmx_2_days_prior___50
	ntmx_2_days_prior___14
	ntmx_2_days_prior___15
	ntmx_2_days_prior___51
	ntmx_2_days_prior___44
	ntmx_2_days_prior___16
	ntmx_2_days_prior___17
	ntmx_2_days_prior___18
	ntmx_2_days_prior___19
	ntmx_2_days_prior___20
	ntmx_2_days_prior___21
	ntmx_2_days_prior___22
	ntmx_2_days_prior___52
	ntmx_2_days_prior___42
	ntmx_2_days_prior___53
	ntmx_2_days_prior___23
	ntmx_2_days_prior___24
	ntmx_2_days_prior___25
	ntmx_2_days_prior___26
	ntmx_2_days_prior___27
	ntmx_2_days_prior___47
	ntmx_2_days_prior___30
	ntmx_2_days_prior___28
	ntmx_2_days_prior___54
	ntmx_2_days_prior___43
	ntmx_2_days_prior___29
	ntmx_2_days_prior___55
	ntmx_2_days_prior___56
	ntmx_2_days_prior___31
	ntmx_2_days_prior___57
	ntmx_2_days_prior___32
	ntmx_2_days_prior___58
	ntmx_2_days_prior___59
	ntmx_2_days_prior___60
	ntmx_2_days_prior___33
	ntmx_2_days_prior___61
	ntmx_2_days_prior___62
	ntmx_2_days_prior___34
	ntmx_2_days_prior___35
	ntmx_2_days_prior___36
	ntmx_2_days_prior___63
	ntmx_2_days_prior___37
	ntmx_2_days_prior___38
	ntmx_2_days_prior___39
	ntmx_2_days_prior___40
	ntmx_2_days_prior___45
	ntmx_2_days_prior___46
	ntmx_2_days_prior___64
	ntmx_2_days_prior___65
	ntmx_2_days_prior___41
	ntmx_1_days_prior___48
	ntmx_1_days_prior___12
	ntmx_1_days_prior___49
	ntmx_1_days_prior___13
	ntmx_1_days_prior___50
	ntmx_1_days_prior___14
	ntmx_1_days_prior___15
	ntmx_1_days_prior___51
	ntmx_1_days_prior___44
	ntmx_1_days_prior___16
	ntmx_1_days_prior___17
	ntmx_1_days_prior___18
	ntmx_1_days_prior___19
	ntmx_1_days_prior___20
	ntmx_1_days_prior___21
	ntmx_1_days_prior___22
	ntmx_1_days_prior___52
	ntmx_1_days_prior___42
	ntmx_1_days_prior___53
	ntmx_1_days_prior___23
	ntmx_1_days_prior___24
	ntmx_1_days_prior___25
	ntmx_1_days_prior___26
	ntmx_1_days_prior___27
	ntmx_1_days_prior___47
	ntmx_1_days_prior___30
	ntmx_1_days_prior___28
	ntmx_1_days_prior___54
	ntmx_1_days_prior___43
	ntmx_1_days_prior___29
	ntmx_1_days_prior___55
	ntmx_1_days_prior___56
	ntmx_1_days_prior___31
	ntmx_1_days_prior___57
	ntmx_1_days_prior___32
	ntmx_1_days_prior___58
	ntmx_1_days_prior___59
	ntmx_1_days_prior___60
	ntmx_1_days_prior___33
	ntmx_1_days_prior___61
	ntmx_1_days_prior___62
	ntmx_1_days_prior___34
	ntmx_1_days_prior___35
	ntmx_1_days_prior___36
	ntmx_1_days_prior___63
	ntmx_1_days_prior___37
	ntmx_1_days_prior___38
	ntmx_1_days_prior___39
	ntmx_1_days_prior___40
	ntmx_1_days_prior___45
	ntmx_1_days_prior___46
	ntmx_1_days_prior___64
	ntmx_1_days_prior___65
	ntmx_1_days_prior___41
	ntmx_day_of___48
	ntmx_day_of___12
	ntmx_day_of___49
	ntmx_day_of___13
	ntmx_day_of___50
	ntmx_day_of___14
	ntmx_day_of___15
	ntmx_day_of___51
	ntmx_day_of___44
	ntmx_day_of___16
	ntmx_day_of___17
	ntmx_day_of___18
	ntmx_day_of___19
	ntmx_day_of___20
	ntmx_day_of___21
	ntmx_day_of___22
	ntmx_day_of___52
	ntmx_day_of___42
	ntmx_day_of___53
	ntmx_day_of___23
	ntmx_day_of___24
	ntmx_day_of___25
	ntmx_day_of___26
	ntmx_day_of___27
	ntmx_day_of___47
	ntmx_day_of___30
	ntmx_day_of___28
	ntmx_day_of___54
	ntmx_day_of___43
	ntmx_day_of___29
	ntmx_day_of___55
	ntmx_day_of___56
	ntmx_day_of___31
	ntmx_day_of___57
	ntmx_day_of___32
	ntmx_day_of___58
	ntmx_day_of___59
	ntmx_day_of___60
	ntmx_day_of___33
	ntmx_day_of___61
	ntmx_day_of___62
	ntmx_day_of___34
	ntmx_day_of___35
	ntmx_day_of___36
	ntmx_day_of___63
	ntmx_day_of___37
	ntmx_day_of___38
	ntmx_day_of___39
	ntmx_day_of___40
	ntmx_day_of___45
	ntmx_day_of___46
	ntmx_day_of___64
	ntmx_day_of___65
	ntmx_day_of___41
	ntmx_day_of_1___48
	ntmx_day_of_1___12
	ntmx_day_of_1___49
	ntmx_day_of_1___13
	ntmx_day_of_1___50
	ntmx_day_of_1___14
	ntmx_day_of_1___15
	ntmx_day_of_1___51
	ntmx_day_of_1___44
	ntmx_day_of_1___16
	ntmx_day_of_1___17
	ntmx_day_of_1___18
	ntmx_day_of_1___19
	ntmx_day_of_1___20
	ntmx_day_of_1___21
	ntmx_day_of_1___22
	ntmx_day_of_1___52
	ntmx_day_of_1___42
	ntmx_day_of_1___53
	ntmx_day_of_1___23
	ntmx_day_of_1___24
	ntmx_day_of_1___25
	ntmx_day_of_1___26
	ntmx_day_of_1___27
	ntmx_day_of_1___47
	ntmx_day_of_1___30
	ntmx_day_of_1___28
	ntmx_day_of_1___54
	ntmx_day_of_1___43
	ntmx_day_of_1___29
	ntmx_day_of_1___55
	ntmx_day_of_1___56
	ntmx_day_of_1___31
	ntmx_day_of_1___57
	ntmx_day_of_1___32
	ntmx_day_of_1___58
	ntmx_day_of_1___59
	ntmx_day_of_1___60
	ntmx_day_of_1___33
	ntmx_day_of_1___61
	ntmx_day_of_1___62
	ntmx_day_of_1___34
	ntmx_day_of_1___35
	ntmx_day_of_1___36
	ntmx_day_of_1___63
	ntmx_day_of_1___37
	ntmx_day_of_1___38
	ntmx_day_of_1___39
	ntmx_day_of_1___40
	ntmx_day_of_1___45
	ntmx_day_of_1___46
	ntmx_day_of_1___64
	ntmx_day_of_1___65
	ntmx_day_of_1___41
	ntmx_day_of_2___48
	ntmx_day_of_2___12
	ntmx_day_of_2___49
	ntmx_day_of_2___13
	ntmx_day_of_2___50
	ntmx_day_of_2___14
	ntmx_day_of_2___15
	ntmx_day_of_2___51
	ntmx_day_of_2___44
	ntmx_day_of_2___16
	ntmx_day_of_2___17
	ntmx_day_of_2___18
	ntmx_day_of_2___19
	ntmx_day_of_2___20
	ntmx_day_of_2___21
	ntmx_day_of_2___22
	ntmx_day_of_2___52
	ntmx_day_of_2___42
	ntmx_day_of_2___53
	ntmx_day_of_2___23
	ntmx_day_of_2___24
	ntmx_day_of_2___25
	ntmx_day_of_2___26
	ntmx_day_of_2___27
	ntmx_day_of_2___47
	ntmx_day_of_2___30
	ntmx_day_of_2___28
	ntmx_day_of_2___54
	ntmx_day_of_2___43
	ntmx_day_of_2___29
	ntmx_day_of_2___55
	ntmx_day_of_2___56
	ntmx_day_of_2___31
	ntmx_day_of_2___57
	ntmx_day_of_2___32
	ntmx_day_of_2___58
	ntmx_day_of_2___59
	ntmx_day_of_2___60
	ntmx_day_of_2___33
	ntmx_day_of_2___61
	ntmx_day_of_2___62
	ntmx_day_of_2___34
	ntmx_day_of_2___35
	ntmx_day_of_2___36
	ntmx_day_of_2___63
	ntmx_day_of_2___37
	ntmx_day_of_2___38
	ntmx_day_of_2___39
	ntmx_day_of_2___40
	ntmx_day_of_2___45
	ntmx_day_of_2___46
	ntmx_day_of_2___64
	ntmx_day_of_2___65
	ntmx_day_of_2___41
	ntmx_day_of_3___48
	ntmx_day_of_3___12
	ntmx_day_of_3___49
	ntmx_day_of_3___13
	ntmx_day_of_3___50
	ntmx_day_of_3___14
	ntmx_day_of_3___15
	ntmx_day_of_3___51
	ntmx_day_of_3___44
	ntmx_day_of_3___16
	ntmx_day_of_3___17
	ntmx_day_of_3___18
	ntmx_day_of_3___19
	ntmx_day_of_3___20
	ntmx_day_of_3___21
	ntmx_day_of_3___22
	ntmx_day_of_3___52
	ntmx_day_of_3___42
	ntmx_day_of_3___53
	ntmx_day_of_3___23
	ntmx_day_of_3___24
	ntmx_day_of_3___25
	ntmx_day_of_3___26
	ntmx_day_of_3___27
	ntmx_day_of_3___47
	ntmx_day_of_3___30
	ntmx_day_of_3___28
	ntmx_day_of_3___54
	ntmx_day_of_3___43
	ntmx_day_of_3___29
	ntmx_day_of_3___55
	ntmx_day_of_3___56
	ntmx_day_of_3___31
	ntmx_day_of_3___57
	ntmx_day_of_3___32
	ntmx_day_of_3___58
	ntmx_day_of_3___59
	ntmx_day_of_3___60
	ntmx_day_of_3___33
	ntmx_day_of_3___61
	ntmx_day_of_3___62
	ntmx_day_of_3___34
	ntmx_day_of_3___35
	ntmx_day_of_3___36
	ntmx_day_of_3___63
	ntmx_day_of_3___37
	ntmx_day_of_3___38
	ntmx_day_of_3___39
	ntmx_day_of_3___40
	ntmx_day_of_3___45
	ntmx_day_of_3___46
	ntmx_day_of_3___64
	ntmx_day_of_3___65
	ntmx_day_of_3___41
	ntmx_day_of_4___48
	ntmx_day_of_4___12
	ntmx_day_of_4___49
	ntmx_day_of_4___13
	ntmx_day_of_4___50
	ntmx_day_of_4___14
	ntmx_day_of_4___15
	ntmx_day_of_4___51
	ntmx_day_of_4___44
	ntmx_day_of_4___16
	ntmx_day_of_4___17
	ntmx_day_of_4___18
	ntmx_day_of_4___19
	ntmx_day_of_4___20
	ntmx_day_of_4___21
	ntmx_day_of_4___22
	ntmx_day_of_4___52
	ntmx_day_of_4___42
	ntmx_day_of_4___53
	ntmx_day_of_4___23
	ntmx_day_of_4___24
	ntmx_day_of_4___25
	ntmx_day_of_4___26
	ntmx_day_of_4___27
	ntmx_day_of_4___47
	ntmx_day_of_4___30
	ntmx_day_of_4___28
	ntmx_day_of_4___54
	ntmx_day_of_4___43
	ntmx_day_of_4___29
	ntmx_day_of_4___55
	ntmx_day_of_4___56
	ntmx_day_of_4___31
	ntmx_day_of_4___57
	ntmx_day_of_4___32
	ntmx_day_of_4___58
	ntmx_day_of_4___59
	ntmx_day_of_4___60
	ntmx_day_of_4___33
	ntmx_day_of_4___61
	ntmx_day_of_4___62
	ntmx_day_of_4___34
	ntmx_day_of_4___35
	ntmx_day_of_4___36
	ntmx_day_of_4___63
	ntmx_day_of_4___37
	ntmx_day_of_4___38
	ntmx_day_of_4___39
	ntmx_day_of_4___40
	ntmx_day_of_4___45
	ntmx_day_of_4___46
	ntmx_day_of_4___64
	ntmx_day_of_4___65
	ntmx_day_of_4___41
	ntmx_day_of_5___48
	ntmx_day_of_5___12
	ntmx_day_of_5___49
	ntmx_day_of_5___13
	ntmx_day_of_5___50
	ntmx_day_of_5___14
	ntmx_day_of_5___15
	ntmx_day_of_5___51
	ntmx_day_of_5___44
	ntmx_day_of_5___16
	ntmx_day_of_5___17
	ntmx_day_of_5___18
	ntmx_day_of_5___19
	ntmx_day_of_5___20
	ntmx_day_of_5___21
	ntmx_day_of_5___22
	ntmx_day_of_5___52
	ntmx_day_of_5___42
	ntmx_day_of_5___53
	ntmx_day_of_5___23
	ntmx_day_of_5___24
	ntmx_day_of_5___25
	ntmx_day_of_5___26
	ntmx_day_of_5___27
	ntmx_day_of_5___47
	ntmx_day_of_5___30
	ntmx_day_of_5___28
	ntmx_day_of_5___54
	ntmx_day_of_5___43
	ntmx_day_of_5___29
	ntmx_day_of_5___55
	ntmx_day_of_5___56
	ntmx_day_of_5___31
	ntmx_day_of_5___57
	ntmx_day_of_5___32
	ntmx_day_of_5___58
	ntmx_day_of_5___59
	ntmx_day_of_5___60
	ntmx_day_of_5___33
	ntmx_day_of_5___61
	ntmx_day_of_5___62
	ntmx_day_of_5___34
	ntmx_day_of_5___35
	ntmx_day_of_5___36
	ntmx_day_of_5___63
	ntmx_day_of_5___37
	ntmx_day_of_5___38
	ntmx_day_of_5___39
	ntmx_day_of_5___40
	ntmx_day_of_5___45
	ntmx_day_of_5___46
	ntmx_day_of_5___64
	ntmx_day_of_5___65
	ntmx_day_of_5___41
	ntmx_day_of_6___48
	ntmx_day_of_6___12
	ntmx_day_of_6___49
	ntmx_day_of_6___13
	ntmx_day_of_6___50
	ntmx_day_of_6___14
	ntmx_day_of_6___15
	ntmx_day_of_6___51
	ntmx_day_of_6___44
	ntmx_day_of_6___16
	ntmx_day_of_6___17
	ntmx_day_of_6___18
	ntmx_day_of_6___19
	ntmx_day_of_6___20
	ntmx_day_of_6___21
	ntmx_day_of_6___22
	ntmx_day_of_6___52
	ntmx_day_of_6___42
	ntmx_day_of_6___53
	ntmx_day_of_6___23
	ntmx_day_of_6___24
	ntmx_day_of_6___25
	ntmx_day_of_6___26
	ntmx_day_of_6___27
	ntmx_day_of_6___47
	ntmx_day_of_6___30
	ntmx_day_of_6___28
	ntmx_day_of_6___54
	ntmx_day_of_6___43
	ntmx_day_of_6___29
	ntmx_day_of_6___55
	ntmx_day_of_6___56
	ntmx_day_of_6___31
	ntmx_day_of_6___57
	ntmx_day_of_6___32
	ntmx_day_of_6___58
	ntmx_day_of_6___59
	ntmx_day_of_6___60
	ntmx_day_of_6___33
	ntmx_day_of_6___61
	ntmx_day_of_6___62
	ntmx_day_of_6___34
	ntmx_day_of_6___35
	ntmx_day_of_6___36
	ntmx_day_of_6___63
	ntmx_day_of_6___37
	ntmx_day_of_6___38
	ntmx_day_of_6___39
	ntmx_day_of_6___40
	ntmx_day_of_6___45
	ntmx_day_of_6___46
	ntmx_day_of_6___64
	ntmx_day_of_6___65
	ntmx_day_of_6___41
	ntmx_day_of_7___48
	ntmx_day_of_7___12
	ntmx_day_of_7___49
	ntmx_day_of_7___13
	ntmx_day_of_7___50
	ntmx_day_of_7___14
	ntmx_day_of_7___15
	ntmx_day_of_7___51
	ntmx_day_of_7___44
	ntmx_day_of_7___16
	ntmx_day_of_7___17
	ntmx_day_of_7___18
	ntmx_day_of_7___19
	ntmx_day_of_7___20
	ntmx_day_of_7___21
	ntmx_day_of_7___22
	ntmx_day_of_7___52
	ntmx_day_of_7___42
	ntmx_day_of_7___53
	ntmx_day_of_7___23
	ntmx_day_of_7___24
	ntmx_day_of_7___25
	ntmx_day_of_7___26
	ntmx_day_of_7___27
	ntmx_day_of_7___47
	ntmx_day_of_7___30
	ntmx_day_of_7___28
	ntmx_day_of_7___54
	ntmx_day_of_7___43
	ntmx_day_of_7___29
	ntmx_day_of_7___55
	ntmx_day_of_7___56
	ntmx_day_of_7___31
	ntmx_day_of_7___57
	ntmx_day_of_7___32
	ntmx_day_of_7___58
	ntmx_day_of_7___59
	ntmx_day_of_7___60
	ntmx_day_of_7___33
	ntmx_day_of_7___61
	ntmx_day_of_7___62
	ntmx_day_of_7___34
	ntmx_day_of_7___35
	ntmx_day_of_7___36
	ntmx_day_of_7___63
	ntmx_day_of_7___37
	ntmx_day_of_7___38
	ntmx_day_of_7___39
	ntmx_day_of_7___40
	ntmx_day_of_7___45
	ntmx_day_of_7___46
	ntmx_day_of_7___64
	ntmx_day_of_7___65
	ntmx_day_of_7___41
	supratherapeutic_vancomyci
	date_of_vanc_level
	gentamicin_trough_2
	date_of_supratherapeutic_g
	tacrolimus_level_15
	date_of_supratherapeutic_t
	cyclosporine_level_300
	date_of_supratherapeutic_c
	nephrotoxic_exposures_complete
	age $
	gender_assigned_at_birth
	admission_diagnosis $
	admission_location_and_pri $
	date_of_hospital_admission
	date_of_icu_admission_for
	history_of_renal_issues___1
	history_of_renal_issues___2
	history_of_renal_issues___3
	history_of_renal_issues___4
	other_renal_issue $
	code_event_up_to_3d_prior___1
	code_event_up_to_3d_prior___2
	ecmo_during_hospitalizatio
	first_day_ecmo
	last_day_of_ecmo
	or_procedure_up_to_3_days $
	or_estimated_blood_loss_in $
	demographics_complete
	ungal_level $
	scr_day_3 $
	scr_day_2 $
	scr_day_1 $
	scr_day_of_ninja_flag $
	scr_day_plus1 $
	scr_day2 $
	scr_day3 $
	scr_day4 $
	scr_day5 $
	scr_day6 $
	scr_day7 $
	lab_data_complete
	date_of_icu_discharge
	date_of_hospital_discharge
	date_of_death
	date_of_first_dialysis_tre
	last_date_of_dialysis_in_h
	dialysis_needed_after_hosp
	indication_for_dialysis___1
	indication_for_dialysis___2
	indication_for_dialysis___3
	indication_for_dialysis___4
	indication_for_dialysis___5
	outcomes_data_complete
	dopa_day_3 $
	dopa_day_2 $
	dopa_day_1 $
	dopa_day_0 $
	dopa_day_p1 $
	dopa_day_p2 $
	dopa_day_p3 $
	dobut_day_3 $
	dobut_day_2 $
	dobut_day_1 $
	dobut_day_0 $
	dobut_day_p1 $
	dobut_day_p2 $
	dobut_day_p3 $
	milrinone_day_3 $
	milrinone_day_2 $
	milrinone_day_1 $
	milrinone_day_0 $
	milrinone_day_p1 $
	milrinone_day_p2 $
	milrinone_day_p3 $
	epi_day_3 $
	epi_day_2 $
	epi_day_1 $
	epi_day_0 $
	epi_day_p1 $
	epi_day_p2 $
	epi_day_p3 $
	norepi_day_3 $
	norepi_day_2 $
	norepi_day_1 $
	norepi_day_0 $
	norepi_day_p1 $
	norepi_day_p2 $
	norepi_day_p3 $
	vaso_day_3 $
	vaso_day_2 $
	vaso_day_1 $
	vaso_day_0 $
	vaso_day_p1 $
	vaso_day_p2 $
	vaso_day_p3 $
	vis_information_complete
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;

data redcap;
	set redcap;
	label record_id='Record ID';
	label mrn='MRN';
	label service_for_aki_episode='Surgical/Medical Team prior to PICU admit';
	label start_date_for_ntmx_encoun='Date of NINJA Flag';
	label aki_episode_start_date='AKI Episode Start Date';
	label ntmx_exposure_type='NTMx exposure type';
	label baseline_scr_lowest_docume='Baseline SCr  Lowest Documented Scr in prior 6 months';
	label daily_scr_value_on_1st_day='Daily SCr Value on 1st Day of this AKI Episode';
	label absolute_scr_difference_fr='Absolute SCr difference from baseline';
	label scr_difference_from_baseli='% SCr difference from baseline';
	label initial_aki_stage='Initial AKI Stage     ';
	label additional_comments='Additional Comments';
	label aki_episode_resolution_dat='AKI Episode Resolution Date    I.e. Date that the patient patient transferred, discharged or no longer met AKI criteria for 2 consecutive days - whichever occurs first';
	label of_days_with_aki='# of Days with AKI';
	label reason_for_closing_aki_epi='Reason for closing AKI episode?';
	label maximum_scr_during_this_ak='Maximum Scr during this AKI Episode';
	label date_of_maximum_scr_during='Date of Maximum Scr during this AKI Episode';
	label highest_aki_stage_for_this='Highest AKI Stage for this AKI Episode';
	label form_1_complete='Complete?';
	label days_prior_to_ninja_flag___1='RAI 3 days prior to NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag___2='RAI 3 days prior to NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag___3='RAI 3 days prior to NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag___4='RAI 3 days prior to NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag___5='RAI 3 days prior to NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag___6='RAI 3 days prior to NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_2___1='RAI 2 days prior to NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_2___2='RAI 2 days prior to NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_2___3='RAI 2 days prior to NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_2___4='RAI 2 days prior to NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_2___5='RAI 2 days prior to NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_2___6='RAI 2 days prior to NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_3___1='RAI 1 day prior to NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_3___2='RAI 1 day prior to NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_3___3='RAI 1 day prior to NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_3___4='RAI 1 day prior to NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_3___5='RAI 1 day prior to NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_3___6='RAI 1 day prior to NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_4___1='RAI day of NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_4___2='RAI day of NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_4___3='RAI day of NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_4___4='RAI day of NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_4___5='RAI day of NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_4___6='RAI day of NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_6___1='RAI day +1 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_6___2='RAI day +1 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_6___3='RAI day +1 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_6___4='RAI day +1 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_6___5='RAI day +1 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_6___6='RAI day +1 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_5___1='RAI day +2 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_5___2='RAI day +2 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_5___3='RAI day +2 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_5___4='RAI day +2 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_5___5='RAI day +2 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_5___6='RAI day +2 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_7___1='RAI day +3 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_7___2='RAI day +3 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_7___3='RAI day +3 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_7___4='RAI day +3 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_7___5='RAI day +3 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_7___6='RAI day +3 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_8___1='RAI day +4 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_8___2='RAI day +4 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_8___3='RAI day +4 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_8___4='RAI day +4 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_8___5='RAI day +4 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_8___6='RAI day +4 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja_flag_9___1='RAI day +5 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja_flag_9___2='RAI day +5 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja_flag_9___3='RAI day +5 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja_flag_9___4='RAI day +5 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja_flag_9___5='RAI day +5 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja_flag_9___6='RAI day +5 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja__v_0='RAI day +6 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja__v_1='RAI day +6 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja__v_2='RAI day +6 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja__v_3='RAI day +6 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja__v_4='RAI day +6 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja__v_5='RAI day +6 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label days_prior_to_ninja__v_6='RAI day +7 after NINJA Flag (choice=History of BMT or solid organ Tx)';
	label days_prior_to_ninja__v_7='RAI day +7 after NINJA Flag (choice=Ventilation AND Inotrope)';
	label days_prior_to_ninja__v_8='RAI day +7 after NINJA Flag (choice=sCr/baseline < 1x and FO% < 5%)';
	label days_prior_to_ninja__v_9='RAI day +7 after NINJA Flag (choice=sCr/baseline 1x-1.49x OR FO 5-10%)';
	label days_prior_to_ninja__v_10='RAI day +7 after NINJA Flag (choice=sCr/baseline 1.5x-1.99x OR FO 10-15%)';
	label days_prior_to_ninja__v_11='RAI day +7 after NINJA Flag (choice=sCr/baseline ≥2x OR FO ≥15%)';
	label renal_angina_index_c_v_12='Complete?';
	label ntmx_3_days_prior___48='3 days prior to NINJA Flag (choice=Acyclovir)';
	label ntmx_3_days_prior___12='3 days prior to NINJA Flag (choice=Ambisome)';
	label ntmx_3_days_prior___49='3 days prior to NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_3_days_prior___13='3 days prior to NINJA Flag (choice=Amikacin)';
	label ntmx_3_days_prior___50='3 days prior to NINJA Flag (choice=Aspirin)';
	label ntmx_3_days_prior___14='3 days prior to NINJA Flag (choice=Captopril)';
	label ntmx_3_days_prior___15='3 days prior to NINJA Flag (choice=Carboplatin)';
	label ntmx_3_days_prior___51='3 days prior to NINJA Flag (choice=Celecoxib)';
	label ntmx_3_days_prior___44='3 days prior to NINJA Flag (choice=Cisplatin)';
	label ntmx_3_days_prior___16='3 days prior to NINJA Flag (choice=Cefotaxime)';
	label ntmx_3_days_prior___17='3 days prior to NINJA Flag (choice=Ceftazidime)';
	label ntmx_3_days_prior___18='3 days prior to NINJA Flag (choice=Cefuroxime)';
	label ntmx_3_days_prior___19='3 days prior to NINJA Flag (choice=Cidofovir)';
	label ntmx_3_days_prior___20='3 days prior to NINJA Flag (choice=Colistimethate)';
	label ntmx_3_days_prior___21='3 days prior to NINJA Flag (choice=Cyclosporine)';
	label ntmx_3_days_prior___22='3 days prior to NINJA Flag (choice=Dapsone)';
	label ntmx_3_days_prior___52='3 days prior to NINJA Flag (choice=Deferasirox)';
	label ntmx_3_days_prior___42='3 days prior to NINJA Flag (choice=Enalapril)';
	label ntmx_3_days_prior___53='3 days prior to NINJA Flag (choice=Enalaprilat)';
	label ntmx_3_days_prior___23='3 days prior to NINJA Flag (choice=Foscarnet)';
	label ntmx_3_days_prior___24='3 days prior to NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_3_days_prior___25='3 days prior to NINJA Flag (choice=Ganciclovir)';
	label ntmx_3_days_prior___26='3 days prior to NINJA Flag (choice=Gentamicin)';
	label ntmx_3_days_prior___27='3 days prior to NINJA Flag (choice=Ibuprofen)';
	label ntmx_3_days_prior___47='3 days prior to NINJA Flag (choice=Ketorolac)';
	label ntmx_3_days_prior___30='3 days prior to NINJA Flag (choice=Ifosfamide)';
	label ntmx_3_days_prior___28='3 days prior to NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_3_days_prior___54='3 days prior to NINJA Flag (choice=Indomethacin)';
	label ntmx_3_days_prior___43='3 days prior to NINJA Flag (choice=Lisinopril)';
	label ntmx_3_days_prior___29='3 days prior to NINJA Flag (choice=Lithium)';
	label ntmx_3_days_prior___55='3 days prior to NINJA Flag (choice=Losartan)';
	label ntmx_3_days_prior___56='3 days prior to NINJA Flag (choice=Mesalamine)';
	label ntmx_3_days_prior___31='3 days prior to NINJA Flag (choice=Methotrexate)';
	label ntmx_3_days_prior___57='3 days prior to NINJA Flag (choice=Mitomycin)';
	label ntmx_3_days_prior___32='3 days prior to NINJA Flag (choice=Nafcillin)';
	label ntmx_3_days_prior___58='3 days prior to NINJA Flag (choice=Naproxen)';
	label ntmx_3_days_prior___59='3 days prior to NINJA Flag (choice=Pamidronate)';
	label ntmx_3_days_prior___60='3 days prior to NINJA Flag (choice=Pentamidine IV)';
	label ntmx_3_days_prior___33='3 days prior to NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_3_days_prior___61='3 days prior to NINJA Flag (choice=Polymyxin B)';
	label ntmx_3_days_prior___62='3 days prior to NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_3_days_prior___34='3 days prior to NINJA Flag (choice=Sirolimus)';
	label ntmx_3_days_prior___35='3 days prior to NINJA Flag (choice=Sulfasalazine)';
	label ntmx_3_days_prior___36='3 days prior to NINJA Flag (choice=Tacrolimus)';
	label ntmx_3_days_prior___63='3 days prior to NINJA Flag (choice=Tenofovir)';
	label ntmx_3_days_prior___37='3 days prior to NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_3_days_prior___38='3 days prior to NINJA Flag (choice=Tobramycin)';
	label ntmx_3_days_prior___39='3 days prior to NINJA Flag (choice=Topiramate)';
	label ntmx_3_days_prior___40='3 days prior to NINJA Flag (choice=Vancomycin)';
	label ntmx_3_days_prior___45='3 days prior to NINJA Flag (choice=Valganciclovir)';
	label ntmx_3_days_prior___46='3 days prior to NINJA Flag (choice=Valacyclovir)';
	label ntmx_3_days_prior___64='3 days prior to NINJA Flag (choice=Valsartan)';
	label ntmx_3_days_prior___65='3 days prior to NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_3_days_prior___41='3 days prior to NINJA Flag (choice=Zonisamide)';
	label ntmx_2_days_prior___48='2 days prior to NINJA Flag (choice=Acyclovir)';
	label ntmx_2_days_prior___12='2 days prior to NINJA Flag (choice=Ambisome)';
	label ntmx_2_days_prior___49='2 days prior to NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_2_days_prior___13='2 days prior to NINJA Flag (choice=Amikacin)';
	label ntmx_2_days_prior___50='2 days prior to NINJA Flag (choice=Aspirin)';
	label ntmx_2_days_prior___14='2 days prior to NINJA Flag (choice=Captopril)';
	label ntmx_2_days_prior___15='2 days prior to NINJA Flag (choice=Carboplatin)';
	label ntmx_2_days_prior___51='2 days prior to NINJA Flag (choice=Celecoxib)';
	label ntmx_2_days_prior___44='2 days prior to NINJA Flag (choice=Cisplatin)';
	label ntmx_2_days_prior___16='2 days prior to NINJA Flag (choice=Cefotaxime)';
	label ntmx_2_days_prior___17='2 days prior to NINJA Flag (choice=Ceftazidime)';
	label ntmx_2_days_prior___18='2 days prior to NINJA Flag (choice=Cefuroxime)';
	label ntmx_2_days_prior___19='2 days prior to NINJA Flag (choice=Cidofovir)';
	label ntmx_2_days_prior___20='2 days prior to NINJA Flag (choice=Colistimethate)';
	label ntmx_2_days_prior___21='2 days prior to NINJA Flag (choice=Cyclosporine)';
	label ntmx_2_days_prior___22='2 days prior to NINJA Flag (choice=Dapsone)';
	label ntmx_2_days_prior___52='2 days prior to NINJA Flag (choice=Deferasirox)';
	label ntmx_2_days_prior___42='2 days prior to NINJA Flag (choice=Enalapril)';
	label ntmx_2_days_prior___53='2 days prior to NINJA Flag (choice=Enalaprilat)';
	label ntmx_2_days_prior___23='2 days prior to NINJA Flag (choice=Foscarnet)';
	label ntmx_2_days_prior___24='2 days prior to NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_2_days_prior___25='2 days prior to NINJA Flag (choice=Ganciclovir)';
	label ntmx_2_days_prior___26='2 days prior to NINJA Flag (choice=Gentamicin)';
	label ntmx_2_days_prior___27='2 days prior to NINJA Flag (choice=Ibuprofen)';
	label ntmx_2_days_prior___47='2 days prior to NINJA Flag (choice=Ketorolac)';
	label ntmx_2_days_prior___30='2 days prior to NINJA Flag (choice=Ifosfamide)';
	label ntmx_2_days_prior___28='2 days prior to NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_2_days_prior___54='2 days prior to NINJA Flag (choice=Indomethacin)';
	label ntmx_2_days_prior___43='2 days prior to NINJA Flag (choice=Lisinopril)';
	label ntmx_2_days_prior___29='2 days prior to NINJA Flag (choice=Lithium)';
	label ntmx_2_days_prior___55='2 days prior to NINJA Flag (choice=Losartan)';
	label ntmx_2_days_prior___56='2 days prior to NINJA Flag (choice=Mesalamine)';
	label ntmx_2_days_prior___31='2 days prior to NINJA Flag (choice=Methotrexate)';
	label ntmx_2_days_prior___57='2 days prior to NINJA Flag (choice=Mitomycin)';
	label ntmx_2_days_prior___32='2 days prior to NINJA Flag (choice=Nafcillin)';
	label ntmx_2_days_prior___58='2 days prior to NINJA Flag (choice=Naproxen)';
	label ntmx_2_days_prior___59='2 days prior to NINJA Flag (choice=Pamidronate)';
	label ntmx_2_days_prior___60='2 days prior to NINJA Flag (choice=Pentamidine IV)';
	label ntmx_2_days_prior___33='2 days prior to NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_2_days_prior___61='2 days prior to NINJA Flag (choice=Polymyxin B)';
	label ntmx_2_days_prior___62='2 days prior to NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_2_days_prior___34='2 days prior to NINJA Flag (choice=Sirolimus)';
	label ntmx_2_days_prior___35='2 days prior to NINJA Flag (choice=Sulfasalazine)';
	label ntmx_2_days_prior___36='2 days prior to NINJA Flag (choice=Tacrolimus)';
	label ntmx_2_days_prior___63='2 days prior to NINJA Flag (choice=Tenofovir)';
	label ntmx_2_days_prior___37='2 days prior to NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_2_days_prior___38='2 days prior to NINJA Flag (choice=Tobramycin)';
	label ntmx_2_days_prior___39='2 days prior to NINJA Flag (choice=Topiramate)';
	label ntmx_2_days_prior___40='2 days prior to NINJA Flag (choice=Vancomycin)';
	label ntmx_2_days_prior___45='2 days prior to NINJA Flag (choice=Valganciclovir)';
	label ntmx_2_days_prior___46='2 days prior to NINJA Flag (choice=Valacyclovir)';
	label ntmx_2_days_prior___64='2 days prior to NINJA Flag (choice=Valsartan)';
	label ntmx_2_days_prior___65='2 days prior to NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_2_days_prior___41='2 days prior to NINJA Flag (choice=Zonisamide)';
	label ntmx_1_days_prior___48='1 day prior to NINJA Flag (choice=Acyclovir)';
	label ntmx_1_days_prior___12='1 day prior to NINJA Flag (choice=Ambisome)';
	label ntmx_1_days_prior___49='1 day prior to NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_1_days_prior___13='1 day prior to NINJA Flag (choice=Amikacin)';
	label ntmx_1_days_prior___50='1 day prior to NINJA Flag (choice=Aspirin)';
	label ntmx_1_days_prior___14='1 day prior to NINJA Flag (choice=Captopril)';
	label ntmx_1_days_prior___15='1 day prior to NINJA Flag (choice=Carboplatin)';
	label ntmx_1_days_prior___51='1 day prior to NINJA Flag (choice=Celecoxib)';
	label ntmx_1_days_prior___44='1 day prior to NINJA Flag (choice=Cisplatin)';
	label ntmx_1_days_prior___16='1 day prior to NINJA Flag (choice=Cefotaxime)';
	label ntmx_1_days_prior___17='1 day prior to NINJA Flag (choice=Ceftazidime)';
	label ntmx_1_days_prior___18='1 day prior to NINJA Flag (choice=Cefuroxime)';
	label ntmx_1_days_prior___19='1 day prior to NINJA Flag (choice=Cidofovir)';
	label ntmx_1_days_prior___20='1 day prior to NINJA Flag (choice=Colistimethate)';
	label ntmx_1_days_prior___21='1 day prior to NINJA Flag (choice=Cyclosporine)';
	label ntmx_1_days_prior___22='1 day prior to NINJA Flag (choice=Dapsone)';
	label ntmx_1_days_prior___52='1 day prior to NINJA Flag (choice=Deferasirox)';
	label ntmx_1_days_prior___42='1 day prior to NINJA Flag (choice=Enalapril)';
	label ntmx_1_days_prior___53='1 day prior to NINJA Flag (choice=Enalaprilat)';
	label ntmx_1_days_prior___23='1 day prior to NINJA Flag (choice=Foscarnet)';
	label ntmx_1_days_prior___24='1 day prior to NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_1_days_prior___25='1 day prior to NINJA Flag (choice=Ganciclovir)';
	label ntmx_1_days_prior___26='1 day prior to NINJA Flag (choice=Gentamicin)';
	label ntmx_1_days_prior___27='1 day prior to NINJA Flag (choice=Ibuprofen)';
	label ntmx_1_days_prior___47='1 day prior to NINJA Flag (choice=Ketorolac)';
	label ntmx_1_days_prior___30='1 day prior to NINJA Flag (choice=Ifosfamide)';
	label ntmx_1_days_prior___28='1 day prior to NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_1_days_prior___54='1 day prior to NINJA Flag (choice=Indomethacin)';
	label ntmx_1_days_prior___43='1 day prior to NINJA Flag (choice=Lisinopril)';
	label ntmx_1_days_prior___29='1 day prior to NINJA Flag (choice=Lithium)';
	label ntmx_1_days_prior___55='1 day prior to NINJA Flag (choice=Losartan)';
	label ntmx_1_days_prior___56='1 day prior to NINJA Flag (choice=Mesalamine)';
	label ntmx_1_days_prior___31='1 day prior to NINJA Flag (choice=Methotrexate)';
	label ntmx_1_days_prior___57='1 day prior to NINJA Flag (choice=Mitomycin)';
	label ntmx_1_days_prior___32='1 day prior to NINJA Flag (choice=Nafcillin)';
	label ntmx_1_days_prior___58='1 day prior to NINJA Flag (choice=Naproxen)';
	label ntmx_1_days_prior___59='1 day prior to NINJA Flag (choice=Pamidronate)';
	label ntmx_1_days_prior___60='1 day prior to NINJA Flag (choice=Pentamidine IV)';
	label ntmx_1_days_prior___33='1 day prior to NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_1_days_prior___61='1 day prior to NINJA Flag (choice=Polymyxin B)';
	label ntmx_1_days_prior___62='1 day prior to NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_1_days_prior___34='1 day prior to NINJA Flag (choice=Sirolimus)';
	label ntmx_1_days_prior___35='1 day prior to NINJA Flag (choice=Sulfasalazine)';
	label ntmx_1_days_prior___36='1 day prior to NINJA Flag (choice=Tacrolimus)';
	label ntmx_1_days_prior___63='1 day prior to NINJA Flag (choice=Tenofovir)';
	label ntmx_1_days_prior___37='1 day prior to NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_1_days_prior___38='1 day prior to NINJA Flag (choice=Tobramycin)';
	label ntmx_1_days_prior___39='1 day prior to NINJA Flag (choice=Topiramate)';
	label ntmx_1_days_prior___40='1 day prior to NINJA Flag (choice=Vancomycin)';
	label ntmx_1_days_prior___45='1 day prior to NINJA Flag (choice=Valganciclovir)';
	label ntmx_1_days_prior___46='1 day prior to NINJA Flag (choice=Valacyclovir)';
	label ntmx_1_days_prior___64='1 day prior to NINJA Flag (choice=Valsartan)';
	label ntmx_1_days_prior___65='1 day prior to NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_1_days_prior___41='1 day prior to NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of___48='Day of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of___12='Day of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of___49='Day of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of___13='Day of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of___50='Day of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of___14='Day of NINJA Flag (choice=Captopril)';
	label ntmx_day_of___15='Day of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of___51='Day of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of___44='Day of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of___16='Day of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of___17='Day of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of___18='Day of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of___19='Day of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of___20='Day of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of___21='Day of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of___22='Day of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of___52='Day of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of___42='Day of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of___53='Day of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of___23='Day of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of___24='Day of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of___25='Day of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of___26='Day of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of___27='Day of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of___47='Day of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of___30='Day of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of___28='Day of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of___54='Day of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of___43='Day of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of___29='Day of NINJA Flag (choice=Lithium)';
	label ntmx_day_of___55='Day of NINJA Flag (choice=Losartan)';
	label ntmx_day_of___56='Day of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of___31='Day of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of___57='Day of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of___32='Day of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of___58='Day of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of___59='Day of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of___60='Day of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of___33='Day of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of___61='Day of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of___62='Day of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of___34='Day of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of___35='Day of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of___36='Day of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of___63='Day of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of___37='Day of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of___38='Day of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of___39='Day of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of___40='Day of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of___45='Day of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of___46='Day of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of___64='Day of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of___65='Day of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of___41='Day of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_1___48='Day +1 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_1___12='Day +1 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_1___49='Day +1 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_1___13='Day +1 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_1___50='Day +1 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_1___14='Day +1 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_1___15='Day +1 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_1___51='Day +1 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_1___44='Day +1 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_1___16='Day +1 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_1___17='Day +1 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_1___18='Day +1 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_1___19='Day +1 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_1___20='Day +1 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_1___21='Day +1 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_1___22='Day +1 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_1___52='Day +1 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_1___42='Day +1 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_1___53='Day +1 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_1___23='Day +1 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_1___24='Day +1 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_1___25='Day +1 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_1___26='Day +1 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_1___27='Day +1 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_1___47='Day +1 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_1___30='Day +1 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_1___28='Day +1 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_1___54='Day +1 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_1___43='Day +1 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_1___29='Day +1 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_1___55='Day +1 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_1___56='Day +1 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_1___31='Day +1 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_1___57='Day +1 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_1___32='Day +1 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_1___58='Day +1 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_1___59='Day +1 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_1___60='Day +1 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_1___33='Day +1 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_1___61='Day +1 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_1___62='Day +1 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_1___34='Day +1 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_1___35='Day +1 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_1___36='Day +1 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_1___63='Day +1 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_1___37='Day +1 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_1___38='Day +1 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_1___39='Day +1 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_1___40='Day +1 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_1___45='Day +1 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_1___46='Day +1 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_1___64='Day +1 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_1___65='Day +1 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_1___41='Day +1 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_2___48='Day +2 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_2___12='Day +2 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_2___49='Day +2 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_2___13='Day +2 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_2___50='Day +2 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_2___14='Day +2 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_2___15='Day +2 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_2___51='Day +2 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_2___44='Day +2 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_2___16='Day +2 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_2___17='Day +2 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_2___18='Day +2 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_2___19='Day +2 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_2___20='Day +2 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_2___21='Day +2 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_2___22='Day +2 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_2___52='Day +2 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_2___42='Day +2 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_2___53='Day +2 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_2___23='Day +2 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_2___24='Day +2 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_2___25='Day +2 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_2___26='Day +2 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_2___27='Day +2 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_2___47='Day +2 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_2___30='Day +2 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_2___28='Day +2 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_2___54='Day +2 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_2___43='Day +2 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_2___29='Day +2 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_2___55='Day +2 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_2___56='Day +2 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_2___31='Day +2 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_2___57='Day +2 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_2___32='Day +2 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_2___58='Day +2 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_2___59='Day +2 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_2___60='Day +2 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_2___33='Day +2 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_2___61='Day +2 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_2___62='Day +2 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_2___34='Day +2 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_2___35='Day +2 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_2___36='Day +2 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_2___63='Day +2 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_2___37='Day +2 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_2___38='Day +2 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_2___39='Day +2 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_2___40='Day +2 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_2___45='Day +2 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_2___46='Day +2 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_2___64='Day +2 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_2___65='Day +2 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_2___41='Day +2 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_3___48='Day +3 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_3___12='Day +3 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_3___49='Day +3 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_3___13='Day +3 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_3___50='Day +3 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_3___14='Day +3 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_3___15='Day +3 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_3___51='Day +3 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_3___44='Day +3 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_3___16='Day +3 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_3___17='Day +3 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_3___18='Day +3 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_3___19='Day +3 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_3___20='Day +3 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_3___21='Day +3 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_3___22='Day +3 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_3___52='Day +3 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_3___42='Day +3 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_3___53='Day +3 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_3___23='Day +3 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_3___24='Day +3 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_3___25='Day +3 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_3___26='Day +3 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_3___27='Day +3 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_3___47='Day +3 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_3___30='Day +3 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_3___28='Day +3 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_3___54='Day +3 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_3___43='Day +3 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_3___29='Day +3 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_3___55='Day +3 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_3___56='Day +3 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_3___31='Day +3 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_3___57='Day +3 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_3___32='Day +3 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_3___58='Day +3 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_3___59='Day +3 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_3___60='Day +3 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_3___33='Day +3 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_3___61='Day +3 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_3___62='Day +3 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_3___34='Day +3 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_3___35='Day +3 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_3___36='Day +3 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_3___63='Day +3 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_3___37='Day +3 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_3___38='Day +3 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_3___39='Day +3 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_3___40='Day +3 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_3___45='Day +3 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_3___46='Day +3 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_3___64='Day +3 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_3___65='Day +3 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_3___41='Day +3 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_4___48='Day +4 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_4___12='Day +4 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_4___49='Day +4 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_4___13='Day +4 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_4___50='Day +4 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_4___14='Day +4 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_4___15='Day +4 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_4___51='Day +4 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_4___44='Day +4 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_4___16='Day +4 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_4___17='Day +4 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_4___18='Day +4 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_4___19='Day +4 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_4___20='Day +4 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_4___21='Day +4 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_4___22='Day +4 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_4___52='Day +4 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_4___42='Day +4 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_4___53='Day +4 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_4___23='Day +4 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_4___24='Day +4 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_4___25='Day +4 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_4___26='Day +4 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_4___27='Day +4 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_4___47='Day +4 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_4___30='Day +4 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_4___28='Day +4 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_4___54='Day +4 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_4___43='Day +4 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_4___29='Day +4 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_4___55='Day +4 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_4___56='Day +4 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_4___31='Day +4 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_4___57='Day +4 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_4___32='Day +4 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_4___58='Day +4 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_4___59='Day +4 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_4___60='Day +4 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_4___33='Day +4 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_4___61='Day +4 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_4___62='Day +4 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_4___34='Day +4 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_4___35='Day +4 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_4___36='Day +4 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_4___63='Day +4 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_4___37='Day +4 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_4___38='Day +4 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_4___39='Day +4 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_4___40='Day +4 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_4___45='Day +4 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_4___46='Day +4 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_4___64='Day +4 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_4___65='Day +4 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_4___41='Day +4 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_5___48='Day +5 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_5___12='Day +5 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_5___49='Day +5 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_5___13='Day +5 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_5___50='Day +5 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_5___14='Day +5 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_5___15='Day +5 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_5___51='Day +5 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_5___44='Day +5 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_5___16='Day +5 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_5___17='Day +5 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_5___18='Day +5 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_5___19='Day +5 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_5___20='Day +5 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_5___21='Day +5 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_5___22='Day +5 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_5___52='Day +5 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_5___42='Day +5 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_5___53='Day +5 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_5___23='Day +5 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_5___24='Day +5 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_5___25='Day +5 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_5___26='Day +5 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_5___27='Day +5 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_5___47='Day +5 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_5___30='Day +5 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_5___28='Day +5 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_5___54='Day +5 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_5___43='Day +5 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_5___29='Day +5 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_5___55='Day +5 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_5___56='Day +5 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_5___31='Day +5 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_5___57='Day +5 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_5___32='Day +5 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_5___58='Day +5 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_5___59='Day +5 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_5___60='Day +5 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_5___33='Day +5 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_5___61='Day +5 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_5___62='Day +5 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_5___34='Day +5 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_5___35='Day +5 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_5___36='Day +5 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_5___63='Day +5 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_5___37='Day +5 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_5___38='Day +5 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_5___39='Day +5 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_5___40='Day +5 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_5___45='Day +5 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_5___46='Day +5 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_5___64='Day +5 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_5___65='Day +5 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_5___41='Day +5 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_6___48='Day +6 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_6___12='Day +6 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_6___49='Day +6 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_6___13='Day +6 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_6___50='Day +6 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_6___14='Day +6 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_6___15='Day +6 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_6___51='Day +6 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_6___44='Day +6 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_6___16='Day +6 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_6___17='Day +6 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_6___18='Day +6 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_6___19='Day +6 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_6___20='Day +6 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_6___21='Day +6 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_6___22='Day +6 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_6___52='Day +6 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_6___42='Day +6 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_6___53='Day +6 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_6___23='Day +6 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_6___24='Day +6 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_6___25='Day +6 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_6___26='Day +6 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_6___27='Day +6 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_6___47='Day +6 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_6___30='Day +6 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_6___28='Day +6 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_6___54='Day +6 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_6___43='Day +6 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_6___29='Day +6 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_6___55='Day +6 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_6___56='Day +6 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_6___31='Day +6 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_6___57='Day +6 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_6___32='Day +6 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_6___58='Day +6 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_6___59='Day +6 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_6___60='Day +6 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_6___33='Day +6 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_6___61='Day +6 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_6___62='Day +6 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_6___34='Day +6 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_6___35='Day +6 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_6___36='Day +6 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_6___63='Day +6 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_6___37='Day +6 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_6___38='Day +6 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_6___39='Day +6 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_6___40='Day +6 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_6___45='Day +6 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_6___46='Day +6 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_6___64='Day +6 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_6___65='Day +6 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_6___41='Day +6 of NINJA Flag (choice=Zonisamide)';
	label ntmx_day_of_7___48='Day +7 of NINJA Flag (choice=Acyclovir)';
	label ntmx_day_of_7___12='Day +7 of NINJA Flag (choice=Ambisome)';
	label ntmx_day_of_7___49='Day +7 of NINJA Flag (choice=Amphotericin Conventional)';
	label ntmx_day_of_7___13='Day +7 of NINJA Flag (choice=Amikacin)';
	label ntmx_day_of_7___50='Day +7 of NINJA Flag (choice=Aspirin)';
	label ntmx_day_of_7___14='Day +7 of NINJA Flag (choice=Captopril)';
	label ntmx_day_of_7___15='Day +7 of NINJA Flag (choice=Carboplatin)';
	label ntmx_day_of_7___51='Day +7 of NINJA Flag (choice=Celecoxib)';
	label ntmx_day_of_7___44='Day +7 of NINJA Flag (choice=Cisplatin)';
	label ntmx_day_of_7___16='Day +7 of NINJA Flag (choice=Cefotaxime)';
	label ntmx_day_of_7___17='Day +7 of NINJA Flag (choice=Ceftazidime)';
	label ntmx_day_of_7___18='Day +7 of NINJA Flag (choice=Cefuroxime)';
	label ntmx_day_of_7___19='Day +7 of NINJA Flag (choice=Cidofovir)';
	label ntmx_day_of_7___20='Day +7 of NINJA Flag (choice=Colistimethate)';
	label ntmx_day_of_7___21='Day +7 of NINJA Flag (choice=Cyclosporine)';
	label ntmx_day_of_7___22='Day +7 of NINJA Flag (choice=Dapsone)';
	label ntmx_day_of_7___52='Day +7 of NINJA Flag (choice=Deferasirox)';
	label ntmx_day_of_7___42='Day +7 of NINJA Flag (choice=Enalapril)';
	label ntmx_day_of_7___53='Day +7 of NINJA Flag (choice=Enalaprilat)';
	label ntmx_day_of_7___23='Day +7 of NINJA Flag (choice=Foscarnet)';
	label ntmx_day_of_7___24='Day +7 of NINJA Flag (choice=Gadolineum Derivatives)';
	label ntmx_day_of_7___25='Day +7 of NINJA Flag (choice=Ganciclovir)';
	label ntmx_day_of_7___26='Day +7 of NINJA Flag (choice=Gentamicin)';
	label ntmx_day_of_7___27='Day +7 of NINJA Flag (choice=Ibuprofen)';
	label ntmx_day_of_7___47='Day +7 of NINJA Flag (choice=Ketorolac)';
	label ntmx_day_of_7___30='Day +7 of NINJA Flag (choice=Ifosfamide)';
	label ntmx_day_of_7___28='Day +7 of NINJA Flag (choice=Iodinated Contrast Agent)';
	label ntmx_day_of_7___54='Day +7 of NINJA Flag (choice=Indomethacin)';
	label ntmx_day_of_7___43='Day +7 of NINJA Flag (choice=Lisinopril)';
	label ntmx_day_of_7___29='Day +7 of NINJA Flag (choice=Lithium)';
	label ntmx_day_of_7___55='Day +7 of NINJA Flag (choice=Losartan)';
	label ntmx_day_of_7___56='Day +7 of NINJA Flag (choice=Mesalamine)';
	label ntmx_day_of_7___31='Day +7 of NINJA Flag (choice=Methotrexate)';
	label ntmx_day_of_7___57='Day +7 of NINJA Flag (choice=Mitomycin)';
	label ntmx_day_of_7___32='Day +7 of NINJA Flag (choice=Nafcillin)';
	label ntmx_day_of_7___58='Day +7 of NINJA Flag (choice=Naproxen)';
	label ntmx_day_of_7___59='Day +7 of NINJA Flag (choice=Pamidronate)';
	label ntmx_day_of_7___60='Day +7 of NINJA Flag (choice=Pentamidine IV)';
	label ntmx_day_of_7___33='Day +7 of NINJA Flag (choice=Zosyn/Piperacillin)';
	label ntmx_day_of_7___61='Day +7 of NINJA Flag (choice=Polymyxin B)';
	label ntmx_day_of_7___62='Day +7 of NINJA Flag (choice=Sacubitril/Valsartan)';
	label ntmx_day_of_7___34='Day +7 of NINJA Flag (choice=Sirolimus)';
	label ntmx_day_of_7___35='Day +7 of NINJA Flag (choice=Sulfasalazine)';
	label ntmx_day_of_7___36='Day +7 of NINJA Flag (choice=Tacrolimus)';
	label ntmx_day_of_7___63='Day +7 of NINJA Flag (choice=Tenofovir)';
	label ntmx_day_of_7___37='Day +7 of NINJA Flag (choice=Ticarcillin/Clavulanic Acid)';
	label ntmx_day_of_7___38='Day +7 of NINJA Flag (choice=Tobramycin)';
	label ntmx_day_of_7___39='Day +7 of NINJA Flag (choice=Topiramate)';
	label ntmx_day_of_7___40='Day +7 of NINJA Flag (choice=Vancomycin)';
	label ntmx_day_of_7___45='Day +7 of NINJA Flag (choice=Valganciclovir)';
	label ntmx_day_of_7___46='Day +7 of NINJA Flag (choice=Valacyclovir)';
	label ntmx_day_of_7___64='Day +7 of NINJA Flag (choice=Valsartan)';
	label ntmx_day_of_7___65='Day +7 of NINJA Flag (choice=Zoledronic Acid)';
	label ntmx_day_of_7___41='Day +7 of NINJA Flag (choice=Zonisamide)';
	label supratherapeutic_vancomyci='Vancomycin >15';
	label date_of_vanc_level='Date of Supratherapeutic Vanc Level';
	label gentamicin_trough_2='Gentamicin Trough >2';
	label date_of_supratherapeutic_g='Date of Supratherapeutic Gent Level';
	label tacrolimus_level_15='Tacrolimus Level >15';
	label date_of_supratherapeutic_t='Date of Supratherapeutic Tacro Level';
	label cyclosporine_level_300='Cyclosporine Level >300';
	label date_of_supratherapeutic_c='Date of Supratherapeutic Cyclosporine Level';
	label nephrotoxic_exposures_complete='Complete?';
	label age='Age';
	label gender_assigned_at_birth='Gender assigned at birth';
	label admission_diagnosis='Hospital Admission Diagnosis';
	label admission_location_and_pri='Admission Location and Primary Service Provider';
	label date_of_hospital_admission='Date of Hospital Admission';
	label date_of_icu_admission_for='Date of ICU admission (for which they flagged for NINJA)';
	label history_of_renal_issues___1='History of Renal Issues (choice=CKD ≥ stage 3)';
	label history_of_renal_issues___2='History of Renal Issues (choice=Kidney transplant)';
	label history_of_renal_issues___3='History of Renal Issues (choice=previous AKI)';
	label history_of_renal_issues___4='History of Renal Issues (choice=single kidney)';
	label other_renal_issue='Other Renal Issue';
	label code_event_up_to_3d_prior___1='Code Event up to 3d prior to NAKI (look in media tab resuscitation record) (choice=Cardiac Arrest)';
	label code_event_up_to_3d_prior___2='Code Event up to 3d prior to NAKI (look in media tab resuscitation record) (choice=Respiratory Arrest)';
	label ecmo_during_hospitalizatio='ECMO During HOspitalization';
	label first_day_ecmo='First day ECMO ';
	label last_day_of_ecmo='Last day of ECMO';
	label or_procedure_up_to_3_days='OR procedure up to 3 days prior to NAKI (list procedure)';
	label or_estimated_blood_loss_in='OR Estimated Blood Loss (in mL)';
	label demographics_complete='Complete?';
	label ungal_level='uNGAL level ';
	label scr_day_3='sCr day -3';
	label scr_day_2='sCr day -2';
	label scr_day_1='sCr day -1';
	label scr_day_of_ninja_flag='sCr day of NINJA flag';
	label scr_day_plus1='sCr day +1';
	label scr_day2='sCr day +2';
	label scr_day3='sCr day +3';
	label scr_day4='sCr day +4';
	label scr_day5='sCr day +5';
	label scr_day6='sCr day +6';
	label scr_day7='sCr day +7';
	label lab_data_complete='Complete?';
	label date_of_icu_discharge='Date of ICU Discharge';
	label date_of_hospital_discharge='Date of Hospital Discharge ';
	label date_of_death='Date of Death (during hospital admission)';
	label date_of_first_dialysis_tre='Date of first Dialysis Treatment';
	label last_date_of_dialysis_in_h='Last Date of Dialysis in hospital';
	label dialysis_needed_after_hosp='Dialysis needed after hospital Dc';
	label indication_for_dialysis___1='Indication for Dialysis (choice=Volume Overload)';
	label indication_for_dialysis___2='Indication for Dialysis (choice=Acidosis)';
	label indication_for_dialysis___3='Indication for Dialysis (choice=Electrolyte Disturbances)';
	label indication_for_dialysis___4='Indication for Dialysis (choice=Clearance)';
	label indication_for_dialysis___5='Indication for Dialysis (choice=Other)';
	label outcomes_data_complete='Complete?';
	label dopa_day_3='Dopamine Day-3';
	label dopa_day_2='Dopamine Day-2 ';
	label dopa_day_1='Dopamine Day-1 ';
	label dopa_day_0='Dopamine Day-0';
	label dopa_day_p1='Dopamine Day +1';
	label dopa_day_p2='Dopamine Day +2';
	label dopa_day_p3='Dopamine Day plus 3';
	label dobut_day_3='Dobut Day-3';
	label dobut_day_2='Dobut Day-2';
	label dobut_day_1='Dobut Day-1';
	label dobut_day_0='Dobut Day 0';
	label dobut_day_p1='Dobut Day +1';
	label dobut_day_p2='Dobut Day +2';
	label dobut_day_p3='Dobut Day+3';
	label milrinone_day_3='Milrinone Day MInus 3';
	label milrinone_day_2='Milrinone Day Minus 2';
	label milrinone_day_1='Milrinone Day minus 1';
	label milrinone_day_0='Milrinone Day 0';
	label milrinone_day_p1='Milrinone Day Plus 1';
	label milrinone_day_p2='Milrinone Day Plus 2';
	label milrinone_day_p3='Milrinone Day Plus 3';
	label epi_day_3='Epi Day Minus 3';
	label epi_day_2='Epi Day Minus 2';
	label epi_day_1='Epi Day Minus 1';
	label epi_day_0='Epi Day 0';
	label epi_day_p1='Epi Day Plus 1';
	label epi_day_p2='Epi Day Plus 2';
	label epi_day_p3='Epi Day Plus 3';
	label norepi_day_3='Norepi Day Minus 3';
	label norepi_day_2='Norepi Day Minus 2';
	label norepi_day_1='Norepi Day Minus 1';
	label norepi_day_0='Norepi Day 0';
	label norepi_day_p1='Norepi Day Plus 1';
	label norepi_day_p2='Norepi Day Plus 2';
	label norepi_day_p3='Norepi Day Plus 3';
	label vaso_day_3='Vaso Day Minus 3';
	label vaso_day_2='Vaso Day Minus 2';
	label vaso_day_1='Vaso Day Minus 1';
	label vaso_day_0='Vaso Day Minus 0';
	label vaso_day_p1='Vaso Day Plus 1';
	label vaso_day_p2='Vaso Day Plus 2';
	label vaso_day_p3='Vaso Day Plus 3';
	label vis_information_complete='Complete?';
	format form_1_complete form_1_complete_.;
	format days_prior_to_ninja_flag___1 days_prior_to_ninja_flag___1_.;
	format days_prior_to_ninja_flag___2 days_prior_to_ninja_flag___2_.;
	format days_prior_to_ninja_flag___3 days_prior_to_ninja_flag___3_.;
	format days_prior_to_ninja_flag___4 days_prior_to_ninja_flag___4_.;
	format days_prior_to_ninja_flag___5 days_prior_to_ninja_flag___5_.;
	format days_prior_to_ninja_flag___6 days_prior_to_ninja_flag___6_.;
	format days_prior_to_ninja_flag_2___1 days_prior_to_ninja_flag_2___1_.;
	format days_prior_to_ninja_flag_2___2 days_prior_to_ninja_flag_2___2_.;
	format days_prior_to_ninja_flag_2___3 days_prior_to_ninja_flag_2___3_.;
	format days_prior_to_ninja_flag_2___4 days_prior_to_ninja_flag_2___4_.;
	format days_prior_to_ninja_flag_2___5 days_prior_to_ninja_flag_2___5_.;
	format days_prior_to_ninja_flag_2___6 days_prior_to_ninja_flag_2___6_.;
	format days_prior_to_ninja_flag_3___1 days_prior_to_ninja_flag_3___1_.;
	format days_prior_to_ninja_flag_3___2 days_prior_to_ninja_flag_3___2_.;
	format days_prior_to_ninja_flag_3___3 days_prior_to_ninja_flag_3___3_.;
	format days_prior_to_ninja_flag_3___4 days_prior_to_ninja_flag_3___4_.;
	format days_prior_to_ninja_flag_3___5 days_prior_to_ninja_flag_3___5_.;
	format days_prior_to_ninja_flag_3___6 days_prior_to_ninja_flag_3___6_.;
	format days_prior_to_ninja_flag_4___1 days_prior_to_ninja_flag_4___1_.;
	format days_prior_to_ninja_flag_4___2 days_prior_to_ninja_flag_4___2_.;
	format days_prior_to_ninja_flag_4___3 days_prior_to_ninja_flag_4___3_.;
	format days_prior_to_ninja_flag_4___4 days_prior_to_ninja_flag_4___4_.;
	format days_prior_to_ninja_flag_4___5 days_prior_to_ninja_flag_4___5_.;
	format days_prior_to_ninja_flag_4___6 days_prior_to_ninja_flag_4___6_.;
	format days_prior_to_ninja_flag_6___1 days_prior_to_ninja_flag_6___1_.;
	format days_prior_to_ninja_flag_6___2 days_prior_to_ninja_flag_6___2_.;
	format days_prior_to_ninja_flag_6___3 days_prior_to_ninja_flag_6___3_.;
	format days_prior_to_ninja_flag_6___4 days_prior_to_ninja_flag_6___4_.;
	format days_prior_to_ninja_flag_6___5 days_prior_to_ninja_flag_6___5_.;
	format days_prior_to_ninja_flag_6___6 days_prior_to_ninja_flag_6___6_.;
	format days_prior_to_ninja_flag_5___1 days_prior_to_ninja_flag_5___1_.;
	format days_prior_to_ninja_flag_5___2 days_prior_to_ninja_flag_5___2_.;
	format days_prior_to_ninja_flag_5___3 days_prior_to_ninja_flag_5___3_.;
	format days_prior_to_ninja_flag_5___4 days_prior_to_ninja_flag_5___4_.;
	format days_prior_to_ninja_flag_5___5 days_prior_to_ninja_flag_5___5_.;
	format days_prior_to_ninja_flag_5___6 days_prior_to_ninja_flag_5___6_.;
	format days_prior_to_ninja_flag_7___1 days_prior_to_ninja_flag_7___1_.;
	format days_prior_to_ninja_flag_7___2 days_prior_to_ninja_flag_7___2_.;
	format days_prior_to_ninja_flag_7___3 days_prior_to_ninja_flag_7___3_.;
	format days_prior_to_ninja_flag_7___4 days_prior_to_ninja_flag_7___4_.;
	format days_prior_to_ninja_flag_7___5 days_prior_to_ninja_flag_7___5_.;
	format days_prior_to_ninja_flag_7___6 days_prior_to_ninja_flag_7___6_.;
	format days_prior_to_ninja_flag_8___1 days_prior_to_ninja_flag_8___1_.;
	format days_prior_to_ninja_flag_8___2 days_prior_to_ninja_flag_8___2_.;
	format days_prior_to_ninja_flag_8___3 days_prior_to_ninja_flag_8___3_.;
	format days_prior_to_ninja_flag_8___4 days_prior_to_ninja_flag_8___4_.;
	format days_prior_to_ninja_flag_8___5 days_prior_to_ninja_flag_8___5_.;
	format days_prior_to_ninja_flag_8___6 days_prior_to_ninja_flag_8___6_.;
	format days_prior_to_ninja_flag_9___1 days_prior_to_ninja_flag_9___1_.;
	format days_prior_to_ninja_flag_9___2 days_prior_to_ninja_flag_9___2_.;
	format days_prior_to_ninja_flag_9___3 days_prior_to_ninja_flag_9___3_.;
	format days_prior_to_ninja_flag_9___4 days_prior_to_ninja_flag_9___4_.;
	format days_prior_to_ninja_flag_9___5 days_prior_to_ninja_flag_9___5_.;
	format days_prior_to_ninja_flag_9___6 days_prior_to_ninja_flag_9___6_.;
	format days_prior_to_ninja__v_0 days_prior_to_ninja__v_0_.;
	format days_prior_to_ninja__v_1 days_prior_to_ninja__v_1_.;
	format days_prior_to_ninja__v_2 days_prior_to_ninja__v_2_.;
	format days_prior_to_ninja__v_3 days_prior_to_ninja__v_3_.;
	format days_prior_to_ninja__v_4 days_prior_to_ninja__v_4_.;
	format days_prior_to_ninja__v_5 days_prior_to_ninja__v_5_.;
	format days_prior_to_ninja__v_6 days_prior_to_ninja__v_6_.;
	format days_prior_to_ninja__v_7 days_prior_to_ninja__v_7_.;
	format days_prior_to_ninja__v_8 days_prior_to_ninja__v_8_.;
	format days_prior_to_ninja__v_9 days_prior_to_ninja__v_9_.;
	format days_prior_to_ninja__v_10 days_prior_to_ninja__v_10_.;
	format days_prior_to_ninja__v_11 days_prior_to_ninja__v_11_.;
	format renal_angina_index_c_v_12 renal_angina_index_c_v_12_.;
	format ntmx_3_days_prior___48 ntmx_3_days_prior___48_.;
	format ntmx_3_days_prior___12 ntmx_3_days_prior___12_.;
	format ntmx_3_days_prior___49 ntmx_3_days_prior___49_.;
	format ntmx_3_days_prior___13 ntmx_3_days_prior___13_.;
	format ntmx_3_days_prior___50 ntmx_3_days_prior___50_.;
	format ntmx_3_days_prior___14 ntmx_3_days_prior___14_.;
	format ntmx_3_days_prior___15 ntmx_3_days_prior___15_.;
	format ntmx_3_days_prior___51 ntmx_3_days_prior___51_.;
	format ntmx_3_days_prior___44 ntmx_3_days_prior___44_.;
	format ntmx_3_days_prior___16 ntmx_3_days_prior___16_.;
	format ntmx_3_days_prior___17 ntmx_3_days_prior___17_.;
	format ntmx_3_days_prior___18 ntmx_3_days_prior___18_.;
	format ntmx_3_days_prior___19 ntmx_3_days_prior___19_.;
	format ntmx_3_days_prior___20 ntmx_3_days_prior___20_.;
	format ntmx_3_days_prior___21 ntmx_3_days_prior___21_.;
	format ntmx_3_days_prior___22 ntmx_3_days_prior___22_.;
	format ntmx_3_days_prior___52 ntmx_3_days_prior___52_.;
	format ntmx_3_days_prior___42 ntmx_3_days_prior___42_.;
	format ntmx_3_days_prior___53 ntmx_3_days_prior___53_.;
	format ntmx_3_days_prior___23 ntmx_3_days_prior___23_.;
	format ntmx_3_days_prior___24 ntmx_3_days_prior___24_.;
	format ntmx_3_days_prior___25 ntmx_3_days_prior___25_.;
	format ntmx_3_days_prior___26 ntmx_3_days_prior___26_.;
	format ntmx_3_days_prior___27 ntmx_3_days_prior___27_.;
	format ntmx_3_days_prior___47 ntmx_3_days_prior___47_.;
	format ntmx_3_days_prior___30 ntmx_3_days_prior___30_.;
	format ntmx_3_days_prior___28 ntmx_3_days_prior___28_.;
	format ntmx_3_days_prior___54 ntmx_3_days_prior___54_.;
	format ntmx_3_days_prior___43 ntmx_3_days_prior___43_.;
	format ntmx_3_days_prior___29 ntmx_3_days_prior___29_.;
	format ntmx_3_days_prior___55 ntmx_3_days_prior___55_.;
	format ntmx_3_days_prior___56 ntmx_3_days_prior___56_.;
	format ntmx_3_days_prior___31 ntmx_3_days_prior___31_.;
	format ntmx_3_days_prior___57 ntmx_3_days_prior___57_.;
	format ntmx_3_days_prior___32 ntmx_3_days_prior___32_.;
	format ntmx_3_days_prior___58 ntmx_3_days_prior___58_.;
	format ntmx_3_days_prior___59 ntmx_3_days_prior___59_.;
	format ntmx_3_days_prior___60 ntmx_3_days_prior___60_.;
	format ntmx_3_days_prior___33 ntmx_3_days_prior___33_.;
	format ntmx_3_days_prior___61 ntmx_3_days_prior___61_.;
	format ntmx_3_days_prior___62 ntmx_3_days_prior___62_.;
	format ntmx_3_days_prior___34 ntmx_3_days_prior___34_.;
	format ntmx_3_days_prior___35 ntmx_3_days_prior___35_.;
	format ntmx_3_days_prior___36 ntmx_3_days_prior___36_.;
	format ntmx_3_days_prior___63 ntmx_3_days_prior___63_.;
	format ntmx_3_days_prior___37 ntmx_3_days_prior___37_.;
	format ntmx_3_days_prior___38 ntmx_3_days_prior___38_.;
	format ntmx_3_days_prior___39 ntmx_3_days_prior___39_.;
	format ntmx_3_days_prior___40 ntmx_3_days_prior___40_.;
	format ntmx_3_days_prior___45 ntmx_3_days_prior___45_.;
	format ntmx_3_days_prior___46 ntmx_3_days_prior___46_.;
	format ntmx_3_days_prior___64 ntmx_3_days_prior___64_.;
	format ntmx_3_days_prior___65 ntmx_3_days_prior___65_.;
	format ntmx_3_days_prior___41 ntmx_3_days_prior___41_.;
	format ntmx_2_days_prior___48 ntmx_2_days_prior___48_.;
	format ntmx_2_days_prior___12 ntmx_2_days_prior___12_.;
	format ntmx_2_days_prior___49 ntmx_2_days_prior___49_.;
	format ntmx_2_days_prior___13 ntmx_2_days_prior___13_.;
	format ntmx_2_days_prior___50 ntmx_2_days_prior___50_.;
	format ntmx_2_days_prior___14 ntmx_2_days_prior___14_.;
	format ntmx_2_days_prior___15 ntmx_2_days_prior___15_.;
	format ntmx_2_days_prior___51 ntmx_2_days_prior___51_.;
	format ntmx_2_days_prior___44 ntmx_2_days_prior___44_.;
	format ntmx_2_days_prior___16 ntmx_2_days_prior___16_.;
	format ntmx_2_days_prior___17 ntmx_2_days_prior___17_.;
	format ntmx_2_days_prior___18 ntmx_2_days_prior___18_.;
	format ntmx_2_days_prior___19 ntmx_2_days_prior___19_.;
	format ntmx_2_days_prior___20 ntmx_2_days_prior___20_.;
	format ntmx_2_days_prior___21 ntmx_2_days_prior___21_.;
	format ntmx_2_days_prior___22 ntmx_2_days_prior___22_.;
	format ntmx_2_days_prior___52 ntmx_2_days_prior___52_.;
	format ntmx_2_days_prior___42 ntmx_2_days_prior___42_.;
	format ntmx_2_days_prior___53 ntmx_2_days_prior___53_.;
	format ntmx_2_days_prior___23 ntmx_2_days_prior___23_.;
	format ntmx_2_days_prior___24 ntmx_2_days_prior___24_.;
	format ntmx_2_days_prior___25 ntmx_2_days_prior___25_.;
	format ntmx_2_days_prior___26 ntmx_2_days_prior___26_.;
	format ntmx_2_days_prior___27 ntmx_2_days_prior___27_.;
	format ntmx_2_days_prior___47 ntmx_2_days_prior___47_.;
	format ntmx_2_days_prior___30 ntmx_2_days_prior___30_.;
	format ntmx_2_days_prior___28 ntmx_2_days_prior___28_.;
	format ntmx_2_days_prior___54 ntmx_2_days_prior___54_.;
	format ntmx_2_days_prior___43 ntmx_2_days_prior___43_.;
	format ntmx_2_days_prior___29 ntmx_2_days_prior___29_.;
	format ntmx_2_days_prior___55 ntmx_2_days_prior___55_.;
	format ntmx_2_days_prior___56 ntmx_2_days_prior___56_.;
	format ntmx_2_days_prior___31 ntmx_2_days_prior___31_.;
	format ntmx_2_days_prior___57 ntmx_2_days_prior___57_.;
	format ntmx_2_days_prior___32 ntmx_2_days_prior___32_.;
	format ntmx_2_days_prior___58 ntmx_2_days_prior___58_.;
	format ntmx_2_days_prior___59 ntmx_2_days_prior___59_.;
	format ntmx_2_days_prior___60 ntmx_2_days_prior___60_.;
	format ntmx_2_days_prior___33 ntmx_2_days_prior___33_.;
	format ntmx_2_days_prior___61 ntmx_2_days_prior___61_.;
	format ntmx_2_days_prior___62 ntmx_2_days_prior___62_.;
	format ntmx_2_days_prior___34 ntmx_2_days_prior___34_.;
	format ntmx_2_days_prior___35 ntmx_2_days_prior___35_.;
	format ntmx_2_days_prior___36 ntmx_2_days_prior___36_.;
	format ntmx_2_days_prior___63 ntmx_2_days_prior___63_.;
	format ntmx_2_days_prior___37 ntmx_2_days_prior___37_.;
	format ntmx_2_days_prior___38 ntmx_2_days_prior___38_.;
	format ntmx_2_days_prior___39 ntmx_2_days_prior___39_.;
	format ntmx_2_days_prior___40 ntmx_2_days_prior___40_.;
	format ntmx_2_days_prior___45 ntmx_2_days_prior___45_.;
	format ntmx_2_days_prior___46 ntmx_2_days_prior___46_.;
	format ntmx_2_days_prior___64 ntmx_2_days_prior___64_.;
	format ntmx_2_days_prior___65 ntmx_2_days_prior___65_.;
	format ntmx_2_days_prior___41 ntmx_2_days_prior___41_.;
	format ntmx_1_days_prior___48 ntmx_1_days_prior___48_.;
	format ntmx_1_days_prior___12 ntmx_1_days_prior___12_.;
	format ntmx_1_days_prior___49 ntmx_1_days_prior___49_.;
	format ntmx_1_days_prior___13 ntmx_1_days_prior___13_.;
	format ntmx_1_days_prior___50 ntmx_1_days_prior___50_.;
	format ntmx_1_days_prior___14 ntmx_1_days_prior___14_.;
	format ntmx_1_days_prior___15 ntmx_1_days_prior___15_.;
	format ntmx_1_days_prior___51 ntmx_1_days_prior___51_.;
	format ntmx_1_days_prior___44 ntmx_1_days_prior___44_.;
	format ntmx_1_days_prior___16 ntmx_1_days_prior___16_.;
	format ntmx_1_days_prior___17 ntmx_1_days_prior___17_.;
	format ntmx_1_days_prior___18 ntmx_1_days_prior___18_.;
	format ntmx_1_days_prior___19 ntmx_1_days_prior___19_.;
	format ntmx_1_days_prior___20 ntmx_1_days_prior___20_.;
	format ntmx_1_days_prior___21 ntmx_1_days_prior___21_.;
	format ntmx_1_days_prior___22 ntmx_1_days_prior___22_.;
	format ntmx_1_days_prior___52 ntmx_1_days_prior___52_.;
	format ntmx_1_days_prior___42 ntmx_1_days_prior___42_.;
	format ntmx_1_days_prior___53 ntmx_1_days_prior___53_.;
	format ntmx_1_days_prior___23 ntmx_1_days_prior___23_.;
	format ntmx_1_days_prior___24 ntmx_1_days_prior___24_.;
	format ntmx_1_days_prior___25 ntmx_1_days_prior___25_.;
	format ntmx_1_days_prior___26 ntmx_1_days_prior___26_.;
	format ntmx_1_days_prior___27 ntmx_1_days_prior___27_.;
	format ntmx_1_days_prior___47 ntmx_1_days_prior___47_.;
	format ntmx_1_days_prior___30 ntmx_1_days_prior___30_.;
	format ntmx_1_days_prior___28 ntmx_1_days_prior___28_.;
	format ntmx_1_days_prior___54 ntmx_1_days_prior___54_.;
	format ntmx_1_days_prior___43 ntmx_1_days_prior___43_.;
	format ntmx_1_days_prior___29 ntmx_1_days_prior___29_.;
	format ntmx_1_days_prior___55 ntmx_1_days_prior___55_.;
	format ntmx_1_days_prior___56 ntmx_1_days_prior___56_.;
	format ntmx_1_days_prior___31 ntmx_1_days_prior___31_.;
	format ntmx_1_days_prior___57 ntmx_1_days_prior___57_.;
	format ntmx_1_days_prior___32 ntmx_1_days_prior___32_.;
	format ntmx_1_days_prior___58 ntmx_1_days_prior___58_.;
	format ntmx_1_days_prior___59 ntmx_1_days_prior___59_.;
	format ntmx_1_days_prior___60 ntmx_1_days_prior___60_.;
	format ntmx_1_days_prior___33 ntmx_1_days_prior___33_.;
	format ntmx_1_days_prior___61 ntmx_1_days_prior___61_.;
	format ntmx_1_days_prior___62 ntmx_1_days_prior___62_.;
	format ntmx_1_days_prior___34 ntmx_1_days_prior___34_.;
	format ntmx_1_days_prior___35 ntmx_1_days_prior___35_.;
	format ntmx_1_days_prior___36 ntmx_1_days_prior___36_.;
	format ntmx_1_days_prior___63 ntmx_1_days_prior___63_.;
	format ntmx_1_days_prior___37 ntmx_1_days_prior___37_.;
	format ntmx_1_days_prior___38 ntmx_1_days_prior___38_.;
	format ntmx_1_days_prior___39 ntmx_1_days_prior___39_.;
	format ntmx_1_days_prior___40 ntmx_1_days_prior___40_.;
	format ntmx_1_days_prior___45 ntmx_1_days_prior___45_.;
	format ntmx_1_days_prior___46 ntmx_1_days_prior___46_.;
	format ntmx_1_days_prior___64 ntmx_1_days_prior___64_.;
	format ntmx_1_days_prior___65 ntmx_1_days_prior___65_.;
	format ntmx_1_days_prior___41 ntmx_1_days_prior___41_.;
	format ntmx_day_of___48 ntmx_day_of___48_.;
	format ntmx_day_of___12 ntmx_day_of___12_.;
	format ntmx_day_of___49 ntmx_day_of___49_.;
	format ntmx_day_of___13 ntmx_day_of___13_.;
	format ntmx_day_of___50 ntmx_day_of___50_.;
	format ntmx_day_of___14 ntmx_day_of___14_.;
	format ntmx_day_of___15 ntmx_day_of___15_.;
	format ntmx_day_of___51 ntmx_day_of___51_.;
	format ntmx_day_of___44 ntmx_day_of___44_.;
	format ntmx_day_of___16 ntmx_day_of___16_.;
	format ntmx_day_of___17 ntmx_day_of___17_.;
	format ntmx_day_of___18 ntmx_day_of___18_.;
	format ntmx_day_of___19 ntmx_day_of___19_.;
	format ntmx_day_of___20 ntmx_day_of___20_.;
	format ntmx_day_of___21 ntmx_day_of___21_.;
	format ntmx_day_of___22 ntmx_day_of___22_.;
	format ntmx_day_of___52 ntmx_day_of___52_.;
	format ntmx_day_of___42 ntmx_day_of___42_.;
	format ntmx_day_of___53 ntmx_day_of___53_.;
	format ntmx_day_of___23 ntmx_day_of___23_.;
	format ntmx_day_of___24 ntmx_day_of___24_.;
	format ntmx_day_of___25 ntmx_day_of___25_.;
	format ntmx_day_of___26 ntmx_day_of___26_.;
	format ntmx_day_of___27 ntmx_day_of___27_.;
	format ntmx_day_of___47 ntmx_day_of___47_.;
	format ntmx_day_of___30 ntmx_day_of___30_.;
	format ntmx_day_of___28 ntmx_day_of___28_.;
	format ntmx_day_of___54 ntmx_day_of___54_.;
	format ntmx_day_of___43 ntmx_day_of___43_.;
	format ntmx_day_of___29 ntmx_day_of___29_.;
	format ntmx_day_of___55 ntmx_day_of___55_.;
	format ntmx_day_of___56 ntmx_day_of___56_.;
	format ntmx_day_of___31 ntmx_day_of___31_.;
	format ntmx_day_of___57 ntmx_day_of___57_.;
	format ntmx_day_of___32 ntmx_day_of___32_.;
	format ntmx_day_of___58 ntmx_day_of___58_.;
	format ntmx_day_of___59 ntmx_day_of___59_.;
	format ntmx_day_of___60 ntmx_day_of___60_.;
	format ntmx_day_of___33 ntmx_day_of___33_.;
	format ntmx_day_of___61 ntmx_day_of___61_.;
	format ntmx_day_of___62 ntmx_day_of___62_.;
	format ntmx_day_of___34 ntmx_day_of___34_.;
	format ntmx_day_of___35 ntmx_day_of___35_.;
	format ntmx_day_of___36 ntmx_day_of___36_.;
	format ntmx_day_of___63 ntmx_day_of___63_.;
	format ntmx_day_of___37 ntmx_day_of___37_.;
	format ntmx_day_of___38 ntmx_day_of___38_.;
	format ntmx_day_of___39 ntmx_day_of___39_.;
	format ntmx_day_of___40 ntmx_day_of___40_.;
	format ntmx_day_of___45 ntmx_day_of___45_.;
	format ntmx_day_of___46 ntmx_day_of___46_.;
	format ntmx_day_of___64 ntmx_day_of___64_.;
	format ntmx_day_of___65 ntmx_day_of___65_.;
	format ntmx_day_of___41 ntmx_day_of___41_.;
	format ntmx_day_of_1___48 ntmx_day_of_1___48_.;
	format ntmx_day_of_1___12 ntmx_day_of_1___12_.;
	format ntmx_day_of_1___49 ntmx_day_of_1___49_.;
	format ntmx_day_of_1___13 ntmx_day_of_1___13_.;
	format ntmx_day_of_1___50 ntmx_day_of_1___50_.;
	format ntmx_day_of_1___14 ntmx_day_of_1___14_.;
	format ntmx_day_of_1___15 ntmx_day_of_1___15_.;
	format ntmx_day_of_1___51 ntmx_day_of_1___51_.;
	format ntmx_day_of_1___44 ntmx_day_of_1___44_.;
	format ntmx_day_of_1___16 ntmx_day_of_1___16_.;
	format ntmx_day_of_1___17 ntmx_day_of_1___17_.;
	format ntmx_day_of_1___18 ntmx_day_of_1___18_.;
	format ntmx_day_of_1___19 ntmx_day_of_1___19_.;
	format ntmx_day_of_1___20 ntmx_day_of_1___20_.;
	format ntmx_day_of_1___21 ntmx_day_of_1___21_.;
	format ntmx_day_of_1___22 ntmx_day_of_1___22_.;
	format ntmx_day_of_1___52 ntmx_day_of_1___52_.;
	format ntmx_day_of_1___42 ntmx_day_of_1___42_.;
	format ntmx_day_of_1___53 ntmx_day_of_1___53_.;
	format ntmx_day_of_1___23 ntmx_day_of_1___23_.;
	format ntmx_day_of_1___24 ntmx_day_of_1___24_.;
	format ntmx_day_of_1___25 ntmx_day_of_1___25_.;
	format ntmx_day_of_1___26 ntmx_day_of_1___26_.;
	format ntmx_day_of_1___27 ntmx_day_of_1___27_.;
	format ntmx_day_of_1___47 ntmx_day_of_1___47_.;
	format ntmx_day_of_1___30 ntmx_day_of_1___30_.;
	format ntmx_day_of_1___28 ntmx_day_of_1___28_.;
	format ntmx_day_of_1___54 ntmx_day_of_1___54_.;
	format ntmx_day_of_1___43 ntmx_day_of_1___43_.;
	format ntmx_day_of_1___29 ntmx_day_of_1___29_.;
	format ntmx_day_of_1___55 ntmx_day_of_1___55_.;
	format ntmx_day_of_1___56 ntmx_day_of_1___56_.;
	format ntmx_day_of_1___31 ntmx_day_of_1___31_.;
	format ntmx_day_of_1___57 ntmx_day_of_1___57_.;
	format ntmx_day_of_1___32 ntmx_day_of_1___32_.;
	format ntmx_day_of_1___58 ntmx_day_of_1___58_.;
	format ntmx_day_of_1___59 ntmx_day_of_1___59_.;
	format ntmx_day_of_1___60 ntmx_day_of_1___60_.;
	format ntmx_day_of_1___33 ntmx_day_of_1___33_.;
	format ntmx_day_of_1___61 ntmx_day_of_1___61_.;
	format ntmx_day_of_1___62 ntmx_day_of_1___62_.;
	format ntmx_day_of_1___34 ntmx_day_of_1___34_.;
	format ntmx_day_of_1___35 ntmx_day_of_1___35_.;
	format ntmx_day_of_1___36 ntmx_day_of_1___36_.;
	format ntmx_day_of_1___63 ntmx_day_of_1___63_.;
	format ntmx_day_of_1___37 ntmx_day_of_1___37_.;
	format ntmx_day_of_1___38 ntmx_day_of_1___38_.;
	format ntmx_day_of_1___39 ntmx_day_of_1___39_.;
	format ntmx_day_of_1___40 ntmx_day_of_1___40_.;
	format ntmx_day_of_1___45 ntmx_day_of_1___45_.;
	format ntmx_day_of_1___46 ntmx_day_of_1___46_.;
	format ntmx_day_of_1___64 ntmx_day_of_1___64_.;
	format ntmx_day_of_1___65 ntmx_day_of_1___65_.;
	format ntmx_day_of_1___41 ntmx_day_of_1___41_.;
	format ntmx_day_of_2___48 ntmx_day_of_2___48_.;
	format ntmx_day_of_2___12 ntmx_day_of_2___12_.;
	format ntmx_day_of_2___49 ntmx_day_of_2___49_.;
	format ntmx_day_of_2___13 ntmx_day_of_2___13_.;
	format ntmx_day_of_2___50 ntmx_day_of_2___50_.;
	format ntmx_day_of_2___14 ntmx_day_of_2___14_.;
	format ntmx_day_of_2___15 ntmx_day_of_2___15_.;
	format ntmx_day_of_2___51 ntmx_day_of_2___51_.;
	format ntmx_day_of_2___44 ntmx_day_of_2___44_.;
	format ntmx_day_of_2___16 ntmx_day_of_2___16_.;
	format ntmx_day_of_2___17 ntmx_day_of_2___17_.;
	format ntmx_day_of_2___18 ntmx_day_of_2___18_.;
	format ntmx_day_of_2___19 ntmx_day_of_2___19_.;
	format ntmx_day_of_2___20 ntmx_day_of_2___20_.;
	format ntmx_day_of_2___21 ntmx_day_of_2___21_.;
	format ntmx_day_of_2___22 ntmx_day_of_2___22_.;
	format ntmx_day_of_2___52 ntmx_day_of_2___52_.;
	format ntmx_day_of_2___42 ntmx_day_of_2___42_.;
	format ntmx_day_of_2___53 ntmx_day_of_2___53_.;
	format ntmx_day_of_2___23 ntmx_day_of_2___23_.;
	format ntmx_day_of_2___24 ntmx_day_of_2___24_.;
	format ntmx_day_of_2___25 ntmx_day_of_2___25_.;
	format ntmx_day_of_2___26 ntmx_day_of_2___26_.;
	format ntmx_day_of_2___27 ntmx_day_of_2___27_.;
	format ntmx_day_of_2___47 ntmx_day_of_2___47_.;
	format ntmx_day_of_2___30 ntmx_day_of_2___30_.;
	format ntmx_day_of_2___28 ntmx_day_of_2___28_.;
	format ntmx_day_of_2___54 ntmx_day_of_2___54_.;
	format ntmx_day_of_2___43 ntmx_day_of_2___43_.;
	format ntmx_day_of_2___29 ntmx_day_of_2___29_.;
	format ntmx_day_of_2___55 ntmx_day_of_2___55_.;
	format ntmx_day_of_2___56 ntmx_day_of_2___56_.;
	format ntmx_day_of_2___31 ntmx_day_of_2___31_.;
	format ntmx_day_of_2___57 ntmx_day_of_2___57_.;
	format ntmx_day_of_2___32 ntmx_day_of_2___32_.;
	format ntmx_day_of_2___58 ntmx_day_of_2___58_.;
	format ntmx_day_of_2___59 ntmx_day_of_2___59_.;
	format ntmx_day_of_2___60 ntmx_day_of_2___60_.;
	format ntmx_day_of_2___33 ntmx_day_of_2___33_.;
	format ntmx_day_of_2___61 ntmx_day_of_2___61_.;
	format ntmx_day_of_2___62 ntmx_day_of_2___62_.;
	format ntmx_day_of_2___34 ntmx_day_of_2___34_.;
	format ntmx_day_of_2___35 ntmx_day_of_2___35_.;
	format ntmx_day_of_2___36 ntmx_day_of_2___36_.;
	format ntmx_day_of_2___63 ntmx_day_of_2___63_.;
	format ntmx_day_of_2___37 ntmx_day_of_2___37_.;
	format ntmx_day_of_2___38 ntmx_day_of_2___38_.;
	format ntmx_day_of_2___39 ntmx_day_of_2___39_.;
	format ntmx_day_of_2___40 ntmx_day_of_2___40_.;
	format ntmx_day_of_2___45 ntmx_day_of_2___45_.;
	format ntmx_day_of_2___46 ntmx_day_of_2___46_.;
	format ntmx_day_of_2___64 ntmx_day_of_2___64_.;
	format ntmx_day_of_2___65 ntmx_day_of_2___65_.;
	format ntmx_day_of_2___41 ntmx_day_of_2___41_.;
	format ntmx_day_of_3___48 ntmx_day_of_3___48_.;
	format ntmx_day_of_3___12 ntmx_day_of_3___12_.;
	format ntmx_day_of_3___49 ntmx_day_of_3___49_.;
	format ntmx_day_of_3___13 ntmx_day_of_3___13_.;
	format ntmx_day_of_3___50 ntmx_day_of_3___50_.;
	format ntmx_day_of_3___14 ntmx_day_of_3___14_.;
	format ntmx_day_of_3___15 ntmx_day_of_3___15_.;
	format ntmx_day_of_3___51 ntmx_day_of_3___51_.;
	format ntmx_day_of_3___44 ntmx_day_of_3___44_.;
	format ntmx_day_of_3___16 ntmx_day_of_3___16_.;
	format ntmx_day_of_3___17 ntmx_day_of_3___17_.;
	format ntmx_day_of_3___18 ntmx_day_of_3___18_.;
	format ntmx_day_of_3___19 ntmx_day_of_3___19_.;
	format ntmx_day_of_3___20 ntmx_day_of_3___20_.;
	format ntmx_day_of_3___21 ntmx_day_of_3___21_.;
	format ntmx_day_of_3___22 ntmx_day_of_3___22_.;
	format ntmx_day_of_3___52 ntmx_day_of_3___52_.;
	format ntmx_day_of_3___42 ntmx_day_of_3___42_.;
	format ntmx_day_of_3___53 ntmx_day_of_3___53_.;
	format ntmx_day_of_3___23 ntmx_day_of_3___23_.;
	format ntmx_day_of_3___24 ntmx_day_of_3___24_.;
	format ntmx_day_of_3___25 ntmx_day_of_3___25_.;
	format ntmx_day_of_3___26 ntmx_day_of_3___26_.;
	format ntmx_day_of_3___27 ntmx_day_of_3___27_.;
	format ntmx_day_of_3___47 ntmx_day_of_3___47_.;
	format ntmx_day_of_3___30 ntmx_day_of_3___30_.;
	format ntmx_day_of_3___28 ntmx_day_of_3___28_.;
	format ntmx_day_of_3___54 ntmx_day_of_3___54_.;
	format ntmx_day_of_3___43 ntmx_day_of_3___43_.;
	format ntmx_day_of_3___29 ntmx_day_of_3___29_.;
	format ntmx_day_of_3___55 ntmx_day_of_3___55_.;
	format ntmx_day_of_3___56 ntmx_day_of_3___56_.;
	format ntmx_day_of_3___31 ntmx_day_of_3___31_.;
	format ntmx_day_of_3___57 ntmx_day_of_3___57_.;
	format ntmx_day_of_3___32 ntmx_day_of_3___32_.;
	format ntmx_day_of_3___58 ntmx_day_of_3___58_.;
	format ntmx_day_of_3___59 ntmx_day_of_3___59_.;
	format ntmx_day_of_3___60 ntmx_day_of_3___60_.;
	format ntmx_day_of_3___33 ntmx_day_of_3___33_.;
	format ntmx_day_of_3___61 ntmx_day_of_3___61_.;
	format ntmx_day_of_3___62 ntmx_day_of_3___62_.;
	format ntmx_day_of_3___34 ntmx_day_of_3___34_.;
	format ntmx_day_of_3___35 ntmx_day_of_3___35_.;
	format ntmx_day_of_3___36 ntmx_day_of_3___36_.;
	format ntmx_day_of_3___63 ntmx_day_of_3___63_.;
	format ntmx_day_of_3___37 ntmx_day_of_3___37_.;
	format ntmx_day_of_3___38 ntmx_day_of_3___38_.;
	format ntmx_day_of_3___39 ntmx_day_of_3___39_.;
	format ntmx_day_of_3___40 ntmx_day_of_3___40_.;
	format ntmx_day_of_3___45 ntmx_day_of_3___45_.;
	format ntmx_day_of_3___46 ntmx_day_of_3___46_.;
	format ntmx_day_of_3___64 ntmx_day_of_3___64_.;
	format ntmx_day_of_3___65 ntmx_day_of_3___65_.;
	format ntmx_day_of_3___41 ntmx_day_of_3___41_.;
	format ntmx_day_of_4___48 ntmx_day_of_4___48_.;
	format ntmx_day_of_4___12 ntmx_day_of_4___12_.;
	format ntmx_day_of_4___49 ntmx_day_of_4___49_.;
	format ntmx_day_of_4___13 ntmx_day_of_4___13_.;
	format ntmx_day_of_4___50 ntmx_day_of_4___50_.;
	format ntmx_day_of_4___14 ntmx_day_of_4___14_.;
	format ntmx_day_of_4___15 ntmx_day_of_4___15_.;
	format ntmx_day_of_4___51 ntmx_day_of_4___51_.;
	format ntmx_day_of_4___44 ntmx_day_of_4___44_.;
	format ntmx_day_of_4___16 ntmx_day_of_4___16_.;
	format ntmx_day_of_4___17 ntmx_day_of_4___17_.;
	format ntmx_day_of_4___18 ntmx_day_of_4___18_.;
	format ntmx_day_of_4___19 ntmx_day_of_4___19_.;
	format ntmx_day_of_4___20 ntmx_day_of_4___20_.;
	format ntmx_day_of_4___21 ntmx_day_of_4___21_.;
	format ntmx_day_of_4___22 ntmx_day_of_4___22_.;
	format ntmx_day_of_4___52 ntmx_day_of_4___52_.;
	format ntmx_day_of_4___42 ntmx_day_of_4___42_.;
	format ntmx_day_of_4___53 ntmx_day_of_4___53_.;
	format ntmx_day_of_4___23 ntmx_day_of_4___23_.;
	format ntmx_day_of_4___24 ntmx_day_of_4___24_.;
	format ntmx_day_of_4___25 ntmx_day_of_4___25_.;
	format ntmx_day_of_4___26 ntmx_day_of_4___26_.;
	format ntmx_day_of_4___27 ntmx_day_of_4___27_.;
	format ntmx_day_of_4___47 ntmx_day_of_4___47_.;
	format ntmx_day_of_4___30 ntmx_day_of_4___30_.;
	format ntmx_day_of_4___28 ntmx_day_of_4___28_.;
	format ntmx_day_of_4___54 ntmx_day_of_4___54_.;
	format ntmx_day_of_4___43 ntmx_day_of_4___43_.;
	format ntmx_day_of_4___29 ntmx_day_of_4___29_.;
	format ntmx_day_of_4___55 ntmx_day_of_4___55_.;
	format ntmx_day_of_4___56 ntmx_day_of_4___56_.;
	format ntmx_day_of_4___31 ntmx_day_of_4___31_.;
	format ntmx_day_of_4___57 ntmx_day_of_4___57_.;
	format ntmx_day_of_4___32 ntmx_day_of_4___32_.;
	format ntmx_day_of_4___58 ntmx_day_of_4___58_.;
	format ntmx_day_of_4___59 ntmx_day_of_4___59_.;
	format ntmx_day_of_4___60 ntmx_day_of_4___60_.;
	format ntmx_day_of_4___33 ntmx_day_of_4___33_.;
	format ntmx_day_of_4___61 ntmx_day_of_4___61_.;
	format ntmx_day_of_4___62 ntmx_day_of_4___62_.;
	format ntmx_day_of_4___34 ntmx_day_of_4___34_.;
	format ntmx_day_of_4___35 ntmx_day_of_4___35_.;
	format ntmx_day_of_4___36 ntmx_day_of_4___36_.;
	format ntmx_day_of_4___63 ntmx_day_of_4___63_.;
	format ntmx_day_of_4___37 ntmx_day_of_4___37_.;
	format ntmx_day_of_4___38 ntmx_day_of_4___38_.;
	format ntmx_day_of_4___39 ntmx_day_of_4___39_.;
	format ntmx_day_of_4___40 ntmx_day_of_4___40_.;
	format ntmx_day_of_4___45 ntmx_day_of_4___45_.;
	format ntmx_day_of_4___46 ntmx_day_of_4___46_.;
	format ntmx_day_of_4___64 ntmx_day_of_4___64_.;
	format ntmx_day_of_4___65 ntmx_day_of_4___65_.;
	format ntmx_day_of_4___41 ntmx_day_of_4___41_.;
	format ntmx_day_of_5___48 ntmx_day_of_5___48_.;
	format ntmx_day_of_5___12 ntmx_day_of_5___12_.;
	format ntmx_day_of_5___49 ntmx_day_of_5___49_.;
	format ntmx_day_of_5___13 ntmx_day_of_5___13_.;
	format ntmx_day_of_5___50 ntmx_day_of_5___50_.;
	format ntmx_day_of_5___14 ntmx_day_of_5___14_.;
	format ntmx_day_of_5___15 ntmx_day_of_5___15_.;
	format ntmx_day_of_5___51 ntmx_day_of_5___51_.;
	format ntmx_day_of_5___44 ntmx_day_of_5___44_.;
	format ntmx_day_of_5___16 ntmx_day_of_5___16_.;
	format ntmx_day_of_5___17 ntmx_day_of_5___17_.;
	format ntmx_day_of_5___18 ntmx_day_of_5___18_.;
	format ntmx_day_of_5___19 ntmx_day_of_5___19_.;
	format ntmx_day_of_5___20 ntmx_day_of_5___20_.;
	format ntmx_day_of_5___21 ntmx_day_of_5___21_.;
	format ntmx_day_of_5___22 ntmx_day_of_5___22_.;
	format ntmx_day_of_5___52 ntmx_day_of_5___52_.;
	format ntmx_day_of_5___42 ntmx_day_of_5___42_.;
	format ntmx_day_of_5___53 ntmx_day_of_5___53_.;
	format ntmx_day_of_5___23 ntmx_day_of_5___23_.;
	format ntmx_day_of_5___24 ntmx_day_of_5___24_.;
	format ntmx_day_of_5___25 ntmx_day_of_5___25_.;
	format ntmx_day_of_5___26 ntmx_day_of_5___26_.;
	format ntmx_day_of_5___27 ntmx_day_of_5___27_.;
	format ntmx_day_of_5___47 ntmx_day_of_5___47_.;
	format ntmx_day_of_5___30 ntmx_day_of_5___30_.;
	format ntmx_day_of_5___28 ntmx_day_of_5___28_.;
	format ntmx_day_of_5___54 ntmx_day_of_5___54_.;
	format ntmx_day_of_5___43 ntmx_day_of_5___43_.;
	format ntmx_day_of_5___29 ntmx_day_of_5___29_.;
	format ntmx_day_of_5___55 ntmx_day_of_5___55_.;
	format ntmx_day_of_5___56 ntmx_day_of_5___56_.;
	format ntmx_day_of_5___31 ntmx_day_of_5___31_.;
	format ntmx_day_of_5___57 ntmx_day_of_5___57_.;
	format ntmx_day_of_5___32 ntmx_day_of_5___32_.;
	format ntmx_day_of_5___58 ntmx_day_of_5___58_.;
	format ntmx_day_of_5___59 ntmx_day_of_5___59_.;
	format ntmx_day_of_5___60 ntmx_day_of_5___60_.;
	format ntmx_day_of_5___33 ntmx_day_of_5___33_.;
	format ntmx_day_of_5___61 ntmx_day_of_5___61_.;
	format ntmx_day_of_5___62 ntmx_day_of_5___62_.;
	format ntmx_day_of_5___34 ntmx_day_of_5___34_.;
	format ntmx_day_of_5___35 ntmx_day_of_5___35_.;
	format ntmx_day_of_5___36 ntmx_day_of_5___36_.;
	format ntmx_day_of_5___63 ntmx_day_of_5___63_.;
	format ntmx_day_of_5___37 ntmx_day_of_5___37_.;
	format ntmx_day_of_5___38 ntmx_day_of_5___38_.;
	format ntmx_day_of_5___39 ntmx_day_of_5___39_.;
	format ntmx_day_of_5___40 ntmx_day_of_5___40_.;
	format ntmx_day_of_5___45 ntmx_day_of_5___45_.;
	format ntmx_day_of_5___46 ntmx_day_of_5___46_.;
	format ntmx_day_of_5___64 ntmx_day_of_5___64_.;
	format ntmx_day_of_5___65 ntmx_day_of_5___65_.;
	format ntmx_day_of_5___41 ntmx_day_of_5___41_.;
	format ntmx_day_of_6___48 ntmx_day_of_6___48_.;
	format ntmx_day_of_6___12 ntmx_day_of_6___12_.;
	format ntmx_day_of_6___49 ntmx_day_of_6___49_.;
	format ntmx_day_of_6___13 ntmx_day_of_6___13_.;
	format ntmx_day_of_6___50 ntmx_day_of_6___50_.;
	format ntmx_day_of_6___14 ntmx_day_of_6___14_.;
	format ntmx_day_of_6___15 ntmx_day_of_6___15_.;
	format ntmx_day_of_6___51 ntmx_day_of_6___51_.;
	format ntmx_day_of_6___44 ntmx_day_of_6___44_.;
	format ntmx_day_of_6___16 ntmx_day_of_6___16_.;
	format ntmx_day_of_6___17 ntmx_day_of_6___17_.;
	format ntmx_day_of_6___18 ntmx_day_of_6___18_.;
	format ntmx_day_of_6___19 ntmx_day_of_6___19_.;
	format ntmx_day_of_6___20 ntmx_day_of_6___20_.;
	format ntmx_day_of_6___21 ntmx_day_of_6___21_.;
	format ntmx_day_of_6___22 ntmx_day_of_6___22_.;
	format ntmx_day_of_6___52 ntmx_day_of_6___52_.;
	format ntmx_day_of_6___42 ntmx_day_of_6___42_.;
	format ntmx_day_of_6___53 ntmx_day_of_6___53_.;
	format ntmx_day_of_6___23 ntmx_day_of_6___23_.;
	format ntmx_day_of_6___24 ntmx_day_of_6___24_.;
	format ntmx_day_of_6___25 ntmx_day_of_6___25_.;
	format ntmx_day_of_6___26 ntmx_day_of_6___26_.;
	format ntmx_day_of_6___27 ntmx_day_of_6___27_.;
	format ntmx_day_of_6___47 ntmx_day_of_6___47_.;
	format ntmx_day_of_6___30 ntmx_day_of_6___30_.;
	format ntmx_day_of_6___28 ntmx_day_of_6___28_.;
	format ntmx_day_of_6___54 ntmx_day_of_6___54_.;
	format ntmx_day_of_6___43 ntmx_day_of_6___43_.;
	format ntmx_day_of_6___29 ntmx_day_of_6___29_.;
	format ntmx_day_of_6___55 ntmx_day_of_6___55_.;
	format ntmx_day_of_6___56 ntmx_day_of_6___56_.;
	format ntmx_day_of_6___31 ntmx_day_of_6___31_.;
	format ntmx_day_of_6___57 ntmx_day_of_6___57_.;
	format ntmx_day_of_6___32 ntmx_day_of_6___32_.;
	format ntmx_day_of_6___58 ntmx_day_of_6___58_.;
	format ntmx_day_of_6___59 ntmx_day_of_6___59_.;
	format ntmx_day_of_6___60 ntmx_day_of_6___60_.;
	format ntmx_day_of_6___33 ntmx_day_of_6___33_.;
	format ntmx_day_of_6___61 ntmx_day_of_6___61_.;
	format ntmx_day_of_6___62 ntmx_day_of_6___62_.;
	format ntmx_day_of_6___34 ntmx_day_of_6___34_.;
	format ntmx_day_of_6___35 ntmx_day_of_6___35_.;
	format ntmx_day_of_6___36 ntmx_day_of_6___36_.;
	format ntmx_day_of_6___63 ntmx_day_of_6___63_.;
	format ntmx_day_of_6___37 ntmx_day_of_6___37_.;
	format ntmx_day_of_6___38 ntmx_day_of_6___38_.;
	format ntmx_day_of_6___39 ntmx_day_of_6___39_.;
	format ntmx_day_of_6___40 ntmx_day_of_6___40_.;
	format ntmx_day_of_6___45 ntmx_day_of_6___45_.;
	format ntmx_day_of_6___46 ntmx_day_of_6___46_.;
	format ntmx_day_of_6___64 ntmx_day_of_6___64_.;
	format ntmx_day_of_6___65 ntmx_day_of_6___65_.;
	format ntmx_day_of_6___41 ntmx_day_of_6___41_.;
	format ntmx_day_of_7___48 ntmx_day_of_7___48_.;
	format ntmx_day_of_7___12 ntmx_day_of_7___12_.;
	format ntmx_day_of_7___49 ntmx_day_of_7___49_.;
	format ntmx_day_of_7___13 ntmx_day_of_7___13_.;
	format ntmx_day_of_7___50 ntmx_day_of_7___50_.;
	format ntmx_day_of_7___14 ntmx_day_of_7___14_.;
	format ntmx_day_of_7___15 ntmx_day_of_7___15_.;
	format ntmx_day_of_7___51 ntmx_day_of_7___51_.;
	format ntmx_day_of_7___44 ntmx_day_of_7___44_.;
	format ntmx_day_of_7___16 ntmx_day_of_7___16_.;
	format ntmx_day_of_7___17 ntmx_day_of_7___17_.;
	format ntmx_day_of_7___18 ntmx_day_of_7___18_.;
	format ntmx_day_of_7___19 ntmx_day_of_7___19_.;
	format ntmx_day_of_7___20 ntmx_day_of_7___20_.;
	format ntmx_day_of_7___21 ntmx_day_of_7___21_.;
	format ntmx_day_of_7___22 ntmx_day_of_7___22_.;
	format ntmx_day_of_7___52 ntmx_day_of_7___52_.;
	format ntmx_day_of_7___42 ntmx_day_of_7___42_.;
	format ntmx_day_of_7___53 ntmx_day_of_7___53_.;
	format ntmx_day_of_7___23 ntmx_day_of_7___23_.;
	format ntmx_day_of_7___24 ntmx_day_of_7___24_.;
	format ntmx_day_of_7___25 ntmx_day_of_7___25_.;
	format ntmx_day_of_7___26 ntmx_day_of_7___26_.;
	format ntmx_day_of_7___27 ntmx_day_of_7___27_.;
	format ntmx_day_of_7___47 ntmx_day_of_7___47_.;
	format ntmx_day_of_7___30 ntmx_day_of_7___30_.;
	format ntmx_day_of_7___28 ntmx_day_of_7___28_.;
	format ntmx_day_of_7___54 ntmx_day_of_7___54_.;
	format ntmx_day_of_7___43 ntmx_day_of_7___43_.;
	format ntmx_day_of_7___29 ntmx_day_of_7___29_.;
	format ntmx_day_of_7___55 ntmx_day_of_7___55_.;
	format ntmx_day_of_7___56 ntmx_day_of_7___56_.;
	format ntmx_day_of_7___31 ntmx_day_of_7___31_.;
	format ntmx_day_of_7___57 ntmx_day_of_7___57_.;
	format ntmx_day_of_7___32 ntmx_day_of_7___32_.;
	format ntmx_day_of_7___58 ntmx_day_of_7___58_.;
	format ntmx_day_of_7___59 ntmx_day_of_7___59_.;
	format ntmx_day_of_7___60 ntmx_day_of_7___60_.;
	format ntmx_day_of_7___33 ntmx_day_of_7___33_.;
	format ntmx_day_of_7___61 ntmx_day_of_7___61_.;
	format ntmx_day_of_7___62 ntmx_day_of_7___62_.;
	format ntmx_day_of_7___34 ntmx_day_of_7___34_.;
	format ntmx_day_of_7___35 ntmx_day_of_7___35_.;
	format ntmx_day_of_7___36 ntmx_day_of_7___36_.;
	format ntmx_day_of_7___63 ntmx_day_of_7___63_.;
	format ntmx_day_of_7___37 ntmx_day_of_7___37_.;
	format ntmx_day_of_7___38 ntmx_day_of_7___38_.;
	format ntmx_day_of_7___39 ntmx_day_of_7___39_.;
	format ntmx_day_of_7___40 ntmx_day_of_7___40_.;
	format ntmx_day_of_7___45 ntmx_day_of_7___45_.;
	format ntmx_day_of_7___46 ntmx_day_of_7___46_.;
	format ntmx_day_of_7___64 ntmx_day_of_7___64_.;
	format ntmx_day_of_7___65 ntmx_day_of_7___65_.;
	format ntmx_day_of_7___41 ntmx_day_of_7___41_.;
	format supratherapeutic_vancomyci supratherapeutic_vancomyci_.;
	format gentamicin_trough_2 gentamicin_trough_2_.;
	format tacrolimus_level_15 tacrolimus_level_15_.;
	format cyclosporine_level_300 cyclosporine_level_300_.;
	format nephrotoxic_exposures_complete nephrotoxic_exposures_complete_.;
	format gender_assigned_at_birth gender_assigned_at_birth_.;
	format history_of_renal_issues___1 history_of_renal_issues___1_.;
	format history_of_renal_issues___2 history_of_renal_issues___2_.;
	format history_of_renal_issues___3 history_of_renal_issues___3_.;
	format history_of_renal_issues___4 history_of_renal_issues___4_.;
	format code_event_up_to_3d_prior___1 code_event_up_to_3d_prior___1_.;
	format code_event_up_to_3d_prior___2 code_event_up_to_3d_prior___2_.;
	format ecmo_during_hospitalizatio ecmo_during_hospitalizatio_.;
	format demographics_complete demographics_complete_.;
	format lab_data_complete lab_data_complete_.;
	format dialysis_needed_after_hosp dialysis_needed_after_hosp_.;
	format indication_for_dialysis___1 indication_for_dialysis___1_.;
	format indication_for_dialysis___2 indication_for_dialysis___2_.;
	format indication_for_dialysis___3 indication_for_dialysis___3_.;
	format indication_for_dialysis___4 indication_for_dialysis___4_.;
	format indication_for_dialysis___5 indication_for_dialysis___5_.;
	format outcomes_data_complete outcomes_data_complete_.;
	format vis_information_complete vis_information_complete_.;
run;

/*proc contents data=redcap;*/
/*proc print data=redcap;*/
/*run;*/

/*proc export data=redcap           /*1*/
/*     outfile="S:\Brinton\Nephrology\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\data\redcap.csv"   /*2*/
/*    dbms=csv                                     /*3*/
/*     replace;                                     /*4*/
/*run;*/

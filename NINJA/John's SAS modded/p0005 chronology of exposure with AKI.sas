/*

The purpose of this program is to:
	identify exposures over time
	plot exposures over time by individuals in order to look at patterns of exposures
	Further identify exposures by only looking and pre NINJA flag and post NINJA flag time periods
	plot exposures to look at patters in the pre/post NINJA flag patterns

	identify indication and timing of supratherapeutic drug levels prior to the flag
	identify indication and timing vasoactive prior to the flag.

	Potentially examine whether patters in pre NINJA flag exposures are associated with indication of supratherapeutic drug levels
	or vasoactive indication
*/


/*CODE TAKEN FROM P0001 SCRATCH*/
/*Import data*/
%include "H:/From CBC Individual/BrintonJ/AKI/2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort/data/NINJAPICU_SAS_2024-05-21_1344.sas";
/*
Primary Outcome:?- The prevalence of specific nephrotoxin exposures among ICU patients that develop NTMx-AKI
*/
/*
Note: remove duplicate records: 11, 35, 16, 17, 38, 48, 44, 58, 74, 18, 46, 70, 26 
Email: 5/20/2024
RE: PICU NINJA project meeting
Gordon, Sharon <Sharon.Gordon@childrenscolorado.org>
*/
Data imported_dataset;
   set redcap;
   IF record_id IN (11, 35, 16, 17, 38, 48, 44, 58, 74, 18, 46, 70, 26) THEN delete;
RUN;

PROC FREQ data=imported_dataset;
   table ntmx_exposure_type/ missing;
RUN;

*Question: Why is ntmx_exposure_type missing for 28 people;
/*Still missing*/
/*However the exposure of interest is not the three types of exposure in the variable ntmx_exposure_type*/

/*
Exposures of interest
NINJA Meds Categories:
•	Vancomycin
•	Zosyn ( just the one - Zosyn_Piperacillin)
•	Aminoglycosides (will likely just be gentamicin, I think there may have been one tobra) – Gentamicin Tobramycin
•	Amphotericin - Ambisome
•	Antivirals (I think we could categorize these together?): acyclovir, valacyclovir, ganciclovir, valganciclovir - Acyclovir Cidofovir Tenofovir Valganciclovir Valacyclovir Ganciclovir
•	Separate PO/IV – we can combine all antivirals as above antivirals
•	Contrast -  Gadolineum_Derivatives Iodinated_CA
•	NSAIDs – Ibuprofen (meproxin with Ibuprofen) separate group from Ketorolac. Also Celecoxib as a category
•	Calcineurin inhibitors (cyclosporine and tacrolimus) leave them paired for category but interested in the supratherapeutic differences.
•	Sirolimus – on it’s own
•	AEDs (topiramate/zonisamide)
•	? ACE/ARB – Captopril Enalapril Enalaprilat Lisinopril Losartan Valsartan
•	? Chemo
•	Include an other category (maybe two chemo and other antimicrobials – with a list of patients that might fit there.)
*/

/*Create an indicator for a specific group*/
/*This uses information over 10 days to identify if EVER there was an exposure*/
/*We would like to also identify the day of first exposure for every exposure group if possible*/
Data data_a;
   set imported_dataset;
RUN;

%macro count_exp(num, name);
   count_&num._&name = ntmx_3_days_prior___&num+
ntmx_2_days_prior___&num+
ntmx_1_days_prior___&num+
ntmx_day_of___&num+
ntmx_day_of_1___&num+
ntmx_day_of_2___&num+
ntmx_day_of_3___&num+
ntmx_day_of_4___&num+
ntmx_day_of_5___&num+
ntmx_day_of_6___&num+
ntmx_day_of_7___&num;
%MEND;

/*Data needs to have the following information for each row as a subject:

Day_Vanc	Day_Antiviral	Day_contrast	etc.........

I think it will just be the first day of indication of the NTMx*/

%macro day_exp(num, name);
IF ntmx_3_days_prior___&num = 1 THEN day_&num._&name = -3; ELSE day_&num._&name = .;
IF day_&num._&name = . THEN DO;
	IF ntmx_2_days_prior___&num = 1 THEN day_&num._&name = -2; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_1_days_prior___&num = 1 THEN day_&num._&name = -1; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of___&num = 1 THEN day_&num._&name = 0; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_1___&num = 1 THEN day_&num._&name = 1; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_2___&num = 1 THEN day_&num._&name = 2; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_3___&num = 1 THEN day_&num._&name = 3; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_4___&num = 1 THEN day_&num._&name = 4; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_5___&num = 1 THEN day_&num._&name = 5; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_6___&num = 1 THEN day_&num._&name = 6; ELSE day_&num._&name = .;
END;
IF day_&num._&name = . THEN DO;
	IF ntmx_day_of_7___&num = 1 THEN day_&num._&name = 7; ELSE day_&num._&name = .;
END;
%MEND;


data play;
   set data_a;

%count_exp(48, Acyclovir);
%count_exp(12, Ambisome);
%count_exp(49, Amphotericin_Con);
%count_exp(13, Amikacin);
%count_exp(50, Aspirin);
%count_exp(14, Captopril);
%count_exp(15, Carboplatin);
%count_exp(51, Celecoxib);
%count_exp(44, Cisplatin);
%count_exp(16, Cefotaxime);
%count_exp(17, Ceftazidime);
%count_exp(18, Cefuroxime);
%count_exp(19, Cidofovir);
%count_exp(20, Colistimethate);
%count_exp(21, Cyclosporine);
%count_exp(22, Dapsone);
%count_exp(52, Deferasirox);
%count_exp(42, Enalapril);
%count_exp(53, Enalaprilat);
%count_exp(23, Foscarnet);
%count_exp(24, Gadolineum_Derivatives);
%count_exp(25, Ganciclovir);
%count_exp(26, Gentamicin);
%count_exp(27, Ibuprofen);
%count_exp(47, Ketorolac);
%count_exp(30, Ifosfamide);
%count_exp(28, Iodinated_CA);
%count_exp(54, Indomethacin);
%count_exp(43, Lisinopril);
%count_exp(29, Lithium);
%count_exp(55, Losartan);
%count_exp(56, Mesalamine);
%count_exp(31, Methotrexate);
%count_exp(57, Mitomycin);
%count_exp(32, Nafcillin);
%count_exp(58, Naproxen);
%count_exp(59, Pamidronate);
%count_exp(60, Pentamidine_IV);
%count_exp(33, Zosyn_Piperacillin);
%count_exp(61, Polymyxin_B);
%count_exp(62, Sacubitril_Valsartan);
%count_exp(34, Sirolimus);
%count_exp(35, Sulfasalazine);
%count_exp(36, Tacrolimus);
%count_exp(63, Tenofovir);
%count_exp(37, Ticarcillin_CA);
%count_exp(38, Tobramycin);
%count_exp(39, Topiramate);
%count_exp(40, Vancomycin);
%count_exp(45, Valganciclovir);
%count_exp(46, Valacyclovir);
%count_exp(64, Valsartan);
%count_exp(65, Zoledronic_Acid);
%count_exp(41, Zonisamide);



%day_exp(48, Acyclovir);
%day_exp(12, Ambisome);
%day_exp(49, Amphotericin_Con);
%day_exp(13, Amikacin);
%day_exp(50, Aspirin);
%day_exp(14, Captopril);
%day_exp(15, Carboplatin);
%day_exp(51, Celecoxib);
%day_exp(44, Cisplatin);
%day_exp(16, Cefotaxime);
%day_exp(17, Ceftazidime);
%day_exp(18, Cefuroxime);
%day_exp(19, Cidofovir);
%day_exp(20, Colistimethate);
%day_exp(21, Cyclosporine);
%day_exp(22, Dapsone);
%day_exp(52, Deferasirox);
%day_exp(42, Enalapril);
%day_exp(53, Enalaprilat);
%day_exp(23, Foscarnet);
%day_exp(24, Gadolineum_Derivatives);
%day_exp(25, Ganciclovir);
%day_exp(26, Gentamicin);
%day_exp(27, Ibuprofen);
%day_exp(47, Ketorolac);
%day_exp(30, Ifosfamide);
%day_exp(28, Iodinated_CA);
%day_exp(54, Indomethacin);
%day_exp(43, Lisinopril);
%day_exp(29, Lithium);
%day_exp(55, Losartan);
%day_exp(56, Mesalamine);
%day_exp(31, Methotrexate);
%day_exp(57, Mitomycin);
%day_exp(32, Nafcillin);
%day_exp(58, Naproxen);
%day_exp(59, Pamidronate);
%day_exp(60, Pentamidine_IV);
%day_exp(33, Zosyn_Piperacillin);
%day_exp(61, Polymyxin_B);
%day_exp(62, Sacubitril_Valsartan);
%day_exp(34, Sirolimus);
%day_exp(35, Sulfasalazine);
%day_exp(36, Tacrolimus);
%day_exp(63, Tenofovir);
%day_exp(37, Ticarcillin_CA);
%day_exp(38, Tobramycin);
%day_exp(39, Topiramate);
%day_exp(40, Vancomycin);
%day_exp(45, Valganciclovir);
%day_exp(46, Valacyclovir);
%day_exp(64, Valsartan);
%day_exp(65, Zoledronic_Acid);
%day_exp(41, Zonisamide);

*include the day of AKI as a variable formated like the other variables of exposure;
*Day_01_aki is the number of days between the NINJA flag and the AKI;
Day_01_aki = aki_episode_start_date - start_date_for_ntmx_encoun;

RUN;
PROC FREQ data=play;
   table Day_01_aki;
RUN;

/*Add the EVER exposure to a NTMX medication for each of the indicated important exposures*/
Data data_b;
 set play;
   if count_40_Vancomycin NE 0 THEN Vancomycin_exp = 1; Else Vancomycin_exp = 0;

   if count_33_Zosyn_Piperacillin NE 0 THEN Zosyn_exp = 1; Else Zosyn_exp = 0;

   if (count_26_Gentamicin NE 0 OR
count_38_Tobramycin NE 0 ) THEN Aminoglycosides_exp = 1; Else Aminoglycosides_exp = 0;

   if (count_12_Ambisome NE 0 ) THEN Amphotericin_exp = 1; Else Amphotericin_exp = 0;

   if (count_48_Acyclovir NE 0 OR
count_19_Cidofovir NE 0 OR
count_25_Ganciclovir NE 0 OR
count_63_Tenofovir NE 0 OR
count_45_Valganciclovir NE 0 OR
count_46_Valacyclovir NE 0) THEN Antivirals_exp = 1; Else Antivirals_exp = 0;


	if (count_24_Gadolineum_Derivatives NE 0 OR
count_28_Iodinated_CA NE 0) THEN Contrast_exp = 1; ELSE Contrast_exp = 0;

/*Request to combine Ketorolac and NSAID*/

	if (count_27_Ibuprofen NE 0 OR count_47_Ketorolac) THEN NSAID_exp = 1; Else NSAID_exp = 0;

/*	if (count_27_Ibuprofen NE 0 ) THEN NSAID_exp = 1; Else NSAID_exp = 0;*/
/*	if (count_47_Ketorolac NE 0 ) THEN Ketorolac_exp = 1; Else Ketorolac_exp = 0;*/

	if (count_51_Celecoxib NE 0 ) THEN Celecoxib_exp = 1; Else Celecoxib_exp = 0;

	if (count_36_Tacrolimus NE 0 OR 
count_21_Cyclosporine NE 0 ) THEN Calcineurin_inhibitors_exp = 1; ELSE Calcineurin_inhibitors_exp = 0;

	if (count_34_Sirolimus NE 0 ) THEN Sirolimus_exp = 1; Else Sirolimus_exp = 0;

	if (count_39_Topiramate NE 0 OR
count_41_Zonisamide NE 0 ) THEN AED_exp = 1; ELSE AED_exp = 0;

	if (count_14_Captopril NE 0 OR
count_42_Enalapril NE 0 OR
count_53_Enalaprilat NE 0 OR
count_43_Lisinopril NE 0 OR
count_55_Losartan NE 0 OR
count_64_Valsartan NE 0) THEN ACE_ARB_exp = 1; ELSE ACE_ARB_exp = 0;


RUN;
/*This dataset indicates the day and offsetts the day for the ability to plot on a lane plot*/
data data_day_exp;
   set data_b;

   IF Vancomycin_exp = 1 THEN day_Vancomycin_exp = day_40_Vancomycin;

   IF Zosyn_exp = 1 THEN day_Zosyn_exp = day_33_Zosyn_Piperacillin + 0.08; *to jitter the exposures to make sure we see them all;

   IF Aminoglycosides_exp = 1 THEN day_Aminoglycosides_exp = MIN(day_26_Gentamicin,
day_38_Tobramycin)+ 0.08 + 0.08;

   IF Amphotericin_exp = 1 THEN day_Amphotericin_exp = day_12_Ambisome + 0.08 + 0.08 + 0.08;

   IF Antivirals_exp = 1 THEN day_Antivirals_exp=MIN(day_48_Acyclovir, 
day_19_Cidofovir,
day_25_Ganciclovir, 
day_63_Tenofovir, 
day_45_Valganciclovir, 
day_46_Valacyclovir) + 0.08 + 0.08 + 0.08 + 0.08;

	IF Contrast_exp = 1 THEN day_Contrast_exp = MIN(day_24_Gadolineum_Derivatives,
day_28_Iodinated_CA) + 0.08 + 0.08 + 0.08 + 0.08 + 0.08;

	IF NSAID_exp = 1 THEN day_NSAID_exp = MIN(day_27_Ibuprofen, day_47_Ketorolac) + 0.08;

/*	IF Ketorolac_exp = 1 THEN day_Ketorolac_exp = day_47_Ketorolac +0.08 +0.08;*/

/*	IF NSAID_exp = 1 THEN day_NSAID_exp = day_27_Ibuprofen +0.08;*/
/**/
/*	IF Ketorolac_exp = 1 THEN day_Ketorolac_exp = day_47_Ketorolac +0.08 +0.08;*/

	IF Celecoxib_exp = 1 THEN day_Celecoxib_exp  = day_51_Celecoxib +0.08 +0.08 +0.08;

	IF Calcineurin_inhibitors_exp = 1 THEN day_Calcineurin_inhibitors_exp = MIN(day_36_Tacrolimus, 
day_21_Cyclosporine) +0.08 +0.08 +0.08 +0.08;

	IF Sirolimus_exp =1 THEN day_Sirolimus_exp = day_34_Sirolimus +0.08 +0.08 +0.08 +0.08 +0.08;

	IF AED_exp = 1 THEN day_AED_exp =  MIN(day_39_Topiramate, 
day_41_Zonisamide) ;

	IF ACE_ARB_exp = 1 THEN day_ACE_ARB_exp = MIN(day_14_Captopril, 
day_42_Enalapril,
day_53_Enalaprilat, 
day_43_Lisinopril, 
day_55_Losartan, 
day_64_Valsartan) +0.08 +0.08 +0.08 +0.08 +0.08 +0.08;

line_end = 10;

*Build indicators of individuals about the patterns of exposure;
/*How often do all  exposures occure before the flag, or on day 0?*/
/*Sum of all exposures should be less than 1*/
    total_sum = sum(day_48_Acyclovir, day_12_Ambisome, day_49_Amphotericin_Con, day_13_Amikacin, 
        day_50_Aspirin, day_14_Captopril, day_15_Carboplatin, day_51_Celecoxib, 
        day_44_Cisplatin, day_16_Cefotaxime, day_17_Ceftazidime, day_18_Cefuroxime, 
        day_19_Cidofovir, day_20_Colistimethate, day_21_Cyclosporine, day_22_Dapsone, 
        day_52_Deferasirox, day_42_Enalapril, day_53_Enalaprilat, day_23_Foscarnet, 
        day_24_Gadolineum_Derivatives, day_25_Ganciclovir, day_26_Gentamicin, 
        day_27_Ibuprofen, day_47_Ketorolac, day_30_Ifosfamide, day_28_Iodinated_CA, 
        day_54_Indomethacin, day_43_Lisinopril, day_29_Lithium, day_55_Losartan, 
        day_56_Mesalamine, day_31_Methotrexate, day_57_Mitomycin, day_32_Nafcillin, 
        day_58_Naproxen, day_59_Pamidronate, day_60_Pentamidine_IV, 
        day_33_Zosyn_Piperacillin, day_61_Polymyxin_B, day_62_Sacubitril_Valsartan, 
        day_34_Sirolimus, day_35_Sulfasalazine, day_36_Tacrolimus, day_63_Tenofovir, 
        day_37_Ticarcillin_CA, day_38_Tobramycin, day_39_Topiramate, day_40_Vancomycin, 
        day_45_Valganciclovir, day_46_Valacyclovir, day_64_Valsartan, 
        day_65_Zoledronic_Acid, day_41_Zonisamide);
	ID_all_before_flag = (total_sum <1);


/*The variable ID_all_before_flag indicates that all exposures occured on the before the day of the flag or on the day of the flag*/
/*In the people with exposures after day 0, how many occured*/

RUN;
PROC FREQ data=data_day_exp;
   table ID_all_before_flag;
RUN;
PROC univariate data=data_day_exp;
   var total_sum;
   histogram;
RUN;
PROC FREQ data=data_day_exp;
where total_sum >=1;
   table total_sum;
RUN;
*in 10 people there is an exposure that occurs at least 1 day after the flag -  this exposure may not be necessary for triggering a flag;




PROC PRINT data=data_day_exp (obs=5);
   var record_id day_Vancomycin_exp  day_Contrast_exp day_Antivirals_exp;
RUN;

/*https://www.pharmasug.org/proceedings/2014/DG/PharmaSUG-2014-DG07.pdf*/
PROC SORT data=data_day_exp; by highest_aki_stage_for_this; RUN;
proc sgplot data=data_day_exp;
by highest_aki_stage_for_this;
 hbarparm category=record_id response=line_end/group=highest_aki_stage_for_this barwidth=.5 ;
 yaxis type=discrete display=(novalues noticks) label="Subjects Flagged in NINJA on Day 0";
 xaxis type=linear label="Days" values=(-3 to 10 by 1);

 scatter X=day_Vancomycin_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=black);
 
  scatter X=day_Zosyn_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=cyan);
 scatter X=day_Aminoglycosides_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=pink);
 scatter X=day_Amphotericin_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=brown);

scatter X=day_Antivirals_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=red);
 scatter X=day_Contrast_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=orange);
 scatter X=day_NSAID_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=yellow);
/* scatter X=day_Ketorolac_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=navy);*/
  scatter X=day_Celecoxib_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=green);
   scatter X=day_Calcineurin_inhibitors_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);
    scatter X=day_Sirolimus_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=purple);
	 scatter X=day_AED_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=black);
	 scatter X=day_ACE_ARB_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=pink);


 scatter X=Day_01_aki Y=record_id /markerattrs=(symbol=asterisk size=9 color=orange);
/* scatter X=prstart1 Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);*/
/* scatter X=prstart2 Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);*/
/* scatter X=end1 Y=record_id /markerattrs=(symbol=circlefilled size=9 color=black);*/
/* scatter X=end2 Y=record_id /markerattrs=(symbol=circlefilled size=9 color=black);*/
run;

PROC SORT data=data_day_exp; by highest_aki_stage_for_this Vancomycin_exp; RUN;
proc sgplot data=data_day_exp;
by highest_aki_stage_for_this Vancomycin_exp;
 hbarparm category=record_id response=line_end/group=highest_aki_stage_for_this barwidth=.5 ;
 yaxis type=discrete display=(novalues noticks) label="Subjects Flagged in NINJA on Day 0";
 xaxis type=linear label="Days" values=(-3 to 10 by 1);

 scatter X=day_Vancomycin_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=black);
 
  scatter X=day_Zosyn_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=cyan);
 scatter X=day_Aminoglycosides_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=pink);
 scatter X=day_Amphotericin_exp Y=record_id /markerattrs=(symbol=squarefilled size=9 color=brown);

scatter X=day_Antivirals_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=red);
 scatter X=day_Contrast_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=orange);
 scatter X=day_NSAID_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=yellow);
/* scatter X=day_Ketorolac_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=navy);*/
  scatter X=day_Celecoxib_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=green);
   scatter X=day_Calcineurin_inhibitors_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);
    scatter X=day_Sirolimus_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=purple);
	 scatter X=day_AED_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=black);
	 scatter X=day_ACE_ARB_exp Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=pink);


 scatter X=Day_01_aki Y=record_id /markerattrs=(symbol=asterisk size=9 color=orange);
/* scatter X=prstart1 Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);*/
/* scatter X=prstart2 Y=record_id /markerattrs=(symbol=trianglefilled size=9 color=blue);*/
/* scatter X=end1 Y=record_id /markerattrs=(symbol=circlefilled size=9 color=black);*/
/* scatter X=end2 Y=record_id /markerattrs=(symbol=circlefilled size=9 color=black);*/
run;




/*CREATE THE PLOT SO THAT THE MEDICATIONS LEDGEND IS INCLUDED*/
PROC SORT data=data_day_exp; by highest_aki_stage_for_this Vancomycin_exp; RUN;

ods rtf file="H:\From CBC Individual\BrintonJ\AKI\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\text\laneplots.rtf" style=journal;
proc sgplot data=data_day_exp;
by highest_aki_stage_for_this Vancomycin_exp;
    /* Horizontal bar plot */
    hbarparm category=record_id response=line_end / group=highest_aki_stage_for_this barwidth=.5;
    yaxis type=discrete display=(novalues noticks) label="Subjects Flagged in NINJA on Day 0";
    xaxis type=linear label="Days" values=(-3 to 10 by 1) offsetmax=0.3;

    /* Scatter plots */
    scatter X=day_Vancomycin_exp Y=record_id / markerattrs=(symbol=squarefilled size=9 color=black) legendlabel='Vancomycin';
    scatter X=day_Zosyn_exp Y=record_id / markerattrs=(symbol=squarefilled size=9 color=cyan) legendlabel='Zosyn';
    scatter X=day_Aminoglycosides_exp Y=record_id / markerattrs=(symbol=squarefilled size=9 color=pink) legendlabel='Aminoglycosides';
    scatter X=day_Amphotericin_exp Y=record_id / markerattrs=(symbol=squarefilled size=9 color=brown) legendlabel='Amphotericin';

    scatter X=day_Antivirals_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=red) legendlabel='Antivirals';
    scatter X=day_Contrast_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=orange) legendlabel='Contrast';
    scatter X=day_NSAID_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=yellow) legendlabel='NSAID';
/*    scatter X=day_Ketorolac_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=navy) legendlabel='Ketorolac';*/
    scatter X=day_Celecoxib_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=green) legendlabel='Celecoxib';
    scatter X=day_Calcineurin_inhibitors_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=blue) legendlabel='Calcineurin Inhibitors';
    scatter X=day_Sirolimus_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=purple) legendlabel='Sirolimus';
    scatter X=day_AED_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=black) legendlabel='AED';
    scatter X=day_ACE_ARB_exp Y=record_id / markerattrs=(symbol=trianglefilled size=9 color=pink) legendlabel='ACE/ARB';

	 scatter X=Day_01_aki Y=record_id /markerattrs=(symbol=asterisk size=9 color=orange) legendlabel='AKI';;
    /* Legend */
    keylegend 
/*'Vancomycin' 'Zosyn' 'Aminoglycosides' 'Amphotericin' 'Antivirals' 'Contrast' 'NSAID' 'Ketorolac' */
/*              'Celecoxib' 'Calcineurin Inhibitors' 'Sirolimus' 'AED' 'ACE/ARB' */
/ 
exclude=('Stage 1 (0.3 increase in Daily Scr  or Daily Scr 1.5 - 1.9 times baseline)'
'Stage 2 (Daily Scr 2 - 2.9 times baseline)'
'Stage 3 (Daily Scr >= 3 times baseline or provision of dialysis for an AKI related reason)')
location=inside position=right
title='Medication Exposures' 
/*across=1 down=13*/
;
run;
ods rtf close;

/*Export a list of individuals without Vanc who had fewer than three exposures*/
Data check;
   set data_day_exp;
   where Vancomycin_exp = 0;
   sum_exp = Vancomycin_exp+Zosyn_exp+Aminoglycosides_exp+Amphotericin_exp+Antivirals_exp+
Contrast_exp+NSAID_exp+Ketorolac_exp+Celecoxib_exp+Calcineurin_inhibitors_exp+Sirolimus_exp+
AED_exp+ACE_ARB_exp;
keep record_id
mrn
service_for_aki_episode
start_date_for_ntmx_encoun
aki_episode_start_date
ntmx_exposure_type
baseline_scr_lowest_docume
daily_scr_value_on_1st_day
absolute_scr_difference_fr
scr_difference_from_baseli
initial_aki_stage
additional_comments
aki_episode_resolution_dat
of_days_with_aki
reason_for_closing_aki_epi
maximum_scr_during_this_ak
date_of_maximum_scr_during
highest_aki_stage_for_this
form_1_complete
Vancomycin_exp
Zosyn_exp
Aminoglycosides_exp
Amphotericin_exp
Antivirals_exp
Contrast_exp
NSAID_exp
Ketorolac_exp
Celecoxib_exp
Calcineurin_inhibitors_exp
Sirolimus_exp
AED_exp
ACE_ARB_exp
sum_exp
;
IF sum_exp <3;
RUN;

proc export data=check
    outfile="H:\From CBC Individual\BrintonJ\AKI\2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort\data\ExposureCheck.csv"
    dbms=csv
    replace;
run;


PROC CONTENTS data=data_day_exp varnum;RUN;
/*
THere is a question of whether any exposure is of interest or exposure on or after day 0 or on or Before day 0

⁃	Exposure in d-3 to d0 of NINJA flag
⁃	Exposure in D0-D+7 of NINJA FLAG

and also the indications of 
⁃	Average Duration of NINJA flag to development of NAKI
⁃	Supratherapeutic drug level prior to flag
⁃	Vasoactive prior to flag

*/

/*Question - are there any people who did not have any type of exposure?

*/

data no_exp;
   set data_day_exp;
   IF (
   Vancomycin_exp = 0 &
Zosyn_exp = 0 &
Aminoglycosides_exp = 0 &
Amphotericin_exp = 0 &
Antivirals_exp = 0 &
Contrast_exp = 0 &
NSAID_exp = 0 &
Ketorolac_exp = 0 &
Celecoxib_exp = 0 &
Calcineurin_inhibitors_exp = 0 &
Sirolimus_exp = 0 &
AED_exp = 0 &
ACE_ARB_exp = 0);
RUN;


/*Now we develope exposure indicators for the pre_NINJA_flag -3 to 0 days and the post_NINJA_flag 0 to 7 days*/
/*
PRE exposure:
If exposure is positive but day_exposure is >0 then exposure_pre_flag is negative, otherwise positive;
POST exposure:
If exposure is positive but day_exposure is <0 then exposure_post_flag is negative, otherwise positive;
*/
/*write the macro to do it*/

/*
Of the individuals with a type of exposure:
Did the exposure occure within the first -3 to 0 days
Did the exposure occur within the 0 to 7 days after?
Average duration of NINJA flag to NAKI?
supratherapeutic drug level prior to flag?
vasoactive prior to flag?
*/


PROC FREQ data=data_day_exp;
   table day_Vancomycin_exp/missing;
RUN;
/*Build a variable that indicates the exposure was in days -3 to 0 */
%macro ID_exp_3_to_0(varname, name);
    IF (&varname >= -3 & &varname < 1) THEN ID_&name._3_to_0 = 1;
    ELSE ID_&name._3_to_0 = 0;
    IF &varname = . THEN ID_&name._3_to_0 = .;
%mend;

%macro ID_exp_0_to_7(varname, name);
    IF (&varname >= 0) THEN ID_&name._0_to_7 = 1;
    ELSE ID_&name._0_to_7 = 0;
    IF &varname = . THEN ID_&name._0_to_7 = .;
%mend;

data data_day_exp_ID;
   set data_day_exp;
%ID_exp_3_to_0(day_Vancomycin_exp,Vancomycin);
%ID_exp_3_to_0(day_Zosyn_exp,Zosyn);
%ID_exp_3_to_0(day_Aminoglycosides_exp,Aminoglycosides);
%ID_exp_3_to_0(day_Amphotericin_exp,Amphotericin);
%ID_exp_3_to_0(day_Antivirals_exp,Antivirals);
%ID_exp_3_to_0(day_Contrast_exp,Contrast);
%ID_exp_3_to_0(day_NSAID_exp,NSAID);
%ID_exp_3_to_0(day_Ketorolac_exp,Ketorolac);
%ID_exp_3_to_0(day_Celecoxib_exp,Celecoxib);
%ID_exp_3_to_0(day_Calcineurin_inhibitors_exp,Calcineurin);
%ID_exp_3_to_0(day_Sirolimus_exp,Sirolimus);
%ID_exp_3_to_0(day_AED_exp,AED);
%ID_exp_3_to_0(day_ACE_ARB_exp,ACE);

%ID_exp_0_to_7(day_Vancomycin_exp,Vancomycin);
%ID_exp_0_to_7(day_Zosyn_exp,Zosyn);
%ID_exp_0_to_7(day_Aminoglycosides_exp,Aminoglycosides);
%ID_exp_0_to_7(day_Amphotericin_exp,Amphotericin);
%ID_exp_0_to_7(day_Antivirals_exp,Antivirals);
%ID_exp_0_to_7(day_Contrast_exp,Contrast);
%ID_exp_0_to_7(day_NSAID_exp,NSAID);
%ID_exp_0_to_7(day_Ketorolac_exp,Ketorolac);
%ID_exp_0_to_7(day_Celecoxib_exp,Celecoxib);
%ID_exp_0_to_7(day_Calcineurin_inhibitors_exp,Calcineurin);
%ID_exp_0_to_7(day_Sirolimus_exp,Sirolimus);
%ID_exp_0_to_7(day_AED_exp,AED);
%ID_exp_0_to_7(day_ACE_ARB_exp,ACE);

RUN;

PROC FREQ data=data_day_exp_ID;
/*   table ID_Vancomycin_3_to_0/missing;*/
/*   table ID_Vancomycin_3_to_0*Vancomycin_exp/missing;*/
/*   table ID_Vancomycin_3_to_0*day_Vancomycin_exp/missing;*/
   table ID_Calcineurin_3_to_0/ missing;
   table ID_Calcineurin_3_to_0*Calcineurin_inhibitors_exp/ missing;
   table ID_Calcineurin_3_to_0*day_Calcineurin_inhibitors_exp/ missing;

   table ID_Calcineurin_0_to_7/ missing;
   table ID_Calcineurin_0_to_7*Calcineurin_inhibitors_exp/ missing;
   table ID_Calcineurin_0_to_7*day_Calcineurin_inhibitors_exp/ missing;


RUN;

/*So we can identify the proportion of exposures where the initial exposure occured within the first 3 to 0 days before the flag
AND the proportion of exposures where the initial exposure occured within the 0 to 7 days after the flag

*/

/*Time to aki*/
/*
time_flag_to_AKI
*/

/*
supratherapeutic_vancomyci -> Vancomycin_exp
gentamicin_trough_2 -> Aminoglycosides_exp
cyclosporine_level_300 -> Calcineurin_inhibitors_exp
tacrolimus_level_15_>Calcineurin_inhibitors_exp
*/
PROC FREQ data=data_d;

/*table supratherapeutic_vancomyci*Vancomycin_exp/missing;*/
/*table gentamicin_trough_2*Aminoglycosides_exp/ missing;*/
table cyclosporine_level_300*Calcineurin_inhibitors_exp /missing;
table tacrolimus_level_15*Calcineurin_inhibitors_exp/missing;
/*It is okay to group cyclosporine_level_300 and tacrolimus_level_15 into a supratherapeutic indicator group*/
/*tacrolimus_level_15*/
RUN;

/*
⁃	Vasoactive prior to flag (indication of exposure in those days)

I am no sure this is the correct way to look at it, but if something other than 0 was recorded, then the indication of vasoactive for the day was made
*/
data vaso;
   set data_day_exp_ID;
IF vaso_day_3 ^= '0' THEN day_vaso = -3; ELSE day_vaso = .;
IF day_vaso = . THEN DO;
	IF vaso_day_2 ^= '0' THEN day_vaso = -2; ELSE day_vaso = .;
END;
IF day_vaso = . THEN DO;
	IF vaso_day_1 ^= '0' THEN day_vaso = -1; ELSE day_vaso = .;
END;
IF day_vaso = . THEN DO;
	IF vaso_day_0 ^= '0' THEN day_vaso = 0; ELSE day_vaso = .;
END;
IF day_vaso = . THEN DO;
	IF vaso_day_p1 ^= '0' THEN day_vaso = 1; ELSE day_vaso = .;
END;
IF day_vaso = . THEN DO;
	IF vaso_day_p2 ^= '0' THEN day_vaso = 2; ELSE day_vaso = .;
END;
IF day_vaso = . THEN DO;
	IF vaso_day_p3 ^= '0' THEN day_vaso = 3; ELSE day_vaso = .;
END;
RUN;

PROC FREQ data=vaso;

/*table vaso_day_3/missing;*/
/*table vaso_day_2/ missing;*/
/*table vaso_day_1/missing;*/
/*table vaso_day_0/missing;*/
/*table vaso_day_p1/missing;*/
/*table vaso_day_p2/missing;*/
/*table vaso_day_p3/missing;*/
table day_vaso/missing;
RUN;
PROC FORMAT;
   value ynf 0="No"
   			1="Yes";
RUN;
data data_e;
   set vaso;

   FORMAT 
ID_Vancomycin_3_to_0 ynf.
ID_Zosyn_3_to_0 ynf.
ID_Aminoglycosides_3_to_0 ynf.
ID_Amphotericin_3_to_0 ynf.
ID_Antivirals_3_to_0 ynf.
ID_Contrast_3_to_0 ynf.
ID_NSAID_3_to_0 ynf.
ID_Ketorolac_3_to_0 ynf.
ID_Celecoxib_3_to_0 ynf.
ID_Calcineurin_inhibitors_ex ynf.
ID_Sirolimus_3_to_0 ynf.
ID_AED_3_to_0 ynf.
ID_ACE_ARB_3_to_0 ynf.
ID_Vancomycin_0_to_7 ynf.
ID_Zosyn_0_to_7 ynf.
ID_Aminoglycosides_0_to_7 ynf.
ID_Amphotericin_0_to_7 ynf.
ID_Antivirals_0_to_7 ynf.
ID_Contrast_0_to_7 ynf.
ID_NSAID_0_to_7 ynf.
ID_Ketorolac_0_to_7 ynf.
ID_Celecoxib_0_to_7 ynf.
ID_Calcineurin_inhibitors_ex ynf.
ID_Sirolimus_0_to_7 ynf.
ID_AED_0_to_7 ynf.
ID_ACE_ARB_0_to_7 ynf.
Vancomycin_exp ynf.
Zosyn_exp ynf.
Aminoglycosides_exp ynf.
Amphotericin_exp ynf.
Antivirals_exp ynf.
Contrast_exp ynf.
NSAID_exp ynf.
Ketorolac_exp ynf.
Celecoxib_exp ynf.
Calcineurin_inhibitors_exp ynf.
Sirolimus_exp ynf.
AED_exp ynf.
ACE_ARB_exp ynf.

   ;
RUN;
/*Export data_e for specific exposures tables in Table 3*/
proc export data=work.data_e
    outfile="H:/From CBC Individual/BrintonJ/AKI/2024.03.06 Shih NINJA - RAI mephrotoxin exposures in ICU and clincal course retrospective cohort/data/data_e.csv" 
    dbms=csv 
    replace;
run;
quit;

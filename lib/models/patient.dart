import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';

class PatientModel {
  static List<Patient> patients;
}

class Patient {
  final int id;
  final String item_id;
  final String frequency_id;
  final String for_days;
  final String item_qty;
  final String issued_qty;
  final String dosage;
  final String dosage_category_id;
  final String timing_id;
  final String appointment_id;
  final int medical_exam_id;
  final int sickness_id;
  final String patient_name;
  final String gender;
  final String emp_code;
  final String ticket_no;
  final String appointment_date;
  final String ailment_systems_new;
  final String complaints;
  final String ailments_new;
  final String remarks_rece;
  final String examination_remarks;
  final String temperature;
  final String spo2_percent;
  final String injury_time;
  final String injury_cause;
  final String branch_area;
  final String incident_location;
  final String injury_procedure;
  final String injury_parts_new;
  final String injury_classes_new;
  final String injury_types_new;
  final String sickness_name;
  final String des;
  final String sickness_date;
  final String approval_date;
  final String date_absent;
  final String date_absent_to;
  final String date_return;
  final String fitness_status;
  final String ailment_system;
  final String ailment_name;
  final String agency;
  final String medical_entry_date;
  final String peme_no;
  final int height;
  final int weight;
  final dynamic bmi;
  final String pulse;
  final String bp;
  final String bp_sbp;
  final String bp_dbp;
  final String s1;
  final String any_other_sound;
  final String ecg_findings;
  final String father_name;
  final String designation_name;
  final String primary_phone;
  final String email_id;
  final String identi_mark;
  final String village;
  final String post;
  final String tehsil;
  final String district;
  final String state;
  final String pin_code;
  final String chest;
  final String chest_in;
  final String chest_exp;
  final String skin;
  final String musculo_skeletal;
  final String hb;
  final String tlc;
  final String dlc_n;
  final String dlc_l;
  final String dlc_m;
  final String dlc_e;
  final String esr;
  final String blood_sugar_fbs;
  final String blood_sugar_rbs;
  final String uric_acid;
  final String s_urea;
  final String s_creatinine;
  final String total_bilirubin;
  final String sgop;
  final String sgpt;
  final String total_cholestrol;
  final String ldl;
  final String triglycerides;
  final String urine_re_me;
  final String urine_re_me_comments;
  final String dis_without_right_eye;
  final String dis_without_left_eye;
  final String near_without_right_eye;
  final String near_without_left_eye;
  final String deformities;
  final String cns;
  final String nose;
  final String throat;
  final String ear;
  final String audio_findings_left;
  final String blood_sugar_ppbs;
  final String hiv;
  final String hcv;
  final String hbsag;
  final String sodium;
  final String potassium;
  final String phosphate;
  final String hco3;
  final String conj;
  final String uniconj;
  final String alk_phosphatase;
  final String total_protein;
  final String albumin;
  final String globulin;
  final String vldl;
  final String hdl;
  final String speech;
  final String higher_function;
  final String motor_function;
  final String vertigo;
  final String reflexes;
  final String vibration_syndrome;
  final String conversational_hearing;
  final String teeth_n_gum;
  final String spiro_remarks;
  final String liver;
  final String speen;
  final String tenderness;
  final String any_other_abnormality;
  final String hernia_details;
  final String hydrocele_details;
  final String phimosis;
  final String piles;
  final String fistula;
  final String xray_findings;
  final String other_findings;
  final String remarks;
  final String dlc_b;
  final String drug_allergy;
  final String followup_to_opd;
  final String followup;
  final String external_treatments;
  final String dob;
  final String ans;
  final String employer_contractor;
  final String dept;
  final String spo2;
  final String cold_cough;
  final String general_weakness;
  final String smell;
  final String calcium;
  final String st_line_walking;
  final String eac;
  final String near_with_right_eye;
  final String dis_with_right_eye;
  final String dis_with_left_eye;
  final String near_with_left_eye;
  final String color_vision;
  final String ln_v;
  final String ln_axis;
  final String ln_dcyl;
  final String ln_dsph;
  final String ld_v;
  final String ld_axis;
  final String ld_dcyl;
  final String ld_dsph;
  final String rn_v;
  final String rn_axis;
  final String rn_dcyl;
  final String rn_dsph;
  final String rd_v;
  final String rd_axis;
  final String rd_dcyl;
  final String rd_dsph;
  final String lair_250;
  final String lair_500;
  final String lair_1000;
  final String lair_2000;
  final String lair_4000;
  final String lair_8000;
  final String lbone_250;
  final String lbone_500;
  final String lbone_1000;
  final String lbone_2000;
  final String lbone_4000;
  final String lbone_8000;
  final String rair_250;
  final String rair_500;
  final String rair_1000;
  final String rair_2000;
  final String rair_4000;
  final String rair_8000;
  final String rbone_250;
  final String rbone_500;
  final String rbone_1000;
  final String rbone_2000;
  final String rbone_4000;
  final String rbone_8000;
  final String bn_findings;
  final String a;
  final String cy;
  final String i;
  final String cl;
  final String e;

  Patient({
    this.id,
    this.item_id,
    this.frequency_id,
    this.for_days,
    this.item_qty,
    this.issued_qty,
    this.dosage,
    this.dosage_category_id,
    this.timing_id,
    this.appointment_id,
    this.medical_exam_id,
    this.sickness_id,
    this.gender,
    this.patient_name,
    this.emp_code,
    this.ticket_no,
    this.appointment_date,
    this.ailment_systems_new,
    this.complaints,
    this.spo2_percent,
    this.temperature,
    this.ailments_new,
    this.remarks_rece,
    this.examination_remarks,
    this.injury_time,
    this.injury_cause,
    this.branch_area,
    this.incident_location,
    this.injury_procedure,
    this.injury_parts_new,
    this.injury_classes_new,
    this.injury_types_new,
    this.sickness_name,
    this.des,
    this.sickness_date,
    this.approval_date,
    this.date_absent,
    this.date_absent_to,
    this.date_return,
    this.fitness_status,
    this.ailment_system,
    this.ailment_name,
    this.agency,
    this.medical_entry_date,
    this.peme_no,
    this.height,
    this.weight,
    this.bmi,
    this.pulse,
    this.bp,
    this.bp_sbp,
    this.bp_dbp,
    this.s1,
    this.any_other_sound,
    this.ecg_findings,
    this.father_name,
    this.designation_name,
    this.primary_phone,
    this.email_id,
    this.identi_mark,
    this.village,
    this.post,
    this.tehsil,
    this.district,
    this.state,
    this.pin_code,
    this.chest,
    this.chest_in,
    this.chest_exp,
    this.skin,
    this.musculo_skeletal,
    this.hb,
    this.tlc,
    this.dlc_n,
    this.dlc_l,
    this.dlc_m,
    this.dlc_e,
    this.esr,
    this.blood_sugar_fbs,
    this.blood_sugar_rbs,
    this.uric_acid,
    this.s_urea,
    this.s_creatinine,
    this.total_bilirubin,
    this.sgop,
    this.sgpt,
    this.total_cholestrol,
    this.ldl,
    this.triglycerides,
    this.urine_re_me,
    this.urine_re_me_comments,
    this.dis_without_right_eye,
    this.dis_without_left_eye,
    this.near_without_right_eye,
    this.near_without_left_eye,
    this.deformities,
    this.cns,
    this.nose,
    this.throat,
    this.ear,
    this.audio_findings_left,
    this.blood_sugar_ppbs,
    this.hiv,
    this.hcv,
    this.hbsag,
    this.sodium,
    this.potassium,
    this.phosphate,
    this.hco3,
    this.conj,
    this.uniconj,
    this.alk_phosphatase,
    this.total_protein,
    this.albumin,
    this.globulin,
    this.vldl,
    this.hdl,
    this.speech,
    this.higher_function,
    this.motor_function,
    this.vertigo,
    this.reflexes,
    this.vibration_syndrome,
    this.conversational_hearing,
    this.teeth_n_gum,
    this.spiro_remarks,
    this.liver,
    this.speen,
    this.tenderness,
    this.any_other_abnormality,
    this.hernia_details,
    this.hydrocele_details,
    this.phimosis,
    this.piles,
    this.fistula,
    this.xray_findings,
    this.other_findings,
    this.remarks,
    this.dlc_b,
    this.drug_allergy,
    this.followup_to_opd,
    this.followup,
    this.external_treatments,
    this.dob,
    this.ans,
    this.employer_contractor,
    this.dept,
    this.spo2,
    this.cold_cough,
    this.general_weakness,
    this.smell,
    this.calcium,
    this.st_line_walking,
    this.eac,
    this.near_with_right_eye,
    this.dis_with_right_eye,
    this.dis_with_left_eye,
    this.near_with_left_eye,
    this.color_vision,
    this.ln_v,
    this.ln_axis,
    this.ln_dcyl,
    this.ln_dsph,
    this.ld_v,
    this.ld_axis,
    this.ld_dcyl,
    this.ld_dsph,
    this.rn_v,
    this.rn_axis,
    this.rn_dcyl,
    this.rn_dsph,
    this.rd_v,
    this.rd_axis,
    this.rd_dcyl,
    this.rd_dsph,
    this.lair_250,
    this.lair_500,
    this.lair_1000,
    this.lair_2000,
    this.lair_4000,
    this.lair_8000,
    this.lbone_250,
    this.lbone_500,
    this.lbone_1000,
    this.lbone_2000,
    this.lbone_4000,
    this.lbone_8000,
    this.rair_250,
    this.rair_500,
    this.rair_1000,
    this.rair_2000,
    this.rair_4000,
    this.rair_8000,
    this.rbone_250,
    this.rbone_500,
    this.rbone_1000,
    this.rbone_2000,
    this.rbone_4000,
    this.rbone_8000,
    this.bn_findings,
    this.a,
    this.cy,
    this.i,
    this.cl,
    this.e,
  });

  Patient copyWith({
    int id,
    String item_id,
    String frequency_id,
    String for_days,
    String item_qty,
    String issued_qty,
    String dosage,
    String dosage_category_id,
    String timing_id,
    String appointment_id,
    int medical_exam_id,
    int sickness_id,
    String gender,
    String patient_name,
    String emp_code,
    String ticket_no,
    String appointment_date,
    String ailment_systems_new,
    String complaints,
    String temperature,
    String spo2_percent,
    String ailments_new,
    String remarks_rece,
    String examination_remarks,
    String injury_time,
    String injury_cause,
    String branch_area,
    String incident_location,
    String injury_procedure,
    String injury_parts_new,
    String injury_classes_new,
    String injury_types_new,
    String sickness_name,
    String des,
    String sickness_date,
    String approval_date,
    String date_absent,
    String date_absent_to,
    String date_return,
    String fitness_status,
    String ailment_system,
    String ailment_name,
    String agency,
    String medical_entry_date,
    String peme_no,
    int height,
    int weight,
    dynamic bmi,
    String pulse,
    String bp,
    String bp_sbp,
    String bp_dbp,
    String s1,
    String any_other_sound,
    String ecg_findings,
    String father_name,
    String designation_name,
    String primary_phone,
    String email_id,
    String identi_mark,
    String village,
    String post,
    String tehsil,
    String district,
    String state,
    String pin_code,
    String chest,
    String chest_in,
    String chest_exp,
    String skin,
    String musculo_skeletal,
    String hb,
    String tlc,
    String dlc_n,
    String dlc_l,
    String dlc_m,
    String dlc_e,
    String esr,
    String blood_sugar_fbs,
    String blood_sugar_rbs,
    String uric_acid,
    String s_urea,
    String s_creatinine,
    String total_bilirubin,
    String sgop,
    String sgpt,
    String total_cholestrol,
    String ldl,
    String triglycerides,
    String urine_re_me,
    String urine_re_me_comments,
    String dis_without_right_eye,
    String dis_without_left_eye,
    String near_without_right_eye,
    String near_without_left_eye,
    String deformities,
    String cns,
    String nose,
    String throat,
    String ear,
    String audio_findings_left,
    String blood_sugar_ppbs,
    String hiv,
    String hcv,
    String hbsag,
    String sodium,
    String potassium,
    String phosphate,
    String hco3,
    String conj,
    String uniconj,
    String alk_phosphatase,
    String total_protein,
    String albumin,
    String globulin,
    String vldl,
    String hdl,
    String speech,
    String higher_function,
    String motor_function,
    String vertigo,
    String reflexes,
    String vibration_syndrome,
    String conversational_hearing,
    String teeth_n_gum,
    String spiro_remarks,
    String liver,
    String speen,
    String tenderness,
    String any_other_abnormality,
    String hernia_details,
    String hydrocele_details,
    String phimosis,
    String piles,
    String fistula,
    String xray_findings,
    String other_findings,
    String remarks,
    String dlc_b,
    String drug_allergy,
    String followup_to_opd,
    String followup,
    String external_treatments,
    String dob,
    String ans,
    String employer_contractor,
    String dept,
    String spo2,
    String cold_cough,
    String general_weakness,
    String smell,
    String calcium,
    String st_line_walking,
    String eac,
    String near_with_right_eye,
    String dis_with_right_eye,
    String dis_with_left_eye,
    String near_with_left_eye,
    String color_vision,
    String ln_v,
    String ln_axis,
    String ln_dcyl,
    String ln_dsph,
    String ld_v,
    String ld_axis,
    String ld_dcyl,
    String ld_dsph,
    String rn_v,
    String rn_axis,
    String rn_dcyl,
    String rn_dsph,
    String rd_v,
    String rd_axis,
    String rd_dcyl,
    String rd_dsph,
    String lair_250,
    String lair_500,
    String lair_1000,
    String lair_2000,
    String lair_4000,
    String lair_8000,
    String lbone_250,
    String lbone_500,
    String lbone_1000,
    String lbone_2000,
    String lbone_4000,
    String lbone_8000,
    String rair_250,
    String rair_500,
    String rair_1000,
    String rair_2000,
    String rair_4000,
    String rair_8000,
    String rbone_250,
    String rbone_500,
    String rbone_1000,
    String rbone_2000,
    String rbone_4000,
    String rbone_8000,
    String bn_findings,
    String a,
    String cy,
    String i,
    String cl,
    String e,
  }) {
    return Patient(
      id: id ?? this.id,
      item_id: item_id ?? this.item_id,
      frequency_id: frequency_id ?? this.frequency_id,
      item_qty: item_qty ?? this.item_qty,
      issued_qty: issued_qty ?? this.issued_qty,
      dosage: dosage ?? this.dosage,
      dosage_category_id: dosage_category_id ?? this.dosage_category_id,
      timing_id: timing_id ?? this.timing_id,
      appointment_id: appointment_id ?? this.appointment_id,
      medical_exam_id: medical_exam_id ?? this.medical_exam_id,
      sickness_id: sickness_id ?? this.sickness_id,
      patient_name: patient_name ?? this.patient_name,
      gender: gender ?? this.gender,
      emp_code: emp_code ?? this.emp_code,
      ticket_no: ticket_no ?? this.ticket_no,
      appointment_date: appointment_date ?? this.appointment_date,
      ailment_systems_new: ailment_systems_new ?? this.ailment_systems_new,
      complaints: complaints ?? this.complaints,
      temperature: temperature ?? this.temperature,
      ailments_new: ailments_new ?? this.ailments_new,
      remarks_rece: remarks_rece ?? this.remarks_rece,
      examination_remarks: examination_remarks ?? this.examination_remarks,
      incident_location: incident_location ?? this.incident_location,
      injury_time: injury_time ?? this.injury_time,
      injury_cause: injury_cause ?? this.injury_cause,
      branch_area: branch_area ?? this.branch_area,
      injury_procedure: injury_procedure ?? this.injury_procedure,
      injury_parts_new: injury_parts_new ?? this.injury_parts_new,
      injury_classes_new: injury_classes_new ?? this.injury_classes_new,
      injury_types_new: injury_types_new ?? this.injury_types_new,
      sickness_name: sickness_name ?? this.sickness_name,
      des: des ?? this.des,
      sickness_date: sickness_date ?? this.sickness_date,
      approval_date: approval_date ?? this.approval_date,
      date_absent: date_absent ?? this.date_absent,
      date_absent_to: date_absent_to ?? this.date_absent_to,
      date_return: date_return ?? this.date_return,
      fitness_status: fitness_status ?? this.fitness_status,
      ailment_system: ailment_system ?? this.ailment_system,
      ailment_name: ailment_name ?? this.ailment_name,
      agency: agency ?? this.agency,
      medical_entry_date: medical_entry_date ?? this.medical_entry_date,
      peme_no: peme_no ?? this.peme_no,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      bmi: bmi ?? this.bmi,
      pulse: pulse ?? this.pulse,
      bp: bp ?? this.bp,
      bp_sbp: bp_sbp ?? this.bp_sbp,
      bp_dbp: bp_dbp ?? this.bp_dbp,
      spo2_percent: spo2_percent ?? this.spo2_percent,
      s1: s1 ?? this.s1,
      any_other_sound: any_other_sound ?? this.any_other_sound,
      ecg_findings: ecg_findings ?? this.ecg_findings,
      teeth_n_gum: teeth_n_gum ?? this.teeth_n_gum,
      tlc: tlc ?? this.tlc,
      total_cholestrol: total_cholestrol ?? this.total_cholestrol,
      total_bilirubin: total_bilirubin ?? this.total_bilirubin,
      total_protein: total_protein ?? this.total_protein,
      designation_name: designation_name ?? this.designation_name,
      father_name: father_name ?? this.father_name,
      email_id: email_id ?? this.email_id,
      primary_phone: primary_phone ?? this.primary_phone,
      identi_mark: identi_mark ?? this.identi_mark,
      village: village ?? this.village,
      post: post ?? this.post,
      tehsil: tehsil ?? this.tehsil,
      district: district ?? this.district,
      state: state ?? this.state,
      pin_code: pin_code ?? this.pin_code,
      chest: chest ?? this.chest,
      chest_exp: chest_exp ?? this.chest_exp,
      chest_in: chest_in ?? this.chest_in,
      skin: skin ?? this.skin,
      musculo_skeletal: musculo_skeletal ?? this.musculo_skeletal,
      hb: hb ?? this.hb,
      dlc_n: dlc_n ?? this.dlc_n,
      dlc_l: dlc_l ?? this.dlc_l,
      dlc_m: dlc_m ?? this.dlc_m,
      dlc_e: dlc_e ?? this.dlc_e,
      esr: esr ?? this.esr,
      blood_sugar_fbs: blood_sugar_fbs ?? this.blood_sugar_fbs,
      blood_sugar_rbs: blood_sugar_rbs ?? this.blood_sugar_rbs,
      blood_sugar_ppbs: blood_sugar_ppbs ?? this.blood_sugar_ppbs,
      uric_acid: uric_acid ?? this.uric_acid,
      s_urea: s_urea ?? this.s_urea,
      s_creatinine: s_creatinine ?? this.s_creatinine,
      sgop: sgop ?? this.sgop,
      sgpt: sgpt ?? this.sgpt,
      ldl: ldl ?? this.ldl,
      vldl: vldl ?? this.vldl,
      hdl: hdl ?? this.hdl,
      triglycerides: triglycerides ?? this.triglycerides,
      urine_re_me: urine_re_me ?? this.urine_re_me,
      urine_re_me_comments: urine_re_me_comments ?? this.urine_re_me_comments,
      dis_without_left_eye: dis_without_left_eye ?? this.dis_without_left_eye,
      dis_without_right_eye:
          dis_without_right_eye ?? this.dis_without_right_eye,
      near_without_left_eye:
          near_without_left_eye ?? this.near_without_left_eye,
      near_without_right_eye:
          near_without_right_eye ?? this.near_without_right_eye,
      deformities: deformities ?? this.deformities,
      cns: cns ?? this.cns,
      nose: nose ?? this.nose,
      throat: throat ?? this.throat,
      ear: ear ?? this.ear,
      audio_findings_left: audio_findings_left ?? this.audio_findings_left,
      hiv: hiv ?? this.hiv,
      hcv: hcv ?? this.hcv,
      hbsag: hbsag ?? this.hbsag,
      sodium: sodium ?? this.sodium,
      potassium: potassium ?? this.potassium,
      phosphate: phosphate ?? this.phosphate,
      hco3: hco3 ?? this.hco3,
      conj: conj ?? this.conj,
      uniconj: uniconj ?? this.uniconj,
      alk_phosphatase: alk_phosphatase ?? this.alk_phosphatase,
      albumin: albumin ?? this.albumin,
      globulin: globulin ?? this.globulin,
      speech: speech ?? this.speech,
      higher_function: higher_function ?? this.higher_function,
      motor_function: motor_function ?? this.motor_function,
      vertigo: vertigo ?? this.vertigo,
      reflexes: reflexes ?? this.reflexes,
      vibration_syndrome: vibration_syndrome ?? this.vibration_syndrome,
      conversational_hearing:
          conversational_hearing ?? this.conversational_hearing,
      spiro_remarks: spiro_remarks ?? this.spiro_remarks,
      liver: liver ?? this.liver,
      speen: speen ?? this.speen,
      tenderness: tenderness ?? this.tenderness,
      any_other_abnormality:
          any_other_abnormality ?? this.any_other_abnormality,
      hernia_details: hernia_details ?? this.hernia_details,
      hydrocele_details: hydrocele_details ?? this.hydrocele_details,
      phimosis: phimosis ?? this.phimosis,
      piles: piles ?? this.piles,
      fistula: fistula ?? this.fistula,
      xray_findings: xray_findings ?? this.xray_findings,
      other_findings: other_findings ?? this.other_findings,
      remarks: remarks ?? this.remarks,
      dlc_b: dlc_b ?? this.dlc_b,
      drug_allergy: drug_allergy ?? this.drug_allergy,
      followup_to_opd: followup_to_opd ?? this.followup_to_opd,
      followup: followup ?? this.followup,
      external_treatments: external_treatments ?? this.external_treatments,
      dob: dob ?? this.dob,
      ans: ans ?? this.ans,
      employer_contractor: employer_contractor ?? this.employer_contractor,
      dept: dept ?? this.dept,
      spo2: spo2 ?? this.spo2,
      cold_cough: cold_cough ?? this.cold_cough,
      general_weakness: general_weakness ?? this.general_weakness,
      smell: smell ?? this.smell,
      calcium: calcium ?? this.calcium,
      st_line_walking: st_line_walking ?? this.st_line_walking,
      eac: eac ?? this.eac,
      near_with_right_eye: near_with_right_eye ?? this.near_with_right_eye,
      dis_with_right_eye: dis_with_right_eye ?? this.dis_with_right_eye,
      dis_with_left_eye: dis_with_left_eye ?? this.dis_with_left_eye,
      near_with_left_eye: near_with_left_eye ?? this.near_with_left_eye,
      color_vision: color_vision ?? this.color_vision,
      ln_v: ln_v ?? this.ln_v,
      ln_axis: ln_axis ?? this.ln_axis,
      ln_dcyl: ln_dcyl ?? this.ln_dcyl,
      ln_dsph: ln_dsph ?? this.ln_dsph,
      ld_v: ld_v ?? this.ld_v,
      ld_axis: ld_axis ?? this.ld_axis,
      ld_dcyl: ld_dcyl ?? this.ld_dcyl,
      ld_dsph: ld_dsph ?? this.ld_dsph,
      rn_v: rn_v ?? this.rn_v,
      rn_axis: rn_axis ?? this.rn_axis,
      rn_dcyl: rn_dcyl ?? this.rn_dcyl,
      rn_dsph: rn_dsph ?? this.rn_dsph,
      rd_v: rd_v ?? this.rd_v,
      rd_axis: rd_axis ?? this.rd_axis,
      rd_dcyl: rd_dcyl ?? this.rd_dcyl,
      rd_dsph: rd_dsph ?? this.rd_dsph,
      lair_250: lair_250 ?? this.lair_250,
      lair_500: lair_500 ?? this.lair_500,
      lair_1000: lair_1000 ?? this.lair_1000,
      lair_2000: lair_2000 ?? this.lair_2000,
      lair_4000: lair_4000 ?? this.lair_4000,
      lair_8000: lair_8000 ?? this.lair_8000,
      lbone_250: lbone_250 ?? this.lbone_250,
      lbone_500: lbone_500 ?? this.lbone_500,
      lbone_1000: lbone_1000 ?? this.lbone_1000,
      lbone_2000: lbone_2000 ?? this.lbone_2000,
      lbone_4000: lbone_4000 ?? this.lbone_4000,
      lbone_8000: lbone_8000 ?? this.lbone_8000,
      rair_250: rair_250 ?? this.rair_250,
      rair_500: rair_500 ?? this.rair_500,
      rair_1000: rair_1000 ?? this.rair_1000,
      rair_2000: rair_2000 ?? this.rair_2000,
      rair_4000: rair_4000 ?? this.rair_4000,
      rair_8000: rair_8000 ?? this.rair_8000,
      rbone_250: rbone_250 ?? this.rbone_250,
      rbone_500: rbone_500 ?? this.rbone_500,
      rbone_1000: rbone_1000 ?? this.rbone_1000,
      rbone_2000: rbone_2000 ?? this.rbone_2000,
      rbone_4000: rbone_4000 ?? this.rbone_4000,
      rbone_8000: rbone_8000 ?? this.rbone_8000,
      bn_findings: bn_findings ?? this.bn_findings,
      a: a ?? this.a,
      cy: cy ?? this.cy,
      i: i ?? this.i,
      cl: cl ?? this.cl,
      e: e ?? this.e,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item_id': item_id,
      'frequency_id': frequency_id,
      'for_days': for_days,
      'issued_qty': issued_qty,
      'item_qty': item_qty,
      'dosage': dosage,
      'dosage_category_id': dosage_category_id,
      'timing_id': timing_id,
      'medical_exam_id': medical_exam_id,
      'sickness_id': sickness_id,
      'patient_name': patient_name,
      'gender': gender,
      'emp_code': emp_code,
      'ticket_no': ticket_no,
      'appointment_date': appointment_date,
      'ailment_systems_new': ailment_systems_new,
      'ailments_new': ailments_new,
      'complaints': complaints,
      'temperature': temperature,
      'remarks_rece': remarks_rece,
      'examination_remarks': examination_remarks,
      'injury_time': injury_time,
      'injury_cause': injury_cause,
      'branch_area': branch_area,
      'incident_location': incident_location,
      'injury_procedure': injury_procedure,
      'injury_parts_new': injury_parts_new,
      'injury_classes_new': injury_classes_new,
      'injury_types_new': injury_types_new,
      'sickness_name': sickness_name,
      'des': des,
      'sickness_date': sickness_date,
      'approval_date': approval_date,
      'date_absent': date_absent,
      'date_absent_to': date_absent_to,
      'date_return': date_return,
      'fitness_status': fitness_status,
      'ailment_system': ailment_system,
      'ailment_name': ailment_name,
      'agency': agency,
      'medical_entry_date': medical_entry_date,
      'peme_no': peme_no,
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'pulse': pulse,
      'bp': bp,
      'bp_sbp': bp_sbp,
      'bp_dbp': bp_dbp,
      's1': s1,
      'spo2_percent': spo2_percent,
      'any_other_sound': any_other_sound,
      'ecg_findings': ecg_findings,
      'father_name': father_name,
      'designation_name': designation_name,
      'primary_phone': primary_phone,
      'email_id': email_id,
      'identi_mark': identi_mark,
      'village': village,
      'post': post,
      'tehsil': tehsil,
      'district': district,
      'state': state,
      'pin_code': pin_code,
      'chest': chest,
      'chest_in': chest_in,
      'chest_exp': chest_exp,
      'skin': skin,
      'musculo_skeletal': musculo_skeletal,
      'hb': hb,
      'tlc': tlc,
      'dlc_n': dlc_n,
      'dlc_l': dlc_l,
      'dlc_m': dlc_m,
      'dlc_e': dlc_e,
      'esr': esr,
      'blood_sugar_fbs': blood_sugar_fbs,
      'blood_sugar_rbs': blood_sugar_rbs,
      'uric_acid': uric_acid,
      's_urea': s_urea,
      's_creatinine': s_creatinine,
      'total_bilirubin': total_bilirubin,
      'sgop': sgop,
      'sgpt': sgpt,
      'total_cholestrol': total_cholestrol,
      'ldl': ldl,
      'triglycerides': triglycerides,
      'urine_re_me': urine_re_me,
      'urine_re_me_comments': urine_re_me_comments,
      'dis_without_right_eye': dis_without_right_eye,
      'dis_without_left_eye': dis_without_left_eye,
      'near_without_right_eye': near_without_right_eye,
      'near_without_left_eye': near_without_left_eye,
      'deformities': deformities,
      'cns': cns,
      'nose': nose,
      'throat': throat,
      'ear': ear,
      'audio_findings_left': audio_findings_left,
      'blood_sugar_ppbs': blood_sugar_ppbs,
      'hiv': hiv,
      'hcv': hcv,
      'hbsag': hbsag,
      'sodium': sodium,
      'potassium': potassium,
      'phosphate': phosphate,
      'hco3': hco3,
      'conj': conj,
      'uniconj': uniconj,
      'alk_phosphatase': alk_phosphatase,
      'total_protein': total_protein,
      'albumin': albumin,
      'globulin': globulin,
      'vldl': vldl,
      'hdl': hdl,
      'speech': speech,
      'higher_function': higher_function,
      'motor_function': motor_function,
      'vertigo': vertigo,
      'reflexes': reflexes,
      'vibration_syndrome': vibration_syndrome,
      'conversational_hearing': conversational_hearing,
      'teeth_n_gum': teeth_n_gum,
      'spiro_remarks': spiro_remarks,
      'liver': liver,
      'speen': speen,
      'tenderness': tenderness,
      'any_other_abnormality': any_other_abnormality,
      'hernia_details': hernia_details,
      'hydrocele_details': hydrocele_details,
      'phimosis': phimosis,
      'piles': piles,
      'fistula': fistula,
      'xray_findings': xray_findings,
      'other_findings': other_findings,
      'remarks': remarks,
      'dlc_b': dlc_b,
      'drug_allergy': drug_allergy,
      'followup_to_opd': followup_to_opd,
      'followup': followup,
      'external_treatments': external_treatments,
      'dob': dob,
      'ans': ans,
      'employer_contractor': employer_contractor,
      'dept': dept,
      'spo2': spo2,
      'cold_cough': cold_cough,
      'general_weakness': general_weakness,
      'smell': smell,
      'calcium': calcium,
      'st_line_walking': st_line_walking,
      'eac': eac,
      'near_with_right_eye': near_with_right_eye,
      'dis_with_right_eye': dis_with_right_eye,
      'dis_with_left_eye': dis_with_left_eye,
      'near_with_left_eye': near_with_left_eye,
      'color_vision': color_vision,
      'ln_v': ln_v,
      'ln_axis': ln_axis,
      'ln_dcyl': ln_dcyl,
      'ln_dsph': ln_dsph,
      'ld_v': ld_v,
      'ld_axis': ld_axis,
      'ld_dcyl': ld_dcyl,
      'ld_dsph': ld_dsph,
      'rn_v': rn_v,
      'rn_axis': rn_axis,
      'rn_dcyl': rn_dcyl,
      'rn_dsph': rn_dsph,
      'rd_v': rd_v,
      'rd_axis': rd_axis,
      'rd_dcyl': rd_dcyl,
      'rd_dsph': rd_dsph,
      'lair_250': lair_250,
      'lair_500': lair_500,
      'lair_1000': lair_1000,
      'lair_2000': lair_2000,
      'lair_4000': lair_4000,
      'lair_8000': lair_8000,
      'lbone_250': lbone_250,
      'lbone_500': lbone_500,
      'lbone_1000': lbone_1000,
      'lbone_2000': lbone_2000,
      'lbone_4000': lbone_4000,
      'lbone_8000': lbone_8000,
      'rair_250': rair_250,
      'rair_500': rair_500,
      'rair_1000': rair_1000,
      'rair_2000': rair_2000,
      'rair_4000': rair_4000,
      'rair_8000': rair_8000,
      'rbone_250': rbone_250,
      'rbone_500': rbone_500,
      'rbone_1000': rbone_1000,
      'rbone_2000': rbone_2000,
      'rbone_4000': rbone_4000,
      'rbone_8000': rbone_8000,
      'bn_findings': bn_findings,
      'a': a,
      'cy': cy,
      'i': i,
      'cl': cl,
      'e': e,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Patient(
        id: map['id'],
        item_id: map['item_id'],
        frequency_id: map['frequency_id'],
        for_days: map['for_days'],
        item_qty: map['item_qty'],
        issued_qty: map['issued_qty'],
        dosage: map['dosage'],
        dosage_category_id: map['dosage_category_id'],
        timing_id: map['timing_id'],
        medical_exam_id: map['medical_exam_id'],
        sickness_id: map['sickness_id'],
        patient_name: map['patient_name'],
        gender: map['gender'],
        emp_code: map['emp_code'],
        ticket_no: map['ticket_no'],
        appointment_date: map['appointment_date'],
        ailment_systems_new: map['ailment_systems_new'],
        ailments_new: map['ailments_new'],
        complaints: map['complaints'],
        temperature: map['temperature'],
        spo2_percent: map['spo2_percent'],
        remarks_rece: map['remarks_rece'],
        examination_remarks: map['examination_remarks'],
        injury_time: map['injury_time'],
        injury_cause: map['injury_cause'],
        branch_area: map['branch_area'],
        incident_location: map['incident_location'],
        injury_procedure: map['injury_procedure'],
        injury_parts_new: map['injury_parts_new'],
        injury_classes_new: map['injury_classes_new'],
        injury_types_new: map['injury_types_new'],
        sickness_name: map['sickness_name'],
        des: map['des'],
        sickness_date: map['sickness_date'],
        approval_date: map['approval_date'],
        date_absent: map['date_absent'],
        date_absent_to: map['date_absent_to'],
        date_return: map['date_return'],
        fitness_status: map['fitness_status'],
        ailment_system: map['ailment_system'],
        ailment_name: map['ailment_name'],
        agency: map['agency'],
        medical_entry_date: map['medical_entry_date'],
        peme_no: map['peme_no'],
        height: map['height'],
        weight: map['weight'],
        bmi: map['bmi'],
        pulse: map['pulse'],
        bp: map['bp'],
        bp_sbp: map['bp_sbp'],
        bp_dbp: map['bp_dbp'],
        s1: map['s1'],
        any_other_sound: map['any_other_sound'],
        ecg_findings: map['ecg_findings'],
        father_name: map['father_name'],
        designation_name: map['designation_name'],
        primary_phone: map['primary_phone'],
        email_id: map['email_id'],
        identi_mark: map['identi_mark'],
        village: map['village'],
        post: map['post'],
        tehsil: map['tehsil'],
        district: map['district'],
        state: map['state'],
        pin_code: map['pin_code'],
        chest: map['chest'],
        chest_in: map['chest_in'],
        chest_exp: map['chest_exp'],
        skin: map['skin'],
        musculo_skeletal: map['musculo_skeletal'],
        hb: map['hb'],
        tlc: map['tlc'],
        dlc_n: map['dlc_n'],
        dlc_l: map['dlc_l'],
        dlc_m: map['dlc_m'],
        dlc_e: map['dlc_e'],
        esr: map['esr'],
        blood_sugar_fbs: map['blood_sugar_fbs'],
        blood_sugar_rbs: map['blood_sugar_rbs'],
        uric_acid: map['uric_acid'],
        s_urea: map['s_urea'],
        s_creatinine: map['s_creatinine'],
        total_bilirubin: map['total_bilirubin'],
        sgop: map['sgop'],
        sgpt: map['sgpt'],
        total_cholestrol: map['total_cholestrol'],
        ldl: map['ldl'],
        triglycerides: map['triglycerides'],
        urine_re_me: map['urine_re_me'],
        urine_re_me_comments: map['urine_re_me_comments'],
        dis_without_right_eye: map['dis_without_right_eye'],
        dis_without_left_eye: map['dis_without_left_eye'],
        near_without_right_eye: map['near_without_right_eye'],
        near_without_left_eye: map['near_without_left_eye'],
        deformities: map['deformities'],
        cns: map['cns'],
        nose: map['nose'],
        throat: map['throat'],
        ear: map['ear'],
        audio_findings_left: map['audio_findings_left'],
        blood_sugar_ppbs: map['blood_sugar_ppbs'],
        hiv: map['hiv'],
        hcv: map['hcv'],
        hbsag: map['hbsag'],
        sodium: 'sodium',
        potassium: map['potassium'],
        phosphate: map['phosphate'],
        hco3: map['hco3'],
        conj: 'conj',
        uniconj: map['uniconj'],
        alk_phosphatase: map['alk_phosphatase'],
        total_protein: map['total_protein'],
        albumin: map['albumin'],
        globulin: map['globulin'],
        vldl: map['vldl'],
        hdl: map['hdl'],
        speech: map['speech'],
        higher_function: map['higher_function'],
        motor_function: map['motor_function'],
        vertigo: map['vertigo'],
        reflexes: map['reflexes'],
        vibration_syndrome: map['vibration_syndrome'],
        conversational_hearing: map['conversational_hearing'],
        teeth_n_gum: map['teeth_n_gum'],
        spiro_remarks: map['spiro_remarks'],
        liver: map['liver'],
        speen: map['speen'],
        tenderness: map['tenderness'],
        any_other_abnormality: map['any_other_abnormality'],
        hernia_details: map['hernia_details'],
        hydrocele_details: map['hydrocele_details'],
        phimosis: map['phimosis'],
        piles: map['piles'],
        fistula: map['fistula'],
        xray_findings: map['xray_findings'],
        other_findings: map['other_findings'],
        remarks: map['remarks'],
        dlc_b: map['dlc_b'],
        drug_allergy: map['drug_allergy'],
        followup_to_opd: map['followup_to_opd'],
        followup: map['followup'],
        external_treatments: map['external_treatments'],
        dob: map['dob'],
        ans: map['ans'],
        employer_contractor: map['employer_contractor'],
        dept: map['dept'],
        spo2: map['spo2'],
        cold_cough: map['cold_cough'],
        general_weakness: map['general_weakness'],
        smell: map['smell'],
        calcium: map['calcium'],
        st_line_walking: map['st_line_walking'],
        eac: map['eac'],
        near_with_right_eye: map['near_with_right_eye'],
        dis_with_right_eye: map['dis_with_right_eye'],
        dis_with_left_eye: map['dis_with_left_eye'],
        near_with_left_eye: map['near_with_left_eye'],
        color_vision: map['color_vision'],
        ln_v: map['ln_v'],
        ln_axis: map['ln_axis'],
        ln_dcyl: map['ln_dcyl'],
        ln_dsph: map['ln_dsph'],
        ld_v: map['ld_v'],
        ld_axis: map['ld_axis'],
        ld_dcyl: map['ld_dcyl'],
        ld_dsph: map['ld_dsph'],
        rn_v: map['rn_v'],
        rn_axis: map['rn_axis'],
        rn_dcyl: map['rn_dcyl'],
        rn_dsph: map['rn_dsph'],
        rd_v: map['rd_v'],
        rd_axis: map['rd_axis'],
        rd_dcyl: map['rd_dcyl'],
        rd_dsph: map['rd_dsph'],
        lair_250: map['lair_250'],
        lair_500: map['lair_500'],
        lair_1000: map['lair_1000'],
        lair_2000: map['lair_2000'],
        lair_4000: map['lair_4000'],
        lair_8000: map['lair_8000'],
        lbone_250: map['lbone_250'],
        lbone_500: map['lbone_500'],
        lbone_1000: map['lbone_1000'],
        lbone_2000: map['lbone_2000'],
        lbone_4000: map['lbone_4000'],
        lbone_8000: map['lbone_8000'],
        rair_250: map['rair_250'],
        rair_500: map['rair_500'],
        rair_1000: map['rair_1000'],
        rair_2000: map['rair_2000'],
        rair_4000: map['rair_4000'],
        rair_8000: map['rair_8000'],
        rbone_250: map['rbone_250'],
        rbone_500: map['rbone_500'],
        rbone_1000: map['rbone_1000'],
        rbone_2000: map['rbone_2000'],
        rbone_4000: map['rbone_4000'],
        rbone_8000: map['rbone_8000'],
        bn_findings: map['bn_findings'],
        a: map['a'],
        cy: map['cy'],
        i: map['i'],
        cl: map['cl'],
        e: map['e']);
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) =>
      Patient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Patient(id: $id,appointment_id: $appointment_id,item_id: $item_id,frequency_id: $frequency_id,for_days: $for_days,item_qty: $item_qty,issued_qty: $issued_qty,dosage: $dosage,dosage_category_id: $dosage_category_id,timing_id:$timing_id,medical_exam_id: $medical_exam_id,sickness_id: $sickness_id, name: $patient_name,gender: $gender ,emp_code: $emp_code,ticket_no: $ticket_no,appointment_date: $appointment_date,ailment_systems_new: $ailment_systems_new,ailments_new: $ailments_new,complaints: $complaints,temperature: $temperature,spo2_percent: $spo2_percent,remarks_rece: $remarks_rece,examination_remarks: $examination_remarks,incident_location: $incident_location,injury_procedure: $injury_procedure,injury_parts_new: $injury_parts_new,injury_classes_new: $injury_classes_new,injury_time: $injury_time,injury_cause: $injury_cause,branch_area: $branch_area, injury_types_new: $injury_types_new, sickness_name: $sickness_name, des: $des, sickness_date: $sickness_date, approval_date: $approval_date, date_absent: $date_absent, date_absent_to: $date_absent_to, date_return: $date_return, fitness_status: $fitness_status, ailment_system: $ailment_system, ailment_name: $ailment_name,agency: $agency,medical_entry_date :$medical_entry_date,peme_no: $peme_no,height :$height,weight :$weight,bmi :$bmi,pulse :$pulse,bp :$bp,bp_sbp :$bp_sbp,bp_dbp :$bp_dbp,s1 :$s1,any_other_sound :$any_other_sound,ecg_findings :$ecg_findings,father_name :$father_name,designation_name :$designation_name,primary_phone :$primary_phone,email_id :$email_id,identi_mark :$identi_mark,village :$village,post :$post,tehsil :$tehsil,district :$district,state :$state,pin_code :$pin_code,chest :$chest,chest_in :$chest_in,chest_exp :$chest_exp,skin :$skin,musculo_skeletal :$musculo_skeletal,hb :$hb,tlc :$tlc,dlc_n :$dlc_n,dlc_l :$dlc_l,dlc_m :$dlc_m,dlc_e :$dlc_e,esr :$esr,blood_sugar_fbs :$blood_sugar_fbs,blood_sugar_rbs :$blood_sugar_rbs,uric_acid :$uric_acid,s_urea :$s_urea,s_creatinine :$s_creatinine,total_bilirubin :$total_bilirubin,sgop :$sgop,sgpt :$sgpt,total_cholestrol :$total_cholestrol,ldl :$ldl,triglycerides :$triglycerides,urine_re_me :$urine_re_me,urine_re_me_comments :$urine_re_me_comments,dis_without_right_eye :$dis_without_right_eye,dis_without_left_eye :$dis_without_left_eye,near_without_right_eye :$near_without_right_eye,near_without_left_eye :$near_without_left_eye,deformities :$deformities,cns :$cns,nose :$nose,throat :$throat,ear :$ear,audio_findings_left :$audio_findings_left,blood_sugar_ppbs :$blood_sugar_ppbs,hiv :$hiv,hcv :$hcv,hbsag :$hbsag,sodium :$sodium,potassium :$potassium,phosphate :$phosphate,hco3 :$hco3,conj :$conj,uniconj :$uniconj,alk_phosphatase :$alk_phosphatase,total_protein :$total_protein,albumin :$albumin,globulin :$globulin,vldl :$vldl,hdl :$hdl,speech :$speech,higher_function :$higher_function,motor_function :$motor_function,vertigo :$vertigo,reflexes :$reflexes,vibration_syndrome :$vibration_syndrome,conversational_hearing :$conversational_hearing,teeth_n_gum :$teeth_n_gum,spiro_remarks :$spiro_remarks,liver :$liver,speen :$speen,tenderness :$tenderness,any_other_abnormality :$any_other_abnormality,hernia_details :$hernia_details,hydrocele_details :$hydrocele_details,phimosis :$phimosis,piles :$piles,fistula :$fistula,xray_findings :$xray_findings,other_findings :$other_findings,remarks:$remarks,dlc_b:$dlc_b,drug_allergy:$drug_allergy,followup_to_opd:$followup_to_opd,followup:$followup,external_treatments:$external_treatments,dob:$dob,ans:$ans,employer_contractor:$employer_contractor,dept:$dept,spo2 : $spo2,cold_cough : $cold_cough,general_weakness : $general_weakness,smell : $smell,calcium : $calcium,st_line_walking : $st_line_walking,eac : $eac,near_with_right_eye : $near_with_right_eye,dis_with_right_eye : $dis_with_right_eye,dis_with_left_eye : $dis_with_left_eye,near_with_left_eye : $near_with_left_eye,color_vision : $color_vision,ln_v : $ln_v,ln_axis : $ln_axis,ln_dcyl: $ln_dcyl,=ln_dsph : $ln_dsph,ld_v : $ld_v,ld_axis : $ld_axis,ld_dcyl : $ld_dcyl,ld_dsph : $ld_dsph,rn_v : $rn_v,rn_axis : $rn_axis,rn_dcyl : $rn_dcyl,rn_dsph : $rn_dsph,rd_v : $rd_v,rd_axis : $rd_axis,rd_dcyl : $rd_dcyl,rd_dsph : $rd_dsph,lair_250 : $lair_250,lair_500 : $lair_500,lair_1000 : $lair_1000,lair_2000 : $lair_2000,lair_4000 : $lair_4000,lair_8000 : $lair_8000,lbone_250 : $lbone_250,lbone_500 : $lbone_500,lbone_1000 : $lbone_1000,lbone_2000 : $lbone_2000,lbone_4000 : $lbone_4000,lbone_8000 : $lbone_8000,rair_250 : $rair_250,rair_500 : $rair_500,rair_1000 : $rair_1000,rair_2000 : $rair_2000,rair_4000 : $rair_4000,rair_8000 : $rair_8000,rbone_250 : $rbone_250,rbone_500 : $rbone_500,rbone_1000 : $rbone_1000,rbone_2000 : $rbone_2000,rbone_4000 : $rbone_4000,rbone_8000 : $rbone_8000,bn_findings : $bn_findings,a : $a,cy : $cy,i : $i,cl : $cl,e: $e)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Patient &&
        o.id == id &&
        o.appointment_id == appointment_id &&
        o.item_id == item_id &&
        o.frequency_id == frequency_id &&
        o.item_qty == item_qty &&
        o.issued_qty == issued_qty &&
        o.for_days == for_days &&
        o.dosage == dosage &&
        o.dosage_category_id == dosage_category_id &&
        o.timing_id == timing_id &&
        o.medical_exam_id == medical_exam_id &&
        o.sickness_id == sickness_id &&
        o.patient_name == patient_name &&
        o.gender == gender &&
        o.emp_code == emp_code &&
        o.ticket_no == ticket_no &&
        o.appointment_date == appointment_date &&
        o.ailment_systems_new == ailment_systems_new &&
        o.ailments_new == ailments_new &&
        o.complaints == complaints &&
        o.temperature == temperature &&
        o.spo2_percent == spo2_percent &&
        o.remarks_rece == remarks_rece &&
        o.examination_remarks == examination_remarks &&
        o.injury_cause == injury_cause &&
        o.branch_area == branch_area &&
        o.injury_time == injury_time &&
        o.incident_location == incident_location &&
        o.injury_procedure == injury_procedure &&
        o.injury_parts_new == injury_parts_new &&
        o.injury_classes_new == injury_classes_new &&
        o.injury_types_new == injury_types_new &&
        o.sickness_name == sickness_name &&
        o.des == des &&
        o.sickness_date == sickness_date &&
        o.approval_date == approval_date &&
        o.date_absent == date_absent &&
        o.date_absent_to == date_absent_to &&
        o.date_return == date_return &&
        o.fitness_status == fitness_status &&
        o.ailment_system == ailment_system &&
        o.ailment_name == ailment_name &&
        o.agency == agency &&
        o.medical_entry_date == medical_entry_date &&
        o.peme_no == peme_no &&
        o.height == height &&
        o.weight == weight &&
        o.bmi == bmi &&
        o.pulse == pulse &&
        o.bp == bp &&
        o.bp_sbp == bp_sbp &&
        o.bp_dbp == bp_dbp &&
        o.s1 == s1 &&
        o.any_other_sound == any_other_sound &&
        o.ecg_findings == ecg_findings &&
        o.father_name == father_name &&
        o.designation_name == designation_name &&
        o.primary_phone == primary_phone &&
        o.email_id == email_id &&
        o.identi_mark == identi_mark &&
        o.village == village &&
        o.post == post &&
        o.tehsil == tehsil &&
        o.district == district &&
        o.state == state &&
        o.pin_code == pin_code &&
        o.chest == chest &&
        o.chest_in == chest_in &&
        o.chest_exp == chest_exp &&
        o.skin == skin &&
        o.musculo_skeletal == musculo_skeletal &&
        o.hb == hb &&
        o.tlc == tlc &&
        o.dlc_n == dlc_n &&
        o.dlc_l == dlc_l &&
        o.dlc_m == dlc_m &&
        o.dlc_e == dlc_e &&
        o.esr == esr &&
        o.blood_sugar_fbs == blood_sugar_fbs &&
        o.blood_sugar_rbs == blood_sugar_rbs &&
        o.uric_acid == uric_acid &&
        o.s_urea == s_urea &&
        o.s_creatinine == s_creatinine &&
        o.total_bilirubin == total_bilirubin &&
        o.sgop == sgop &&
        o.sgpt == sgpt &&
        o.total_cholestrol == total_cholestrol &&
        o.ldl == ldl &&
        o.triglycerides == triglycerides &&
        o.urine_re_me == urine_re_me &&
        o.urine_re_me_comments == urine_re_me_comments &&
        o.dis_without_right_eye == dis_without_right_eye &&
        o.dis_without_left_eye == dis_without_left_eye &&
        o.near_without_right_eye == near_without_right_eye &&
        o.near_without_left_eye == near_without_left_eye &&
        o.deformities == deformities &&
        o.cns == cns &&
        o.nose == nose &&
        o.throat == throat &&
        o.ear == ear &&
        o.audio_findings_left == audio_findings_left &&
        o.blood_sugar_ppbs == blood_sugar_ppbs &&
        o.hiv == hiv &&
        o.hcv == hcv &&
        o.hbsag == hbsag &&
        o.sodium == sodium &&
        o.potassium == potassium &&
        o.phosphate == phosphate &&
        o.hco3 == hco3 &&
        o.conj == conj &&
        o.uniconj == uniconj &&
        o.alk_phosphatase == alk_phosphatase &&
        o.total_protein == total_protein &&
        o.albumin == albumin &&
        o.globulin == globulin &&
        o.vldl == vldl &&
        o.hdl == hdl &&
        o.speech == speech &&
        o.higher_function == higher_function &&
        o.motor_function == motor_function &&
        o.vertigo == vertigo &&
        o.reflexes == reflexes &&
        o.vibration_syndrome == vibration_syndrome &&
        o.conversational_hearing == conversational_hearing &&
        o.teeth_n_gum == teeth_n_gum &&
        o.spiro_remarks == spiro_remarks &&
        o.liver == liver &&
        o.speen == speen &&
        o.tenderness == tenderness &&
        o.any_other_abnormality == any_other_abnormality &&
        o.hernia_details == hernia_details &&
        o.hydrocele_details == hydrocele_details &&
        o.phimosis == phimosis &&
        o.piles == piles &&
        o.fistula == fistula &&
        o.xray_findings == xray_findings &&
        o.other_findings == other_findings &&
        o.remarks == remarks &&
        o.dlc_b == dlc_b &&
        o.drug_allergy == drug_allergy &&
        o.followup_to_opd == followup_to_opd &&
        o.followup == followup &&
        o.external_treatments == external_treatments &&
        o.dob == dob &&
        o.ans == ans &&
        o.employer_contractor == employer_contractor &&
        o.dept == dept &&
        o.spo2 == spo2 &&
        o.cold_cough == cold_cough &&
        o.general_weakness == general_weakness &&
        o.smell == smell &&
        o.calcium == calcium &&
        o.st_line_walking == st_line_walking &&
        o.eac == eac &&
        o.near_with_right_eye == near_with_right_eye &&
        o.dis_with_right_eye == dis_with_right_eye &&
        o.dis_with_left_eye == dis_with_left_eye &&
        o.near_with_left_eye == near_with_left_eye &&
        o.color_vision == color_vision &&
        o.ln_v == ln_v &&
        o.ln_axis == ln_axis &&
        o.ln_dcyl == ln_dcyl &&
        o.ln_dsph == ln_dsph &&
        o.ld_v == ld_v &&
        o.ld_axis == ld_axis &&
        o.ld_dcyl == ld_dcyl &&
        o.ld_dsph == ld_dsph &&
        o.rn_v == rn_v &&
        o.rn_axis == rn_axis &&
        o.rn_dcyl == rn_dcyl &&
        o.rn_dsph == rn_dsph &&
        o.rd_v == rd_v &&
        o.rd_axis == rd_axis &&
        o.rd_dcyl == rd_dcyl &&
        o.rd_dsph == rd_dsph &&
        o.lair_250 == lair_250 &&
        o.lair_500 == lair_500 &&
        o.lair_1000 == lair_1000 &&
        o.lair_2000 == lair_2000 &&
        o.lair_4000 == lair_4000 &&
        o.lair_8000 == lair_8000 &&
        o.lbone_250 == lbone_250 &&
        o.lbone_500 == lbone_500 &&
        o.lbone_1000 == lbone_1000 &&
        o.lbone_2000 == lbone_2000 &&
        o.lbone_4000 == lbone_4000 &&
        o.lbone_8000 == lbone_8000 &&
        o.rair_250 == rair_250 &&
        o.rair_500 == rair_500 &&
        o.rair_1000 == rair_1000 &&
        o.rair_2000 == rair_2000 &&
        o.rair_4000 == rair_4000 &&
        o.rair_8000 == rair_8000 &&
        o.rbone_250 == rbone_250 &&
        o.rbone_500 == rbone_500 &&
        o.rbone_1000 == rbone_1000 &&
        o.rbone_2000 == rbone_2000 &&
        o.rbone_4000 == rbone_4000 &&
        o.rbone_8000 == rbone_8000 &&
        o.bn_findings == bn_findings &&
        o.a == a &&
        o.cy == cy &&
        o.i == i &&
        o.cl == cl &&
        o.e == e;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        appointment_id.hashCode ^
        item_id.hashCode ^
        frequency_id.hashCode ^
        item_qty.hashCode ^
        issued_qty.hashCode ^
        for_days.hashCode ^
        dosage.hashCode ^
        dosage_category_id.hashCode ^
        timing_id.hashCode ^
        medical_exam_id.hashCode ^
        appointment_id.hashCode ^
        patient_name.hashCode ^
        gender.hashCode ^
        emp_code.hashCode ^
        ticket_no.hashCode ^
        appointment_date.hashCode ^
        ailment_systems_new.hashCode ^
        ailments_new.hashCode ^
        complaints.hashCode ^
        temperature.hashCode ^
        spo2_percent.hashCode ^
        remarks_rece.hashCode ^
        examination_remarks.hashCode ^
        injury_time.hashCode ^
        injury_cause.hashCode ^
        branch_area.hashCode ^
        incident_location.hashCode ^
        injury_procedure.hashCode ^
        injury_classes_new.hashCode ^
        injury_parts_new.hashCode ^
        injury_types_new.hashCode ^
        sickness_name.hashCode ^
        des.hashCode ^
        sickness_date.hashCode ^
        approval_date.hashCode ^
        date_absent.hashCode ^
        date_absent_to.hashCode ^
        date_return.hashCode ^
        fitness_status.hashCode ^
        ailment_system.hashCode ^
        ailment_name.hashCode ^
        agency.hashCode ^
        medical_entry_date.hashCode ^
        peme_no.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        bmi.hashCode ^
        pulse.hashCode ^
        bp.hashCode ^
        bp_sbp.hashCode ^
        bp_dbp.hashCode ^
        s1.hashCode ^
        any_other_sound.hashCode ^
        ecg_findings.hashCode ^
        father_name.hashCode ^
        designation_name.hashCode ^
        primary_phone.hashCode ^
        email_id.hashCode ^
        identi_mark.hashCode ^
        village.hashCode ^
        post.hashCode ^
        tehsil.hashCode ^
        district.hashCode ^
        state.hashCode ^
        pin_code.hashCode ^
        chest.hashCode ^
        chest_in.hashCode ^
        chest_exp.hashCode ^
        skin.hashCode ^
        musculo_skeletal.hashCode ^
        hb.hashCode ^
        tlc.hashCode ^
        dlc_n.hashCode ^
        dlc_l.hashCode ^
        dlc_m.hashCode ^
        dlc_e.hashCode ^
        esr.hashCode ^
        blood_sugar_fbs.hashCode ^
        blood_sugar_rbs.hashCode ^
        uric_acid.hashCode ^
        s_urea.hashCode ^
        s_creatinine.hashCode ^
        total_bilirubin.hashCode ^
        sgop.hashCode ^
        sgpt.hashCode ^
        total_cholestrol.hashCode ^
        ldl.hashCode ^
        triglycerides.hashCode ^
        urine_re_me.hashCode ^
        urine_re_me_comments.hashCode ^
        dis_without_right_eye.hashCode ^
        dis_without_left_eye.hashCode ^
        near_without_right_eye.hashCode ^
        near_without_left_eye.hashCode ^
        deformities.hashCode ^
        cns.hashCode ^
        nose.hashCode ^
        throat.hashCode ^
        ear.hashCode ^
        audio_findings_left.hashCode ^
        blood_sugar_ppbs.hashCode ^
        hiv.hashCode ^
        hcv.hashCode ^
        hbsag.hashCode ^
        sodium.hashCode ^
        potassium.hashCode ^
        phosphate.hashCode ^
        hco3.hashCode ^
        conj.hashCode ^
        uniconj.hashCode ^
        alk_phosphatase.hashCode ^
        total_protein.hashCode ^
        albumin.hashCode ^
        globulin.hashCode ^
        vldl.hashCode ^
        hdl.hashCode ^
        speech.hashCode ^
        higher_function.hashCode ^
        motor_function.hashCode ^
        vertigo.hashCode ^
        reflexes.hashCode ^
        vibration_syndrome.hashCode ^
        conversational_hearing.hashCode ^
        teeth_n_gum.hashCode ^
        spiro_remarks.hashCode ^
        liver.hashCode ^
        speen.hashCode ^
        tenderness.hashCode ^
        any_other_abnormality.hashCode ^
        hernia_details.hashCode ^
        hydrocele_details.hashCode ^
        phimosis.hashCode ^
        piles.hashCode ^
        fistula.hashCode ^
        xray_findings.hashCode ^
        other_findings.hashCode ^
        remarks.hashCode ^
        dlc_b.hashCode ^
        drug_allergy.hashCode ^
        followup_to_opd.hashCode ^
        followup.hashCode ^
        external_treatments.hashCode ^
        dob.hashCode ^
        ans.hashCode ^
        employer_contractor.hashCode ^
        dept.hashCode ^
        spo2.hashCode ^
        cold_cough.hashCode ^
        general_weakness.hashCode ^
        smell.hashCode ^
        calcium.hashCode ^
        st_line_walking.hashCode ^
        eac.hashCode ^
        near_with_right_eye.hashCode ^
        dis_with_right_eye.hashCode ^
        dis_with_left_eye.hashCode ^
        near_with_left_eye.hashCode ^
        color_vision.hashCode ^
        ln_v.hashCode ^
        ln_axis.hashCode ^
        ln_dcyl.hashCode ^
        ln_dsph.hashCode ^
        ld_v.hashCode ^
        ld_axis.hashCode ^
        ld_dcyl.hashCode ^
        ld_dsph.hashCode ^
        rn_v.hashCode ^
        rn_axis.hashCode ^
        rn_dcyl.hashCode ^
        rn_dsph.hashCode ^
        rd_v.hashCode ^
        rd_axis.hashCode ^
        rd_dcyl.hashCode ^
        rd_dsph.hashCode ^
        lair_250.hashCode ^
        lair_500.hashCode ^
        lair_1000.hashCode ^
        lair_2000.hashCode ^
        lair_4000.hashCode ^
        lair_8000.hashCode ^
        lbone_250.hashCode ^
        lbone_500.hashCode ^
        lbone_1000.hashCode ^
        lbone_2000.hashCode ^
        lbone_4000.hashCode ^
        lbone_8000.hashCode ^
        rair_250.hashCode ^
        rair_500.hashCode ^
        rair_1000.hashCode ^
        rair_2000.hashCode ^
        rair_4000.hashCode ^
        rair_8000.hashCode ^
        rbone_250.hashCode ^
        rbone_500.hashCode ^
        rbone_1000.hashCode ^
        rbone_2000.hashCode ^
        rbone_4000.hashCode ^
        rbone_8000.hashCode ^
        bn_findings.hashCode ^
        a.hashCode ^
        cy.hashCode ^
        i.hashCode ^
        cl.hashCode ^
        e.hashCode;
  }
}

// class Medicine {
//   String item_id,
//       frequency_id,
//       for_days,
//       item_qty,
//       issued_qty,
//       dosage,
//       dosage_category_id;

//   Medicine(
//       {this.item_id,
//       this.frequency_id,
//       this.for_days,
//       this.item_qty,
//       this.issued_qty,
//       this.dosage,
//       this.dosage_category_id});
//   //constructor

//   factory Medicine.fromJSON(Map<String, dynamic> json) {
//     return Medicine(
//         item_id: int.parse(json["item_id"]),
//         frequency_id: json["frequency_id"],
//         for_days: json["for_days"],
//         item_qty: json["item_qty"],
//         issued_qty: json["issued_qty"],
//         dosage: json["dosage"],
//         dosage_category_id: json["dosage_category_id"]);
//   }
// }

// class Medicine {
//   String item_id,
//       frequency_id,
//       for_days,
//       item_qty,
//       issued_qty,
//       dosage,
//       dosage_category_id,
//       timing_id;

//   Medicine(
//       {this.item_id,
//       this.frequency_id,
//       this.for_days,
//       this.item_qty,
//       this.issued_qty,
//       this.dosage,
//       this.dosage_category_id,
//       this.timing_id});
//   factory Medicine.fromJSON(Map<String, dynamic> jsonMap) {
//     return Medicine(
//         item_id: jsonMap['item_id'] as String,
//         frequency_id: jsonMap['frequency_id'] as String,
//         for_days: jsonMap['for_days'] as String,
//         item_qty: jsonMap['item_qty'] as String,
//         issued_qty: jsonMap['issued_qty'] as String,
//         dosage: jsonMap['dosage'] as String,
//         dosage_category_id: jsonMap['dosage_category_id'] as String,
//         timing_id: jsonMap['timing_id'] as String);
//   }

//   Map toMap() {
//     var map = new Map<String, dynamic>();
//     map["item_id"] = item_id;
//     map["frequency_id"] = frequency_id;
//     map["for_days"] = for_days;
//     map["item_qty"] = item_qty;
//     map["issued_qty"] = issued_qty;
//     map["dosage"] = dosage;
//     map["dosage_category_id"] = dosage_category_id;
//     map["timing_id"] = timing_id;
//     return map;
//   }

//   @override
//   String toString() {
//     var map = this.toMap();
//     map["item_id"] = this.item_id;
//     // map["frequency_id"] = this.frequency_id;
//     // map["for_days"] = this.for_days;
//     // map["item_qty"] = this.item_qty;
//     // map["issued_qty"] = this.issued_qty;
//     // map["dosage"] = this.dosage;
//     // map["dosage_category_id"] = this.dosage_category_id;
//     // map["timing_id"] = this.timing_id;
//     return map.toString();
//   }
// }

import 'dart:convert';

class PatientModel {
  static List<Patient> patients;
}

class Patient {
  final int id;
  final String patient_name;
  final String emp_code;
  final String ticket_no;
  final String appointment_date;
  final String ailment_systems_new;
  final String complaints;
  final String ailments_new;
  final String examination_remarks;
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
  final String medical_entry_date;
  final int height;
  final int weight;
  final dynamic bmi;
  final String pulse;
  final String bp;
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

  Patient({
    this.id,
    this.patient_name,
    this.emp_code,
    this.ticket_no,
    this.appointment_date,
    this.ailment_systems_new,
    this.complaints,
    this.ailments_new,
    this.examination_remarks,
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
    this.medical_entry_date,
    this.height,
    this.weight,
    this.bmi,
    this.pulse,
    this.bp,
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
  });

  Patient copyWith({
    int id,
    String patient_name,
    String emp_code,
    String ticket_no,
    String appointment_date,
    String ailment_systems_new,
    String complaints,
    String ailments_new,
    String examination_remarks,
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
    String medical_entry_date,
    int height,
    int weight,
    dynamic bmi,
    String pulse,
    String bp,
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
  }) {
    return Patient(
        id: id ?? this.id,
        patient_name: patient_name ?? this.patient_name,
        emp_code: emp_code ?? this.emp_code,
        ticket_no: ticket_no ?? this.ticket_no,
        appointment_date: appointment_date ?? this.appointment_date,
        ailment_systems_new: ailment_systems_new ?? this.ailment_systems_new,
        complaints: complaints ?? this.complaints,
        ailments_new: ailments_new ?? this.ailments_new,
        examination_remarks: examination_remarks ?? this.examination_remarks,
        incident_location: incident_location ?? this.incident_location,
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
        medical_entry_date: medical_entry_date ?? this.medical_entry_date,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        bmi: bmi ?? this.bmi,
        pulse: pulse ?? this.pulse,
        bp: bp ?? this.bp,
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
        dlc_b: dlc_b ?? this.dlc_b);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'patient_name': patient_name,
      'emp_code': emp_code,
      'ticket_no': ticket_no,
      'appointment_date': appointment_date,
      'ailment_systems_new': ailment_systems_new,
      'ailments_new': ailments_new,
      'complaints': complaints,
      'examination_remarks': examination_remarks,
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
      'medical_entry_date': medical_entry_date,
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'pulse': pulse,
      'bp': bp,
      's1': s1,
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
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Patient(
        id: map['id'],
        patient_name: map['patient_name'],
        emp_code: map['emp_code'],
        ticket_no: map['ticket_no'],
        appointment_date: map['appointment_date'],
        ailment_systems_new: map['ailment_systems_new'],
        ailments_new: map['ailments_new'],
        complaints: map['complaints'],
        examination_remarks: map['examination_remarks'],
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
        medical_entry_date: map['medical_entry_date'],
        height: map['height'],
        weight: map['weight'],
        bmi: map['bmi'],
        pulse: map['pulse'],
        bp: map['bp'],
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
        dlc_b: map['dlc_b']);
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) =>
      Patient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Patient(id: $id, name: $patient_name, emp_code: $emp_code,ticket_no: $ticket_no,appointment_date: $appointment_date,ailment_systems_new: $ailment_systems_new,ailments_new: $ailments_new,complaints: $complaints,examination_remarks: $examination_remarks,incident_location: $incident_location,injury_procedure: $injury_procedure,injury_parts_new: $injury_parts_new,injury_classes_new: $injury_classes_new, injury_types_new: $injury_types_new, sickness_name: $sickness_name, des: $des, sickness_date: $sickness_date, approval_date: $approval_date, date_absent: $date_absent, date_absent_to: $date_absent_to, date_return: $date_return, fitness_status: $fitness_status, ailment_system: $ailment_system, ailment_name: $ailment_name,medical_entry_date :$medical_entry_date,height :$height,weight :$weight,bmi :$bmi,pulse :$pulse,bp :$bp,s1 :$s1,any_other_sound :$any_other_sound,ecg_findings :$ecg_findings,father_name :$father_name,designation_name :$designation_name,primary_phone :$primary_phone,email_id :$email_id,identi_mark :$identi_mark,village :$village,post :$post,tehsil :$tehsil,district :$district,state :$state,pin_code :$pin_code,chest :$chest,chest_in :$chest_in,chest_exp :$chest_exp,skin :$skin,musculo_skeletal :$musculo_skeletal,hb :$hb,tlc :$tlc,dlc_n :$dlc_n,dlc_l :$dlc_l,dlc_m :$dlc_m,dlc_e :$dlc_e,esr :$esr,blood_sugar_fbs :$blood_sugar_fbs,blood_sugar_rbs :$blood_sugar_rbs,uric_acid :$uric_acid,s_urea :$s_urea,s_creatinine :$s_creatinine,total_bilirubin :$total_bilirubin,sgop :$sgop,sgpt :$sgpt,total_cholestrol :$total_cholestrol,ldl :$ldl,triglycerides :$triglycerides,urine_re_me :$urine_re_me,urine_re_me_comments :$urine_re_me_comments,dis_without_right_eye :$dis_without_right_eye,dis_without_left_eye :$dis_without_left_eye,near_without_right_eye :$near_without_right_eye,near_without_left_eye :$near_without_left_eye,deformities :$deformities,cns :$cns,nose :$nose,throat :$throat,ear :$ear,audio_findings_left :$audio_findings_left,blood_sugar_ppbs :$blood_sugar_ppbs,hiv :$hiv,hcv :$hcv,hbsag :$hbsag,sodium :$sodium,potassium :$potassium,phosphate :$phosphate,hco3 :$hco3,conj :$conj,uniconj :$uniconj,alk_phosphatase :$alk_phosphatase,total_protein :$total_protein,albumin :$albumin,globulin :$globulin,vldl :$vldl,hdl :$hdl,speech :$speech,higher_function :$higher_function,motor_function :$motor_function,vertigo :$vertigo,reflexes :$reflexes,vibration_syndrome :$vibration_syndrome,conversational_hearing :$conversational_hearing,teeth_n_gum :$teeth_n_gum,spiro_remarks :$spiro_remarks,liver :$liver,speen :$speen,tenderness :$tenderness,any_other_abnormality :$any_other_abnormality,hernia_details :$hernia_details,hydrocele_details :$hydrocele_details,phimosis :$phimosis,piles :$piles,fistula :$fistula,xray_findings :$xray_findings,other_findings :$other_findings,remarks:$remarks,dlc_b:$dlc_b)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Patient &&
        o.id == id &&
        o.patient_name == patient_name &&
        o.emp_code == emp_code &&
        o.ticket_no == ticket_no &&
        o.appointment_date == appointment_date &&
        o.ailment_systems_new == ailment_systems_new &&
        o.ailments_new == ailments_new &&
        o.complaints == complaints &&
        o.examination_remarks == examination_remarks &&
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
        o.medical_entry_date == medical_entry_date &&
        o.height == height &&
        o.weight == weight &&
        o.bmi == bmi &&
        o.pulse == pulse &&
        o.bp == bp &&
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
        o.dlc_b == dlc_b;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        patient_name.hashCode ^
        emp_code.hashCode ^
        ticket_no.hashCode ^
        appointment_date.hashCode ^
        ailment_systems_new.hashCode ^
        ailments_new.hashCode ^
        complaints.hashCode ^
        examination_remarks.hashCode ^
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
        medical_entry_date.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        bmi.hashCode ^
        pulse.hashCode ^
        bp.hashCode ^
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
        dlc_b.hashCode;
  }
}

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
        ailment_name: ailment_name ?? this.ailment_name);
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
      'ailment_name': ailment_name
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
        ailment_name: map['ailment_name']);
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) =>
      Patient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Patient(id: $id, name: $patient_name, emp_code: $emp_code,ticket_no: $ticket_no,appointment_date: $appointment_date,ailment_systems_new: $ailment_systems_new,ailments_new: $ailments_new,complaints: $complaints,examination_remarks: $examination_remarks,incident_location: $incident_location,injury_procedure: $injury_procedure,injury_parts_new: $injury_parts_new,injury_classes_new: $injury_classes_new, injury_types_new: $injury_types_new, sickness_name: $sickness_name, des: $des, sickness_date: $sickness_date, approval_date: $approval_date, date_absent: $date_absent, date_absent_to: $date_absent_to, date_return: $date_return, fitness_status: $fitness_status, ailment_system: $ailment_system, ailment_name: $ailment_name)';
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
        o.ailment_name == ailment_name;
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
        ailment_name.hashCode;
  }
}

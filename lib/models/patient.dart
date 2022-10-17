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

  Patient(
      {this.id,
      this.patient_name,
      this.emp_code,
      this.ticket_no,
      this.appointment_date,
      this.ailment_systems_new,
      this.complaints,
      this.ailments_new,
      this.examination_remarks});

  Patient copyWith(
      {int id,
      String patient_name,
      String emp_code,
      String ticket_no,
      String appointment_date,
      String ailment_systems_new,
      String complaints,
      String ailments_new,
      String examination_remarks}) {
    return Patient(
        id: id ?? this.id,
        patient_name: patient_name ?? this.patient_name,
        emp_code: emp_code ?? this.emp_code,
        ticket_no: ticket_no ?? this.ticket_no,
        appointment_date: appointment_date ?? this.appointment_date,
        ailment_systems_new: ailment_systems_new ?? this.ailment_systems_new,
        complaints: complaints ?? this.complaints,
        ailments_new: ailments_new ?? this.ailments_new,
        examination_remarks: examination_remarks ?? this.examination_remarks);
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
      'examination_remarks': examination_remarks
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
        examination_remarks: map['examination_remarks']);
  }

  String toJson() => json.encode(toMap());

  factory Patient.fromJson(String source) =>
      Patient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Patient(id: $id, name: $patient_name, emp_code: $emp_code,ticket_no: $ticket_no,appointment_date: $appointment_date,ailment_systems_new: $ailment_systems_new,ailments_new: $ailments_new,complaints: $complaints,examination_remarks: $examination_remarks)';
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
        o.examination_remarks == examination_remarks;
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
        examination_remarks.hashCode;
  }
}

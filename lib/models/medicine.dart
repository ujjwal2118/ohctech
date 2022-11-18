import 'package:flutter/src/widgets/framework.dart';

class MedicineModel {
  // final int id;
  // final String name;
  final List<Medicine> medicines;

  MedicineModel({this.medicines});

  factory MedicineModel.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['medicines'] as List;
    print(list.runtimeType);
    List<Medicine> medicineList =
        list.map((i) => Medicine.fromJson(i)).toList();

    return MedicineModel(
        // id: parsedJson['id'],
        // name: parsedJson['name'],
        medicines: medicineList);
  }
}

class Medicine {
  final int medicineId;
  final String medicineName;
  final String medicineFrequency;
  final String medicineFordays;
  final String medicineQty;
  final String medicineIssuedqty;
  final String medicineDosage;
  final String medicineAdminroute;
  final String medicineTiming;

  Medicine(
      {this.medicineId,
      this.medicineName,
      this.medicineFrequency,
      this.medicineFordays,
      this.medicineQty,
      this.medicineIssuedqty,
      this.medicineDosage,
      this.medicineAdminroute,
      this.medicineTiming});

  factory Medicine.fromJson(Map<String, dynamic> parsedJson) {
    return Medicine(
        medicineId: parsedJson['item_id'],
        medicineName: parsedJson['item_Name'],
        medicineFrequency: parsedJson['frequency_id'],
        medicineFordays: parsedJson['for_days'],
        medicineQty: parsedJson['item_qty'],
        medicineIssuedqty: parsedJson['issued_qty'],
        medicineDosage: parsedJson['dosage'],
        medicineAdminroute: parsedJson['dosage_category_id'],
        medicineTiming: parsedJson['timing_id']);
  }

  static Widget fromJSON(i) {}
}

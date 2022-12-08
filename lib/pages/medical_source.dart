import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class medecineDataGrid extends StatefulWidget {
  @override
  _medecineDataGridState createState() => _medecineDataGridState();
}

class _medecineDataGridState extends State<medecineDataGrid> {
  _medecineDataGridSource medecineDataGridSource;
  List<_MedicineDataModel> productlist = [];

  Future generateProductList() async {
    var response = await http
        .post(Uri.parse('http://dushant-mali.great-site.net/mobile/table.php'));
    var list = json.decode(response.body).cast<Map<String, dynamic>>();
    print(list);
    productlist = await list
        .map<_MedicineDataModel>((json) => _MedicineDataModel.fromJson(json))
        .toList();
    medecineDataGridSource = _medecineDataGridSource(productlist);
    return productlist;
  }

  List<GridColumn> getColumns() {
    List<GridColumn> columns;
    columns = ([
      GridColumn(
        columnName: 'id',
        width: 70,
        label: Container(
          // padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            'Sr',
            overflow: TextOverflow.clip,
            softWrap: true,
          ),
        ),
      ),
      GridColumn(
        columnName: 'medicine_name',
        width: 130,
        label: Container(
          // padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            'Medicine Name',
            overflow: TextOverflow.clip,
            softWrap: true,
          ),
        ),
      ),
      GridColumn(
        columnName: 'qty',
        width: 95,
        label: Container(
          // padding: EdgeInsets.all(8),
          alignment: Alignment.centerRight,
          child: Text(
            'QTY',
            overflow: TextOverflow.clip,
            softWrap: true,
          ),
        ),
      ),
    ]);
    return columns;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: generateProductList(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return snapshot.hasData
                ? SfDataGridTheme(
                     data: SfDataGridThemeData(headerHoverColor: Colors.yellow),
                    child: SfDataGrid(
                      source: medecineDataGridSource,
                      columns: getColumns(),
                      allowSorting: true,
                      allowEditing: true,
                      allowPullToRefresh: true,
                      selectionMode: SelectionMode.single,
                      navigationMode: GridNavigationMode.cell,
                      // allowEditing: true,
                      columnWidthMode: ColumnWidthMode.fill,
                      // controller: ,
                    ))
                : Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  );
          }),
    );
  }
}

class _MedicineDataModel {
  factory _MedicineDataModel.fromJson(Map<String, dynamic> json) {
    return _MedicineDataModel(
      id: json['id'],
      qty: json['qty'],
      medicine_name: json['medicine_name'],
    );
  }

  _MedicineDataModel({
    this.id,
    this.qty,
    this.medicine_name,
  });
  int id;
  String qty;
  String medicine_name;
}

class _medecineDataGridSource extends DataGridSource {
  _medecineDataGridSource(this.productlist) {
    buildDataGridRow();
  }

  List<DataGridRow> dataGridRows = [];
  List<_MedicineDataModel> productlist = [];

  void buildDataGridRow() {
    dataGridRows = productlist.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell<int>(columnName: 'id', value: dataGridRow.id),
        DataGridCell<String>(columnName: 'qty', value: dataGridRow.qty),
        DataGridCell<String>(
            columnName: 'medicine_name', value: dataGridRow.medicine_name),
      ]);
    }).toList(growable: false);
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(cells: [
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(
          row.getCells()[0].value.toString(),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(
          row.getCells()[2].value,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(
          row.getCells()[1].value,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ]);
  }
}

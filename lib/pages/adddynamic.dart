import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _View4 extends StatefulWidget {
  @override
  _View4State createState() => _View4State();
}

class _GroupControllers {
  TextEditingController name = TextEditingController();
  TextEditingController tel = TextEditingController();
  TextEditingController address = TextEditingController();
  void dispose() {
    name.dispose();
    tel.dispose();
    address.dispose();
  }
}

class _View4State extends State<_View4> {
  List<_GroupControllers> _groupControllers = [];
  List<TextField> _nameFields = [];
  List<TextField> _telFields = [];
  List<TextField> _addressFields = [];

  @override
  void dispose() {
    for (final controller in _groupControllers) {
      controller.dispose();
    }
    _okController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
          appBar: AppBar(
            title: Text("Dynamic Group Text Field2"),
          ),
          body: Column(
            children: [
              _addTile(),
              Expanded(child: _listView()),
              _okButton(context),
            ],
          )),
    );
  }

  Widget _addTile() {
    return ListTile(
      title: Icon(Icons.add),
      onTap: () {
        final group = _GroupControllers();

        final nameField = _generateTextField(group.name, "name");
        final telField = _generateTextField(group.tel, "mobile");
        final addressField = _generateTextField(group.address, "address");

        setState(() {
          _groupControllers.add(group);
          _nameFields.add(nameField);
          _telFields.add(telField);
          _addressFields.add(addressField);
        });
      },
    );
  }

  TextField _generateTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hint,
      ),
    );
  }

  Widget _listView() {
    final children = [
      for (var i = 0; i < _groupControllers.length; i++)
        Container(
          margin: EdgeInsets.all(5),
          child: InputDecorator(
            child: Column(
              children: [
                _nameFields[i],
                _telFields[i],
                _addressFields[i],
              ],
            ),
            decoration: InputDecoration(
              labelText: i.toString(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        )
    ];
    return SingleChildScrollView(
      child: Column(
        children: children,
      ),
    );
  }

  final _okController = TextEditingController();
  Widget _okButton(BuildContext context) {
    final textField = TextField(
      controller: _okController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );

    final button = ElevatedButton(
      onPressed: () async {
        final index = int.parse(_okController.text);
        String text = "name: ${_groupControllers[index].name.text}\n" +
            "tel: ${_groupControllers[index].tel.text}\n" +
            "address: ${_groupControllers[index].address.text}\n";
        await print("DM DONE");
      },
      child: Text("OK"),
    );

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: textField,
          width: 100,
          height: 50,
        ),
        button,
      ],
    );
  }
}

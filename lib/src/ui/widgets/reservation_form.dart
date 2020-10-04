import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class ReservationForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESERVAR'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _fbKey,
          child: Column(
            children: [
              FormBuilderChoiceChip(
                attribute: "court",
                initialValue: 'A',
                labelStyle: TextStyle(fontSize: 28),
                spacing: 32.0,
                selectedColor: Colors.blue,
                decoration: InputDecoration(
                  labelText: 'Cancha',
                  labelStyle: TextStyle(fontSize: 28),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                ),
                options: [
                  FormBuilderFieldOption(child: Text('A'), value: 'A'),
                  FormBuilderFieldOption(child: Text('B'), value: 'B'),
                  FormBuilderFieldOption(child: Text('C'), value: 'C'),
                ],
              ),
              FormBuilderTextField(
                attribute: 'name',
                decoration: InputDecoration(labelText: "Reserva con tu nombre"),
                validators: [
                  FormBuilderValidators.required(),
                ],
              ),
              FormBuilderDateTimePicker(
                attribute: 'from',
                inputType: InputType.both,
                initialValue: DateTime.now(),
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                format: DateFormat('dd/MM/yyyy hh:mm'),
                decoration: InputDecoration(labelText: 'Desde'),
                validators: [
                  FormBuilderValidators.required(),
                ],
              ),
              FormBuilderDateTimePicker(
                attribute: 'to',
                inputType: InputType.both,
                initialValue: DateTime.now(),
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                format: DateFormat('dd/MM/yyyy hh:mm'),
                decoration: InputDecoration(labelText: 'Hasta'),
                validators: [
                  FormBuilderValidators.required(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

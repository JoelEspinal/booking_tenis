import 'package:booking_tenis/src/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/daos/reservation_dao.dart';

class ReservationForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final dao = Provider.of<ReservationDao>(context);
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
            onPressed: () async {
              var _result = await _addReservation(dao);
              if (_result != 0) {
                Fluttertoast.showToast(
                    msg: (_result > -1)
                        ? 'Reservada agregada'
                        : 'Conflicto al reservar',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor:
                        (_result > -1) ? Colors.blue : Colors.red[600],
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
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
                format: DateFormat(Constants.DATE_TIME_FORMAT),
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
                format: DateFormat(Constants.DATE_TIME_FORMAT),
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

  Future<int> _addReservation(dao) async {
    if (_fbKey.currentState.validate()) {
      String _owner = _fbKey.currentState.fields['name'].currentState.value;
      String _court = _fbKey.currentState.fields['court'].currentState.value;
      DateTime _from = _fbKey.currentState.fields['from'].currentState.value;
      DateTime _to = _fbKey.currentState.fields['to'].currentState.value;

      var message = '';
      if (_from.isAfter(_to)) {
        message = 'Selecciones fechas validas';
      } else if (_from.isAtSameMomentAs(_to)) {
        message = 'Fechas identicas';
      } else if (_from.isBefore(DateTime.now())) {
        message = 'Seleccione fechas futuras';
      }

      if (message.isNotEmpty) {
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red[300],
            textColor: Colors.white,
            fontSize: 16.0);
        return Future.value(0);
      }

      return await dao.addReservation(
          court: _court, reservationOwner: _owner, form: _from, to: _to);
    }

    return 0;
  }
}

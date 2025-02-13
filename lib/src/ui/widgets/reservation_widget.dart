import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/constants.dart';
import '../../data/daos/reservation_dao.dart';
import '../../data/moor_database.dart';

class ReservationWidget extends StatelessWidget {
  final ReservationData reservation;
  final ReservationDao dao;

  ReservationWidget(this.reservation, this.dao);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(
          reservation.reservationOwner,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                DateFormat(Constants.DATE_TIME_FORMAT).format(reservation.form),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                DateFormat(Constants.DATE_TIME_FORMAT).format(reservation.to),
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: () {
            _showAlertDialog(context);
          },
        ),
        leading: CircleAvatar(
          child: Text(
            reservation.court,
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eliminar reserva'),
          content: Text('¿Desea eliminar la reserva?'),
          actions: [
            FlatButton(
              child: Text("No"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("Eliminar"),
              onPressed: () async {
                await dao.deleteById(reservation.id);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

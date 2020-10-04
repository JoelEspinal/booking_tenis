import 'package:flutter/material.dart';

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
        title: Text('Manuel Santana'),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('9:00 PM'),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('10/09/2020'),
            )
          ],
        ),
        trailing: CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Text(
            '73 %',
            style: TextStyle(fontSize: 18),
          ),
        ),
        leading: CircleAvatar(
          child: Text(
            'A',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

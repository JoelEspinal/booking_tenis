import 'package:booking_tenis/src/ui/widgets/reservation_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/daos/reservation_dao.dart';
import '../data/moor_database.dart';
import 'widgets/reservation_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dao = Provider.of<ReservationDao>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('RESERVAS'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await dao.addReservation(
            ReservationData(
              court: 'A',
              form: DateTime(1, 2020, 1),
              to: DateTime(1, 2020, 2),
              reservationOwner: 'Manuel Peres',
            ),
          );
          showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel:
                  MaterialLocalizations.of(context).modalBarrierDismissLabel,
              barrierColor: Colors.black45,
              transitionDuration: const Duration(milliseconds: 250),
              pageBuilder: (BuildContext buildContext, Animation animation,
                  Animation secondaryAnimation) {
                return ReservationForm();
              });
        },
        label: Text('Reservar'),
        icon: Icon(Icons.add),
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: dao.watchAllReservations(),
          builder: (context, AsyncSnapshot<List<ReservationData>> snapshot) {
            final reservations = snapshot.data ?? List();

            return ListView.builder(
              itemCount: reservations.length,
              itemBuilder: (_, index) {
                final reservation = reservations[index];
                return ReservationWidget(reservation, dao);
              },
            );
          },
        ),
      ),
    );
  }
}

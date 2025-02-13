import 'package:booking_tenis/src/remote/rain_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
import 'src/data/daos/reservation_dao.dart';
import 'src/data/moor_database.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) => AppDatabase(),
        ),
        Provider(
          create: (context) => ReservationDao(AppDatabase()),
        ),
        ChangeNotifierProvider(create: (ctx) => RainService()),
      ],
      child: App(),
    ),
  );
}

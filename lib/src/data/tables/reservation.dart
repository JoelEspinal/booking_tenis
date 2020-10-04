import 'package:moor/moor.dart';

class Reservation extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get court => text()();
  TextColumn get reservationOwner => text()();
  DateTimeColumn get form => dateTime()();
  DateTimeColumn get to => dateTime()();
}

import 'package:moor/moor.dart';

import '../moor_database.dart';
import '../tables/reservation.dart';

part 'reservation_dao.g.dart';

@UseDao(tables: [Reservation])
class ReservationDao extends DatabaseAccessor<AppDatabase>
    with _$ReservationDaoMixin {
  final AppDatabase db;
  ReservationDao(this.db) : super(db);

  Future<int> addReservation(ReservationData reservation) {
    final _entry = ReservationCompanion(
        court: Value(reservation.court),
        form: Value(reservation.form),
        to: Value(reservation.to));

    return into($ReservationTable(db)).insert(_entry);
  }

  Stream<List<ReservationData>> watchAllReservations() {
    return (select(reservation)
          ..orderBy([
            (r) => OrderingTerm(expression: r.form, mode: OrderingMode.desc),
          ]))
        .watch();
  }
}

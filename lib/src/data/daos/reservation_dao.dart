import 'package:moor/moor.dart';

import '../moor_database.dart';
import '../tables/reservation.dart';

part 'reservation_dao.g.dart';

@UseDao(tables: [Reservation])
class ReservationDao extends DatabaseAccessor<AppDatabase>
    with _$ReservationDaoMixin {
  final AppDatabase db;
  ReservationDao(this.db) : super(db);

  Future<int> addReservation(ReservationData reservation) async {
    final validInsert = await isValidInsertion(reservation);
    if (validInsert) {
      final _entry = ReservationCompanion(
          court: Value(reservation.court),
          form: Value(reservation.form),
          to: Value(reservation.to));

      return into($ReservationTable(db)).insert(_entry);
    } else {
      return Future.value(-1);
    }
  }

  Future<bool> isValidInsertion(ReservationData reservation) async {
    final reservations = await getAllRservations();
    var invalidReservation = reservations
        .where((r) =>
            r.court == reservation.court &&
            (r.form.isBefore(reservation.form) ||
                r.form.isAtSameMomentAs(reservation.form)) &&
            (r.to.isAfter(reservation.to) ||
                r.to.isAtSameMomentAs(reservation.to)))
        .toList();

    return Future.value(invalidReservation.length <= 0);
  }

  Future<List<ReservationData>> getAllRservations() =>
      select(reservation).get();

  Stream<List<ReservationData>> watchAllReservations() {
    return (select(reservation)
          ..orderBy([
            (r) => OrderingTerm(expression: r.form, mode: OrderingMode.desc),
          ]))
        .watch();
  }
}

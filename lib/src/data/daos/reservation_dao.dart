import 'package:moor/moor.dart';

import '../moor_database.dart';
import '../tables/reservation.dart';

part 'reservation_dao.g.dart';

@UseDao(tables: [Reservation])
class ReservationDao extends DatabaseAccessor<AppDatabase>
    with _$ReservationDaoMixin {
  final AppDatabase db;
  ReservationDao(this.db) : super(db);

  Future<int> addReservation({
    @required String court,
    @required String reservationOwner,
    @required DateTime form,
    @required DateTime to,
  }) async {
    final _reservation = ReservationData(
      court: court,
      reservationOwner: reservationOwner,
      form: form,
      to: to,
    );

    final validInsert = await isValidInsertion(_reservation);
    if (validInsert) {
      final _entry = ReservationCompanion(
          court: Value(court),
          form: Value(form),
          to: Value(to),
          reservationOwner: Value(reservationOwner));

      return into($ReservationTable(db)).insert(_entry);
    } else {
      return Future.value(-1);
    }
  }

  Future<List<ReservationData>> getAllRservations() =>
      select(reservation).get();

  Future<bool> isValidInsertion(ReservationData reservation) async {
    final reservations = await getAllRservations();

    int reservationCounter = 1;

    reservations.forEach((r) {
      if (r.court == reservation.court &&
          r.form.year == reservation.form.year &&
          r.form.month == reservation.form.month &&
          r.form.day == reservation.form.day) {
        reservationCounter++;
      }
    });

    if (reservationCounter > 3) {
      return Future.value(false);
    }

    var invalidReservation = reservations
        .where((r) =>
            r.court == reservation.court &&
                (r.form.isBefore(reservation.form) ||
                    r.form.isAtSameMomentAs(reservation.form)) &&
                (r.to.isAfter(reservation.to) ||
                    r.to.isAtSameMomentAs(reservation.to)) ||
            (r.form.isAfter(reservation.form) && r.to.isBefore(reservation.to)))
        .toList();

    return Future.value(invalidReservation.length <= 0);
  }

  Stream<List<ReservationData>> watchAllReservations() {
    return (select(reservation)
          ..orderBy([
            (r) => OrderingTerm(expression: r.form, mode: OrderingMode.asc),
          ]))
        .watch();
  }
}

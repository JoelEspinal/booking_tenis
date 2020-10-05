// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ReservationData extends DataClass implements Insertable<ReservationData> {
  final int id;
  final String court;
  final String reservationOwner;
  final DateTime form;
  final DateTime to;
  ReservationData(
      {this.id,
      @required this.court,
      @required this.reservationOwner,
      @required this.form,
      @required this.to});
  factory ReservationData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ReservationData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      court:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}court']),
      reservationOwner: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reservation_owner']),
      form:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}form']),
      to: dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}to']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || court != null) {
      map['court'] = Variable<String>(court);
    }
    if (!nullToAbsent || reservationOwner != null) {
      map['reservation_owner'] = Variable<String>(reservationOwner);
    }
    if (!nullToAbsent || form != null) {
      map['form'] = Variable<DateTime>(form);
    }
    if (!nullToAbsent || to != null) {
      map['to'] = Variable<DateTime>(to);
    }
    return map;
  }

  ReservationCompanion toCompanion(bool nullToAbsent) {
    return ReservationCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      court:
          court == null && nullToAbsent ? const Value.absent() : Value(court),
      reservationOwner: reservationOwner == null && nullToAbsent
          ? const Value.absent()
          : Value(reservationOwner),
      form: form == null && nullToAbsent ? const Value.absent() : Value(form),
      to: to == null && nullToAbsent ? const Value.absent() : Value(to),
    );
  }

  factory ReservationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ReservationData(
      id: serializer.fromJson<int>(json['id']),
      court: serializer.fromJson<String>(json['court']),
      reservationOwner: serializer.fromJson<String>(json['reservationOwner']),
      form: serializer.fromJson<DateTime>(json['form']),
      to: serializer.fromJson<DateTime>(json['to']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'court': serializer.toJson<String>(court),
      'reservationOwner': serializer.toJson<String>(reservationOwner),
      'form': serializer.toJson<DateTime>(form),
      'to': serializer.toJson<DateTime>(to),
    };
  }

  ReservationData copyWith(
          {int id,
          String court,
          String reservationOwner,
          DateTime form,
          DateTime to}) =>
      ReservationData(
        id: id ?? this.id,
        court: court ?? this.court,
        reservationOwner: reservationOwner ?? this.reservationOwner,
        form: form ?? this.form,
        to: to ?? this.to,
      );
  @override
  String toString() {
    return (StringBuffer('ReservationData(')
          ..write('id: $id, ')
          ..write('court: $court, ')
          ..write('reservationOwner: $reservationOwner, ')
          ..write('form: $form, ')
          ..write('to: $to')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          court.hashCode,
          $mrjc(
              reservationOwner.hashCode, $mrjc(form.hashCode, to.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ReservationData &&
          other.id == this.id &&
          other.court == this.court &&
          other.reservationOwner == this.reservationOwner &&
          other.form == this.form &&
          other.to == this.to);
}

class ReservationCompanion extends UpdateCompanion<ReservationData> {
  final Value<int> id;
  final Value<String> court;
  final Value<String> reservationOwner;
  final Value<DateTime> form;
  final Value<DateTime> to;
  const ReservationCompanion({
    this.id = const Value.absent(),
    this.court = const Value.absent(),
    this.reservationOwner = const Value.absent(),
    this.form = const Value.absent(),
    this.to = const Value.absent(),
  });
  ReservationCompanion.insert({
    this.id = const Value.absent(),
    @required String court,
    @required String reservationOwner,
    @required DateTime form,
    @required DateTime to,
  })  : court = Value(court),
        reservationOwner = Value(reservationOwner),
        form = Value(form),
        to = Value(to);
  static Insertable<ReservationData> custom({
    Expression<int> id,
    Expression<String> court,
    Expression<String> reservationOwner,
    Expression<DateTime> form,
    Expression<DateTime> to,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (court != null) 'court': court,
      if (reservationOwner != null) 'reservation_owner': reservationOwner,
      if (form != null) 'form': form,
      if (to != null) 'to': to,
    });
  }

  ReservationCompanion copyWith(
      {Value<int> id,
      Value<String> court,
      Value<String> reservationOwner,
      Value<DateTime> form,
      Value<DateTime> to}) {
    return ReservationCompanion(
      id: id ?? this.id,
      court: court ?? this.court,
      reservationOwner: reservationOwner ?? this.reservationOwner,
      form: form ?? this.form,
      to: to ?? this.to,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (court.present) {
      map['court'] = Variable<String>(court.value);
    }
    if (reservationOwner.present) {
      map['reservation_owner'] = Variable<String>(reservationOwner.value);
    }
    if (form.present) {
      map['form'] = Variable<DateTime>(form.value);
    }
    if (to.present) {
      map['to'] = Variable<DateTime>(to.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReservationCompanion(')
          ..write('id: $id, ')
          ..write('court: $court, ')
          ..write('reservationOwner: $reservationOwner, ')
          ..write('form: $form, ')
          ..write('to: $to')
          ..write(')'))
        .toString();
  }
}

class $ReservationTable extends Reservation
    with TableInfo<$ReservationTable, ReservationData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ReservationTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _courtMeta = const VerificationMeta('court');
  GeneratedTextColumn _court;
  @override
  GeneratedTextColumn get court => _court ??= _constructCourt();
  GeneratedTextColumn _constructCourt() {
    return GeneratedTextColumn(
      'court',
      $tableName,
      false,
    );
  }

  final VerificationMeta _reservationOwnerMeta =
      const VerificationMeta('reservationOwner');
  GeneratedTextColumn _reservationOwner;
  @override
  GeneratedTextColumn get reservationOwner =>
      _reservationOwner ??= _constructReservationOwner();
  GeneratedTextColumn _constructReservationOwner() {
    return GeneratedTextColumn(
      'reservation_owner',
      $tableName,
      false,
    );
  }

  final VerificationMeta _formMeta = const VerificationMeta('form');
  GeneratedDateTimeColumn _form;
  @override
  GeneratedDateTimeColumn get form => _form ??= _constructForm();
  GeneratedDateTimeColumn _constructForm() {
    return GeneratedDateTimeColumn(
      'form',
      $tableName,
      false,
    );
  }

  final VerificationMeta _toMeta = const VerificationMeta('to');
  GeneratedDateTimeColumn _to;
  @override
  GeneratedDateTimeColumn get to => _to ??= _constructTo();
  GeneratedDateTimeColumn _constructTo() {
    return GeneratedDateTimeColumn(
      'to',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, court, reservationOwner, form, to];
  @override
  $ReservationTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'reservation';
  @override
  final String actualTableName = 'reservation';
  @override
  VerificationContext validateIntegrity(Insertable<ReservationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('court')) {
      context.handle(
          _courtMeta, court.isAcceptableOrUnknown(data['court'], _courtMeta));
    } else if (isInserting) {
      context.missing(_courtMeta);
    }
    if (data.containsKey('reservation_owner')) {
      context.handle(
          _reservationOwnerMeta,
          reservationOwner.isAcceptableOrUnknown(
              data['reservation_owner'], _reservationOwnerMeta));
    } else if (isInserting) {
      context.missing(_reservationOwnerMeta);
    }
    if (data.containsKey('form')) {
      context.handle(
          _formMeta, form.isAcceptableOrUnknown(data['form'], _formMeta));
    } else if (isInserting) {
      context.missing(_formMeta);
    }
    if (data.containsKey('to')) {
      context.handle(_toMeta, to.isAcceptableOrUnknown(data['to'], _toMeta));
    } else if (isInserting) {
      context.missing(_toMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReservationData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ReservationData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ReservationTable createAlias(String alias) {
    return $ReservationTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ReservationTable _reservation;
  $ReservationTable get reservation => _reservation ??= $ReservationTable(this);
  ReservationDao _reservationDao;
  ReservationDao get reservationDao =>
      _reservationDao ??= ReservationDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [reservation];
}

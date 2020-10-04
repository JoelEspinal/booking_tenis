// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ReservationData extends DataClass implements Insertable<ReservationData> {
  final int id;
  final String court;
  final DateTime form;
  final DateTime to;
  ReservationData(
      {this.id, @required this.court, @required this.form, @required this.to});
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
      'form': serializer.toJson<DateTime>(form),
      'to': serializer.toJson<DateTime>(to),
    };
  }

  ReservationData copyWith(
          {int id, String court, DateTime form, DateTime to}) =>
      ReservationData(
        id: id ?? this.id,
        court: court ?? this.court,
        form: form ?? this.form,
        to: to ?? this.to,
      );
  @override
  String toString() {
    return (StringBuffer('ReservationData(')
          ..write('id: $id, ')
          ..write('court: $court, ')
          ..write('form: $form, ')
          ..write('to: $to')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode, $mrjc(court.hashCode, $mrjc(form.hashCode, to.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ReservationData &&
          other.id == this.id &&
          other.court == this.court &&
          other.form == this.form &&
          other.to == this.to);
}

class ReservationCompanion extends UpdateCompanion<ReservationData> {
  final Value<int> id;
  final Value<String> court;
  final Value<DateTime> form;
  final Value<DateTime> to;
  const ReservationCompanion({
    this.id = const Value.absent(),
    this.court = const Value.absent(),
    this.form = const Value.absent(),
    this.to = const Value.absent(),
  });
  ReservationCompanion.insert({
    this.id = const Value.absent(),
    @required String court,
    @required DateTime form,
    @required DateTime to,
  })  : court = Value(court),
        form = Value(form),
        to = Value(to);
  static Insertable<ReservationData> custom({
    Expression<int> id,
    Expression<String> court,
    Expression<DateTime> form,
    Expression<DateTime> to,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (court != null) 'court': court,
      if (form != null) 'form': form,
      if (to != null) 'to': to,
    });
  }

  ReservationCompanion copyWith(
      {Value<int> id,
      Value<String> court,
      Value<DateTime> form,
      Value<DateTime> to}) {
    return ReservationCompanion(
      id: id ?? this.id,
      court: court ?? this.court,
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
  List<GeneratedColumn> get $columns => [id, court, form, to];
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

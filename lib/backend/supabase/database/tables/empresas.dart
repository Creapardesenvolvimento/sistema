import '../database.dart';

class EmpresasTable extends SupabaseTable<EmpresasRow> {
  @override
  String get tableName => 'empresas';

  @override
  EmpresasRow createRow(Map<String, dynamic> data) => EmpresasRow(data);
}

class EmpresasRow extends SupabaseDataRow {
  EmpresasRow(super.data);

  @override
  SupabaseTable get table => EmpresasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);
}

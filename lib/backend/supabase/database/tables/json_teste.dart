import '../database.dart';

class JsonTesteTable extends SupabaseTable<JsonTesteRow> {
  @override
  String get tableName => 'json_teste';

  @override
  JsonTesteRow createRow(Map<String, dynamic> data) => JsonTesteRow(data);
}

class JsonTesteRow extends SupabaseDataRow {
  JsonTesteRow(super.data);

  @override
  SupabaseTable get table => JsonTesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  dynamic get json => getField<dynamic>('json')!;
  set json(dynamic value) => setField<dynamic>('json', value);
}

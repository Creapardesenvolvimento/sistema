import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://oppefunviobbiqcuedyj.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9wcGVmdW52aW9iYmlxY3VlZHlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc3MjUzNjcsImV4cCI6MjA0MzMwMTM2N30.YdImoPlM6XdL9dh6UrHDoUwYuXmOMJ-Nz-bj6LcXLf4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}

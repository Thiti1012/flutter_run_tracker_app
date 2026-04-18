import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  //สร้าง Object/Instance/ตัวแทน ที่จะใช้ทำงานต่างๆ กับ Supabase
  final supabase = Supabase.instance.client;
}

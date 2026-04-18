import 'package:flutter/material.dart';
import 'package:flutter_run_tracker_app/views/add_run_ui.dart';
import 'package:flutter_run_tracker_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  //---------------ตั้งค่า การเชื่อมต่อกับ Supabase---------------
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://zvdkeypaxvfucuymopnr.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp2ZGtleXBheHZmdWN1eW1vcG5yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODcyMTMsImV4cCI6MjA4OTM2MzIxM30.KPy8DzXBbKezLfwf3drC_q6M55ET5T7ge_uVeFMWxaU',
  );
  //------------------------------------------------------------
  runApp(FlutterRunTrackerApp());
}

class FlutterRunTrackerApp extends StatefulWidget {
  const FlutterRunTrackerApp({super.key});

  @override
  State<FlutterRunTrackerApp> createState() => _FlutterRunTrackerAppState();
}

class _FlutterRunTrackerAppState extends State<FlutterRunTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Run Tracker',
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}

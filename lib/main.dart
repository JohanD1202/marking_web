import 'package:marking_web/config/theme/app_theme.dart';
import 'package:marking_web/presentation/screens/home_screen.dart';
import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/section_hombre_mobile.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartModel(),
        ),
      ],
    child: const MyApp(),
  ),
 );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(), 
      title: 'Aromas Selectos',
      home: const HomeScreen(),
    );
  }
}

 
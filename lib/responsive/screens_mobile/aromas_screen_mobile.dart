/*import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/widgets/style_button.dart';


class AromasScreenMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const AromasScreenMobile({Key? key}) : super(key: key);

  @override
  _AromasScreenMobileState createState() => _AromasScreenMobileState();
}

class _AromasScreenMobileState extends State<AromasScreenMobile> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  
  // ignore: unused_field
  double? _containerHeight;


  final List<String> _imagePaths = [
    'assets/images/locion_1.jpg',
    'assets/images/locion_2.jpg',
    'assets/images/locion_3.jpg',
    'assets/images/locion_4.jpg',
    'assets/images/locion_5.jpg',
    'assets/images/locion_6.jpg',
    'assets/images/locion_7.jpg',
    'assets/images/locion_11.jpg',
    'assets/images/locion_12.jpg',
    'assets/images/aroma_1.jpg',
    'assets/images/aroma_2.jpg',
    'assets/images/aroma_3.jpg',
    'assets/images/aroma_4.jpg',
    'assets/images/aroma_5.jpg',
    'assets/images/aroma_6.jpg',
    'assets/images/aroma_7.jpg',
    'assets/images/aroma_8.jpg',
    'assets/images/aroma_9.jpg',
    'assets/images/locion_1_2onzas.jpg',
    'assets/images/locion_2_2onzas.jpg',
    'assets/images/locion_3_3onzas.jpg',
    'assets/images/aroma_10.jpg',
    'assets/images/aroma_11.jpg',
    'assets/images/aroma_12.jpg',
  ];

  void _nextImages() {
    setState(() {
      _currentIndex = (_currentIndex + 3) % _imagePaths.length;
    });
  }

  void _previousImages() {
    setState(() {
      _currentIndex = (_currentIndex - 3).clamp(0, _imagePaths.length -1);
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.25,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Descubre Aromas Selectos:', style: styleText3Mobile),
                        const SizedBox(height: 10),
                        Text('''
Eleva tus sentidos con Elegancia y Estilo
¿Buscas una experiencia única que despierte 
Tus sentidos y eleve tu día a día?
¡Entonces has llegado al lugar indicado! 
En Aromas Selectos, nos enorgullece ofrecerte 
Una exquisita selección de fragancias
Que te transportarán a un mundo de lujo.
                        ''', style: texto)
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = _currentIndex; i < _currentIndex + 3; i++)
                  if (i < _imagePaths.length)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(_imagePaths[i], width: 150, height: 225, fit: BoxFit.cover),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: _previousImages,
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: _nextImages,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Text('''
Sumérgete en nuestro exclusivo catálogo 
De aromas meticulosamente elaborados, 
donde cada fragancia cuenta una historia 
Diferente. Desde notas frescas y florales 
Hasta profundas y envolventes, nuestras 
Creaciones están diseñadas para acompañarte
En cada momento especial de tu vida.
       ''', style: texto
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}*/
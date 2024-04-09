import 'package:marking_web/exports.dart';


class AromasScreen extends StatefulWidget {

  // ignore: use_super_parameters
  const AromasScreen({Key? key}) : super(key: key);

  @override
  _AromasScreenState createState() => _AromasScreenState();
}

class _AromasScreenState extends State<AromasScreen> with SingleTickerProviderStateMixin{
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
      height: size.height * 1.198,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Descubre Aromas Selectos:', style: styleText3),
                        const SizedBox(height: 10),
                        const Text('''
Eleva tus sentidos con Elegancia y Estilo
¿Buscas una experiencia única que despierte tus sentidos y eleve tu día a día?
¡Entonces has llegado al lugar indicado! En Aromas Selectos,
Nos enorgullece ofrecerte una exquisita selección de fragancias
Que te transportarán a un mundo de lujo y sofisticación.
                        ''', style: TextStyle(fontSize: 18))
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
                    child: Image.asset(_imagePaths[i], width: 300, height: 450, fit: BoxFit.cover), //TODO:
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
                margin: const EdgeInsets.only(top: 10, left: 50),
                alignment: Alignment.centerLeft,
                child: const Text('''
Sumérgete en nuestro exclusivo catálogo de aromas meticulosamente elaborados, 
donde cada fragancia cuenta una historia diferente. 
Desde notas frescas y florales hasta profundas y envolventes, 
nuestras creaciones están diseñadas para acompañarte en cada momento especial de tu vida.
       ''', style: TextStyle(fontSize: 18),
                 textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
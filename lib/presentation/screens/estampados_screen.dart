import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/camisetas_screen.dart';

class EstampadosScreen extends StatelessWidget {


  const EstampadosScreen({super.key});

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
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 35),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenido a la Sección de Estampados', style: styleText3),
                          const SizedBox(height: 25),
                          const Text('''
Explora nuestra colección exclusiva de camisetas estampadas en Marking. 
Desde diseños creativos hasta estilos elegantes, 
Nuestras camisetas te ofrecen la combinación perfecta de moda y comodidad. 

Cada estampado cuenta una historia única y refleja tu estilo personal. 
Descubre la calidad y la originalidad en cada detalle. 
¡Marca la diferencia con nuestras camisetas estampadas en Marking! ''', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //const CamisetasScreen(),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
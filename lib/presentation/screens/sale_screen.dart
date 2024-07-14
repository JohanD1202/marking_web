import 'package:aromas_selectos/exports.dart';
import 'package:aromas_selectos/presentation/screens/section_sale.dart';


class SaleScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const SaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
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
                          Text('Bienvenidos a la sección de Sale', style: styleText3),
                          const SizedBox(height: 20),
                          Text('''
Aquí encontrarás las mejores promociones en una amplia variedad de
productos que tenemos para ti.
Aprovecha estas ofertas especiales y añade estilo a tu vida
Con nuestros productos de alta calidad a precios irresistibles.

¡Tenemos las mejores promociones que incluyen bolsos, carteras
y demás accesorios sumado a tus Aromas favoritos!

Recuerda que todas las lociones incluídas en nuestras promociones
son de 1 fl oz!

No te pierdas esta oportunidad de renovar tu estilo y disfrutar 
de grandes ahorros y nuestras increíbles rebajas.
''', style: texto),
                        //Text('Aromas de Hombre', style: styleText3)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/aromas_selectos_2.jpg', width: 334, height: 283, fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
              const SectionSale(),
            ],
          ),
        ),
      ),
    );
  }
}
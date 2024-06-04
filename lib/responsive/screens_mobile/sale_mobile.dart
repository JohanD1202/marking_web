import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/section_sale.dart';
import 'package:marking_web/responsive/screens_mobile/section_sale_mobile.dart';


class SaleScreenMobile extends StatelessWidget {
  // ignore: use_super_parameters
  const SaleScreenMobile({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Sale', style: styleText3),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            child: Text('''
Aquí encontrarás las mejores promociones 
en una amplia variedad de productos.

Aprovecha estas ofertas especiales 
y añade estilo a tu vida con nuestros productos 
de alta calidad a precios irresistibles.

¡Tenemos las mejores promociones que
incluyen bolsos, carteras y demás accesorios
sumado a tus Aromas favoritos!

¡No te pierdas esta oportunidad de renovar 
tu estilo y disfrutar de grandes ahorros
y nuestras increíbles rebajas.
''', style: TextStyle(fontSize: 18)),
                          ),
                        //Text('Aromas de Hombre', style: styleText3)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SectionSaleMobile(),
            ],
          ),
        ),
      ),
    );
  }
}
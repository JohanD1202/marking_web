import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class ArabesScreenMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const ArabesScreenMobile({Key? key}) : super(key: key);

  @override
  State<ArabesScreenMobile> createState() => _ArabesScreenMobileState();
}

class _ArabesScreenMobileState extends State<ArabesScreenMobile> {
  
  Locion? selectedProduct;

  void selectProduct(Locion product) {
    setState(() {
      selectedProduct = product;
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 1,
      height: size.height * 1.1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Aromas Árabes', style: styleText3Mobile),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('''
Bienvenidos a nuestra sección de Aromas Árabes, en
este espacio te invitamos a descubrir una amplia
gama de aromas Árabes, que capturan la esencia de
la elegancia.

Desde aromas frescos y vibrantes hasta notas cálidas.
Explora nuestra colección y encuentra el aroma
perfecto.

Llévate tus aromas favoritos desde tan solo \$17.000.
Elige el tamaño de tu loción en fl oz y luego la
cantidad.

Nuestros precios se manejan así:
1 fl oz = \$17.000
2 fl oz = \$33.000
3 fl oz = \$45.000

¡No te pierdas esta increíble oportunidad de disfrutar
de fragancias de calidad a un precio increíblemente
bajo!
                            ''', style: textoMobile),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                      imageLocion: 'assets/images/aroma_1.jpg',
                      imageLocion2: 'assets/images/aroma_2.jpg',
                      imageHeight: 240,
                      imageWidth: 150,
                      nameLocion: '''Yara
Lattafa''',
                      symbol: '\$',
                      priceOriginal: 17.000,
                      onzas: '1 fl oz',
                    ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_3.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Ombre Nomade
Louis Vuitton''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: SEGUNDO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_4.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Bade'e Al Oud Amethyst
Lattafa''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_5.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Oud for Greatness
Initio''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: TERCER ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_7.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Amber Oud
Al Haramain''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_8.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''L' Aventure
Al Haramain''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: CUARTO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_9.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Madinah
Al Haramain''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_10.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Santal 33
Le Labo''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: QUINTO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_12.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Il Kakuno
ILMIN''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_13.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Il Femme
ILMIN''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: QUINTO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_2.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Arabians Tonka
Montale''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_3.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Intense Cafe
Montale''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: QUINTO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_4.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Baccarat Rouge 540
Francis Kurkdjian''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_5.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Oud Saffron
Orientica''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: SEXTO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_7.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Amber Rouge
Orientica''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_8.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Amber Oud Gold
Al Haramain''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: SÉPTIMO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_9.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''King
Bharara''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_10.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Corvus
Ahli''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: OCTAVO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_12.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Velvet Gold
Orientica''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_13.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Asad
Lattafa''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              //TODO: NOVENO ROW DE LOCIONES ARABES
              const Row(
                children: [
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_1.jpg',
                    imageLocion2: 'assets/images/aroma_2.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Club de Nuit Intense
Man Armaf''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                  LocionArabeMobile(
                    imageLocion: 'assets/images/aroma_6.jpg',
                    imageLocion2: 'assets/images/aroma_3.jpg',
                    imageHeight: 240,
                    imageWidth: 150,
                    nameLocion: '''Opulent Musk
Lattafa''',
                    symbol: '\$',
                    priceOriginal: 17.000,
                    onzas: '1 fl oz',
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      )
      );
  }
}


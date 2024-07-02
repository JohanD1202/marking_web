import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class HombreScreenMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const HombreScreenMobile({Key? key}) : super(key: key);

  @override
  State<HombreScreenMobile> createState() => _HombreScreenMobileState();
}

class _HombreScreenMobileState extends State<HombreScreenMobile> {

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
      height: size.height * 0.6,
      width: size.width * 1,
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
                          Text('Bienvenidos a la sección de Hombre', style: styleText3Mobile),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('''
Bienvenidos a nuestra sección dedicada a los
hombres modernos y con estilo. En Aromas
Selectos, te ofrecemos una exquisita variedad
de fragancias que reflejan tu personalidad.

Llévate tus aromas favoritos desde \$15.000.
Elige el tamaño de tu loción en fl oz y luego la
cantidad.

Nuestros precios se manejan así:
1 fl oz = \$15.000
2 fl oz = \$29.000
3 fl oz = \$40.000

¡No te pierdas esta increíble oportunidad de
disfrutar de fragancias de calidad a un precio
increíblemente bajo!''', style: textoMobile),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
                imageLocion: 'assets/images/212_heroes_carolina_herrera.png',
                imageLocion2: 'assets/images/aroma_2.jpg',
                imageHeight: 240,
                imageWidth: 150,
                nameLocion: '''212 Heroes
Carolina Herrera''',
                symbol: '\$',
                priceOriginal: 15.000,
                onzas: '1 fl oz',
              ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/212_vip_men_carolina_herrera.png',
              imageLocion2: 'assets/images/aroma_11.jpg',
              imageHeight: 220,
              imageWidth: 150,
              nameLocion: '''212 VIP Men
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/ch_carolina_herrera.webp',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CH Men
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/212_vip_wins_carolina_herrera.jpeg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''212 VIP Men Wins
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/1_million_paco_rabanne.webp',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''1 Million Parfum
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/1_million_lucky_paco_rabanne.jpeg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''1 Million Lucky
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/invictus_paco_rabanne.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Invictus
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/black_xs_paco_rabanne.webp',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Black XS
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/sauvage_dior.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Sauvage
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/fahrenheit_dior.jpeg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Fahrenheit
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEXTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/ck_one_calvin_klein.jpeg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CK One
Calvin Klein''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/360_for_men_perry_ellis.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''360° for Men
Perry Ellis''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SÉPTIMO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/nautica_voyage_nautica.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Nautica Voyage
Nautica''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/toy_boy_moschino.webp',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Toy Boy
Moschino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: OCTAVO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/red_lacoste.webp',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Red
Lacoste''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/leau_dissey_pour_homme_issey_miyake.webp',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''L'Eau d'Issey Homme
Issey Miyake''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: NOVENO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/hugo_hugo_boss.webp',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Hugo
Hugo Boss''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/acqua_di_gio_giorgio_armani.webp',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Acqua di Gio
Giorgio Armani''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: DÉCIMO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/polo_blue_ralph_lauren.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Polo Blue
Ralph Lauren''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aventus_creed.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Aventus
Creed''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 11 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/dorsay_esika.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''D'Orsay
Ésika''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/bad_diesel.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Bad
Diesel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 12 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/diesel_plus_white_diesel.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Diesel Plus White
Diesel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aqva_pour_homme_bvlgari.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Aqva Pour Homme
Bvlgari''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 13 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/boss_the_scent_hugo_boss.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Boss The Scent
Hugo Boss''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/lacoste_white.webp',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Lacoste L.12.12. White
Lacoste''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 14 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/layton_parfums_de_marly.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Layton
Parfums de Marly''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/bad_boy_carolina_herrera.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Bad Boy
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 15 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/212_vip_black_red_carolina_herrera.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''212 VIP Black Red
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/le_beau_jean_paul_galtier.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Le Beau
Jean Paul Galtier''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 16 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/arsenal_gilles_cantuel.webp',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Arsenal
Gilles Cantuel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/legend_spirit_montblanc.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Legend Spirit
Montblanc''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 17 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/valentino_born_in_roma_valentino.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Valentino Born in Roma
Valentino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/bvlgari_man_in_black_bvlgari.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Bvlgari Man in Black
Bvlgari''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: 18 ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/paris_hilton_for_men_paris_hilton.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Paris Hilton for Men
Paris Hilton''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20)
      ],
    )
            ],
          ),
        ),
      ),
    );
  }
}

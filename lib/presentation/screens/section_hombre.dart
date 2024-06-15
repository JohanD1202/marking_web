import 'package:marking_web/exports.dart';


class SectionHombre extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionHombre({Key? key}) : super (key: key);

  @override
  State<SectionHombre> createState() => _SectionHombreState();
}

class _SectionHombreState extends State<SectionHombre> {

  Locion? selectedProduct;

  void selectProduct(Locion product) {
    setState(() {
      selectedProduct = product;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_1_2onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''212 Heroes
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),            
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_2_2onzas.jpg',
              imageHeight: 350,
              imageWidth: 240,
              nameLocion: '''212 VIP Men
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_3_3onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''CH Men
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_4_4onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''212 VIP Men Wins
Carolina Herrera''',
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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_5_5onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''1 Million Parfum
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''1 Million Lucky
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Invictus
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Sauvage
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Fahrenheit
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''CK One
Calvin Klein''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Nautica Voyage
Nautica''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Toy Boy
Moschino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Red
Lacoste''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''L'Eau d'Issey Pour
Homme Issey Miyake''',
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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Hugo
Hugo Boss''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Acqua di Gio
Giorgio Armani''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Polo Blue
Ralph Lauren''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_11.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: SEXTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_1_2onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''D'Orsay
Ésika''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),            
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_2_2onzas.jpg',
              imageHeight: 350,
              imageWidth: 240,
              nameLocion: '''Bad
Diesel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_3_3onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Diesel Plus White
Diesel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_4_4onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: SÉPTIMO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_5_5onzas.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Boss The Scent
Hugo Boss''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''The Scent of Peace
Bond No 9''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Layton
Parfums de Marly''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: OCTAVO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''212 VIP Black Red
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Le Beau
Jean Paul Galtier''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Arsenal
Gilles Cantuel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
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
        //TODO: NOVENO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Valentino Born in Roma
Valentino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Bvlgari Man in Black
Bvlgari''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Lacoste L.12.12. White
Lacoste''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''L'Eau d'Issey Pour
Homme Issey Miyake''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
      ],
    );
  }
}
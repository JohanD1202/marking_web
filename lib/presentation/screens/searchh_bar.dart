import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/guia_aromas_mobile.dart';

class SearchhBar extends StatefulWidget {
  // ignore: use_super_parameters
  const SearchhBar({Key? key}) : super(key: key);

  @override
  State<SearchhBar> createState() => _SearchhBarState();
}

class _SearchhBarState extends State<SearchhBar> {
  final TextEditingController _controller = TextEditingController();
  List<String> suggestions = ["Lociones", "Camisetas", "Rifas", "Bolsos"];

  List<String> filteredSuggestions = [
    "Locion de Hombre",
    "Camiseta Estampada",
    "Rifas",
    "Bolso Dior"
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    String searchTerm = _controller.text.toLowerCase();
    setState(() {
      filteredSuggestions = suggestions
          .where((suggestion) => suggestion.toLowerCase().contains(searchTerm))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          width: 900,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Busca tus favoritos',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.grey)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              prefixIcon: const Icon(Icons.search_rounded),
            ),
          ),
        ),
        //const SizedBox(height: 10),
        /*Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: filteredSuggestions.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(filteredSuggestions[index]),
                onTap: () {
                  //_controller.text = filteredSuggestions[index];
                },
              );
            }
          ),
        )*/
      ],
    );
  }
}

//TODO:

class SearchhBarMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SearchhBarMobile({Key? key}) : super(key: key);

  @override
  State<SearchhBarMobile> createState() => _SearchhBarMobileState();
}

class _SearchhBarMobileState extends State<SearchhBarMobile> {
  final TextEditingController _controller = TextEditingController();

  final List<String> suggestions = [
    "Yara - Lattafa",
    "Ombre Nomade - Louis Vuitton",
    "Bade'e Al Oud Amethyst - Lattafa",
    "Oud For Greatness - Initio",
    "Amber Oud - Al Haramain",
    "L' Aventure - Al Haramain",
    "Madinah - Al Haramain",
    "Santal 33 - Le Labo",
    "Il Kakuno - ILMIN",
    "Il Femme - ILMIN",
    "Arabians Tonka - Montale",
    "Intense Cafe - Montale",
    "Baccarat Rouge 540 - Francis Kurkdjian",
    "Oud Saffron - Orientica",
    "212 Heroes - Carolina Herrera",
    "212 VIP Men - Carolina Herrera",
    "CH Men - Carolina Herrera",
  ];

  final Map<String, String> suggestionImages = {
    "Yara - Lattafa": 'assets/images/yara_lattafa.jpg',
    "Ombre Nomade - Louis Vuitton":
        'assets/images/ombre_nomade_louis_vuitton.webp',
    "Bade'e Al Oud Amethyst - Lattafa": 'assets/images/amethyst_lattafa.webp',
    "Oud For Greatness - Initio": 'assets/images/oud_for_greatness_initio.jpg',
    "Amber Oud - Al Haramain": 'assets/images/amber_oud_haramain.webp',
    "L' Aventure - Al Haramain": 'assets/images/l_aventure_haramain.jpg',
    "Madinah - Al Haramain": 'assets/images/madinah_haramain.jpg',
    "Santal 33 - Le Labo": 'assets/images/santal_33_le_labo.jpg',
    "Il Kakuno - ILMIN": 'assets/images/il_kakuno_ilmin.jpg',
    "Il Femme - ILMIN": 'assets/images/il_femme_ilmin.jpg',
    "Arabians Tonka - Montale": 'assets/images/arabians_tonka_montale.webp',
    "Intense Cafe - Montale": 'assets/images/intense_cafe_montale.jpg',
    "Baccarat Rouge 540 - Francis Kurkdjian":
        'assets/images/baccarat_rouge_francis_kurkdjian.webp',
    "Oud Saffron - Orientica": 'assets/images/oud_saffron_orientica.webp',
    "212 Heroes - Carolina Herrera":
        'assets/images/212_heroes_carolina_herrera.png',
    "212 VIP Men - Carolina Herrera":
        'assets/images/212_vip_men_carolina_herrera.png',
    "CH Men - Carolina Herrera": 'assets/images/ch_carolina_herrera.webp'
  };

  List<String> filteredSuggestions = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final searchTerm = _controller.text.toLowerCase();
    setState(() {
      if (searchTerm.isNotEmpty) {
        filteredSuggestions = suggestions
            .where(
                (suggestion) => suggestion.toLowerCase().contains(searchTerm))
            .toList();
      } else {
        filteredSuggestions = [];
      }
    });
  }

  void _navigateToWidget(String suggestion) {
    setState(() {
      switch (suggestion) {
        case 'Yara - Lattafa':
          _selectedIndex = 1;
          break;
        case 'Ombre Nomade - Louis Vuitton':
          _selectedIndex = 2;
          break;
        case 'Bade\'e Al Oud Amethyst - Lattafa':
          _selectedIndex = 3;
          break;
        case 'Oud For Greatness - Initio':
          _selectedIndex = 4;
          break;
        case 'Amber Oud - Al Haramain':
          _selectedIndex = 5;
          break;
        case 'L\' Aventure - Al Haramain':
          _selectedIndex = 6;
          break;
        case 'Madinah - Al Haramain':
          _selectedIndex = 7;
          break;
        case 'Santal 33 - Le Labo':
          _selectedIndex = 8;
          break;
        case 'Il Kakuno - ILMIN':
          _selectedIndex = 9;
          break;
        case 'Il Femme - ILMIN':
          _selectedIndex = 10;
          break;
        case 'Arabians Tonka - Montale':
          _selectedIndex = 11;
          break;
        case 'Intense Cafe - Montale':
          _selectedIndex = 12;
          break;
        case 'Baccarat Rouge 540 - Francis Kurkdjian':
          _selectedIndex = 13;
          break;
        case 'Oud Saffron - Orientica':
          _selectedIndex = 14;
          break;
        case '212 Heroes - Carolina Herrera':
          _selectedIndex = 15;
          break;
        case '212 VIP Men - Carolina Herrera':
          _selectedIndex = 16;
          break;
        case 'CH Men - Carolina Herrera':
          _selectedIndex = 17;
          break;
        default:
          _selectedIndex = 0;
      }
      _controller.clear();
      filteredSuggestions = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          width: 330,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Busca tus favoritos',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              prefixIcon: const Icon(Icons.search_rounded),
            ),
          ),
        ),
        const SizedBox(height: 10),
        if (filteredSuggestions.isNotEmpty)
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: filteredSuggestions.length,
              itemBuilder: (context, index) {
                final suggestion = filteredSuggestions[index];
                return ListTile(
                  leading: Image.network(
                    suggestionImages[suggestion] ??
                        'assets/images/locion_4.jpg',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(suggestion),
                  onTap: () => _navigateToWidget(suggestion),
                );
              },
            ),
          ),
        Container(
          height: _selectedIndex == 0 ? 0 : 1180,
          width: double.infinity,
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              //TODO: 0
              SizedBox.shrink(),
              //TODO: 1
              AromasBuscador(
                title: 'Yara - Lattafa',
                description: '''
Yara de Lattafa Perfumes es una fragancia de la 
Familia olfativa Ámbar Vainilla para Mujeres. 
Yara se lanzó en 2020. Su longevidad y su
estela son moderadas. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/yara_lattafa.jpg',
                imageNotaSalida: 'assets/images/orquidea.jpg',
                textNotaSalida: 'Orquídea',
                imageNotaSalida2: 'assets/images/heliotropo.jpg',
                textNotaSalida2: 'Heliotropo',
                imageNotaSalida3: 'assets/images/naranja_tangerina.jpg',
                textNotaSalida3: '''Naranja
Tangerina''',
                imageCorazon: 'assets/images/acuerdo_goloso.jpg',
                textCorazon: '''Acuerdo
Goloso''',
                imageCorazon2: 'assets/images/frutas_tropicales.jpg',
                textCorazon2: '''Frutas
Tropicales''',
                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/sandalo.jpg',
                textBase3: 'Sándalo',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 225,
                containerColor2: Color.fromRGBO(255, 254, 193, 1),
                colorText2: Colors.black,
                text2: 'avainillado',
                containerWidth3: 215,
                containerColor3: Color.fromRGBO(239, 223, 207, 1),
                colorText3: Colors.black,
                text3: 'atalcado',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(249, 200, 87, 1),
                colorText4: Colors.black54,
                text4: 'tropical',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(239, 229, 241, 1),
                colorText5: Colors.black54,
                text5: 'almizclado',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(253, 135, 113, 1),
                colorText6: Colors.black54,
                text6: 'afrutados',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(255, 156, 185, 1),
                colorText7: Colors.black54,
                text7: 'florales',
                containerWidth8: 110,
                containerColor8: Color.fromRGBO(251, 255, 163, 1),
                colorText8: Colors.black45,
                text8: 'cítrico',
              ),
              //TODO: 2
              AromasBuscador200(
                title: 'Ombre Nomade - Louis Vuitton',
                description: '''
Ombre Nomade de Louis Vuitton es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres. Ombre Nomade se lanzó en 2018.
Tiene una longevidad muy duradera y su
estela es enorme. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/ombre_nomade_louis_vuitton.webp',
                imageNotaFragancia: 'assets/images/madera_de_oud.jpg',
                textNotaFragancia: '''Madera
de Oud''',
                imageNotaFragancia2: 'assets/images/incienso.jpg',
                textNotaFragancia2: 'Incienso',
                imageNotaFragancia3: 'assets/images/rosa.jpg',
                textNotaFragancia3: 'Rosa',
                imageNotaFragancia4: 'assets/images/frambuesa.jpg',
                textNotaFragancia4: 'Frambuesa',
                imageNotaFragancia5: 'assets/images/abedul.jpg',
                textNotaFragancia5: 'Abedul',
                imageNotaFragancia6: 'assets/images/azafran.jpg',
                textNotaFragancia6: 'Azafrán',
                imageNotaFragancia7: 'assets/images/amberwood.jpg',
                textNotaFragancia7: 'Amberwood',
                imageNotaFragancia8: 'assets/images/benjui.jpg',
                textNotaFragancia8: 'Benjuí',
                imageNotaFragancia9: 'assets/images/geranio.jpg',
                textNotaFragancia9: 'Geranio',
                containerWidth: 230,
                containerColor: Color.fromRGBO(188, 77, 16, 1),
                colorText: Colors.white,
                text: 'ámbar',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(107, 91, 82, 1),
                colorText2: Colors.white,
                text2: 'oud',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(213, 88, 46, 1),
                colorText3: Colors.white,
                text3: 'cálido especiado',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(158, 147, 162, 1),
                colorText4: Colors.white,
                text4: 'ahumado',
                containerWidth5: 180,
                containerColor5: Color.fromRGBO(254, 161, 142, 1),
                colorText5: Colors.white,
                text5: 'rosas',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(253, 140, 119, 1),
                colorText6: Colors.black87,
                text6: 'afrutados',
                containerWidth7: 150,
                containerColor7: Color.fromRGBO(170, 138, 108, 1),
                colorText7: Colors.white,
                text7: 'amaderado',
                containerWidth8: 150,
                containerColor8: Color.fromRGBO(171, 141, 132, 1),
                colorText8: Colors.white,
                text8: 'cuero',
                containerWidth9: 140,
                containerColor9: Color.fromRGBO(206, 182, 157, 1),
                colorText9: Colors.black54,
                text9: 'balsámico',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(245, 141, 144, 1),
                colorText10: Colors.white70,
                text10: 'dulce',
              ),
              //TODO: 3
              AromasBuscador(
                title: 'Bade\'e Al Oud Amethyst - Lattafa',
                description: '''
Bade'e Al Oud Amethyst de Lattafa Perfumes
es una fragancia de la familia olfativa
Ámbar Vainilla para Hombres y Mujeres.
Bade'e Al Oud Amethyst se lanzó en 2021.
Tiene una longevidad duradera y
su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/amethyst_lattafa.webp',
                imageNotaSalida: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida: '''Pimienta
Rosa''',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: '''Rosa
Turca''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: '''Rosa de
Bulgaria''',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageBase: 'assets/images/madera_de_oud.jpg',
                textBase: '''Madera
de Oud''',
                imageBase2: 'assets/images/ambar.jpg',
                textBase2: 'Ámbar',
                imageBase3: 'assets/images/vainilla.jpg',
                textBase3: 'Vainilla',
                containerWidth: 230,
                containerColor: Color.fromRGBO(254, 1, 107, 1),
                colorText: Colors.white,
                text: 'rosas',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(109, 93, 84, 1),
                colorText2: Colors.white,
                text2: 'oud',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(236, 166, 142, 1),
                colorText3: Colors.black54,
                text3: 'especiado suave',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(211, 139, 100, 1),
                colorText4: Colors.white,
                text4: 'ámbar',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(255, 155, 184, 1),
                colorText5: Colors.black54,
                text5: 'florales',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(255, 254, 216, 1),
                colorText6: Colors.black54,
                text6: 'avainillado',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(251, 255, 154, 1),
                colorText7: Colors.black54,
                text7: 'cítrico',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(184, 224, 132, 1),
                colorText8: Colors.black54,
                text8: 'fresco especiado',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(245, 247, 252, 1),
                colorText9: Colors.black45,
                text9: 'floral blanco',
              ),
              //TODO: 4
              AromasBuscador(
                title: 'Oud For Greatness - Initio',
                description: '''
Oud for Greatness de Initio Parfums Prives es una
fragancia de la familia olfativa para Hombres y
Mujeres. Oud for Greatness se lanzó en 2018.
Tiene una longevidad muy duradera y su
estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/oud_for_greatness_initio.jpg',
                imageNotaSalida: 'assets/images/azafran.jpg',
                textNotaSalida: 'Azafrán',
                imageNotaSalida2: 'assets/images/nuez_moscada.jpg',
                textNotaSalida2: '''Nuez
Moscada''',
                imageNotaSalida3: 'assets/images/lavanda.jpg',
                textNotaSalida3: 'Lavanda',
                imageCorazon: 'assets/images/madera_de_oud.jpg',
                textCorazon: '''Madera
de Oud''',
                imageBase: 'assets/images/pachuli.jpg',
                textBase: 'Pachulí',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(204, 51, 0, 1),
                colorText: Colors.white,
                text: 'cálido especiado',
                containerWidth2: 220,
                containerColor2: Color.fromRGBO(138, 204, 53, 1),
                colorText2: Colors.black,
                text2: 'fresco especiado',
                containerWidth3: 215,
                containerColor3: Color.fromRGBO(97, 79, 69, 1),
                colorText3: Colors.white,
                text3: 'oud',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(238, 221, 241, 1),
                colorText4: Colors.black54,
                text4: 'lavanda',
                containerWidth5: 155,
                containerColor5: Color.fromRGBO(185, 201, 206, 1),
                colorText5: Colors.black54,
                text5: 'metálico',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(150, 151, 115, 1),
                colorText6: Colors.white70,
                text6: 'pachulí',
                containerWidth7: 150,
                containerColor7: Color.fromRGBO(239, 229, 241, 1),
                colorText7: Colors.black54,
                text7: 'almizclado',
                containerWidth8: 145,
                containerColor8: Color.fromRGBO(171, 141, 133, 1),
                colorText8: Colors.white70,
                text8: 'cuero',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(208, 178, 133, 1),
                colorText9: Colors.white70,
                text9: 'tabaco',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(158, 151, 142, 1),
                colorText10: Colors.white70,
                text10: 'terrosos',
              ),
              //TODO: 5
              AromasBuscador(
                  title: 'Amber Oud - Al Haramain',
                  description: '''
Amber Oud de Al Haramain Perfumes es una
fragancia de la familia olfativa Ámbar
amaderada para Hombres y Mujeres.
Amber Oud se lanzó en 2018. Tiene una
longevidad duradera y su estela es pesada.
Es un aroma Unisex.
''',
                  imageLocion: 'assets/images/amber_oud_haramain.webp',
                  imageNotaSalida: 'assets/images/romero.jpg',
                  textNotaSalida: 'Romero',
                  imageNotaSalida2: 'assets/images/bergamota.jpg',
                  textNotaSalida2: 'Bergamota',
                  imageNotaSalida3: 'assets/images/cedro.jpg',
                  textNotaSalida3: 'Cedro',
                  imageNotaSalida4: 'assets/images/limon.jpg',
                  textNotaSalida4: 'Limón',
                  imageCorazon: 'assets/images/especias.jpg',
                  textCorazon: 'Especias',
                  imageCorazon2: 'assets/images/cedro.jpg',
                  textCorazon2: 'Cedro',
                  imageCorazon3: 'assets/images/madera_de_gaiac.jpg',
                  textCorazon3: '''Madera
de Gaiac''',
                  imageBase: 'assets/images/resinas.jpg',
                  textBase: 'Resinas',
                  imageBase2: 'assets/images/ambar.jpg',
                  textBase2: 'Ámbar',
                  imageBase3: 'assets/images/almizcle.jpg',
                  textBase3: 'Almizcle',
                  containerWidth: 230,
                  containerColor: Color.fromRGBO(188, 77, 16, 1),
                  colorText: Colors.white,
                  text: 'ámbar',
                  containerWidth2: 225,
                  containerColor2: Color.fromRGBO(121, 71, 24, 1),
                  colorText2: Colors.white,
                  text2: 'amaderado',
                  containerWidth3: 165,
                  containerColor3: Color.fromRGBO(95, 179, 160, 1),
                  colorText3: Colors.black87,
                  text3: 'aromático',
                  containerWidth4: 155,
                  containerColor4: Color.fromRGBO(250, 255, 124, 1),
                  colorText4: Colors.black54,
                  text4: 'cítrico',
                  containerWidth5: 150,
                  containerColor5: Color.fromRGBO(165, 216, 99, 1),
                  colorText5: Colors.black54,
                  text5: 'fresco especiado',
                  containerWidth6: 135,
                  containerColor6: Color.fromRGBO(244, 233, 233, 1),
                  colorText6: Colors.black45,
                  text6: 'atalcado',
                  containerWidth7: 130,
                  containerColor7: Color.fromRGBO(240, 231, 242, 1),
                  colorText7: Colors.black45,
                  text7: 'almizclado',
                  containerWidth8: 125,
                  containerColor8: Color.fromRGBO(224, 134, 104, 1),
                  colorText8: Colors.white60,
                  text8: 'cálido especiado',
                  containerWidth9: 115,
                  containerColor9: Color.fromRGBO(211, 188, 166, 1),
                  colorText9: Colors.black45,
                  text9: 'balsámico'),
              //TODO: 6
              AromasBuscador(
                title: 'L\' Aventure - Al Haramain',
                description: '''
L' Aventure de Al Haramain Perfumes es una
fragancia de la familia olfativa Chipre
Frutal para Hombres. L' Aventure se lanzó en 2016.
Tiene una longevidad duradera y su estela
es moderada. Es un aroma Masculino
(Tiene su versión femenina) L' Aventure femme.
''',
                imageLocion: 'assets/images/l_aventure_haramain.jpg',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: 'Limón',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/elemi.jpg',
                textNotaSalida3: 'Elemí',
                imageCorazon: 'assets/images/notas_amaderadas.jpg',
                textCorazon: '''Notas
Amaderadas''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon3: '''Lirio de
los Valles''',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/pachuli.jpg',
                textBase2: 'Pachulí',
                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 160,
                containerColor2: Color.fromRGBO(114, 188, 172, 1),
                colorText2: Colors.black54,
                text2: 'aromático',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(162, 128, 95, 1),
                colorText3: Colors.white70,
                text3: 'amaderado',
                containerWidth4: 135,
                containerColor4: Color.fromRGBO(240, 232, 242, 1),
                colorText4: Colors.black45,
                text4: 'almizclado',
                containerWidth5: 130,
                containerColor5: Color.fromRGBO(184, 224, 132, 1),
                colorText5: Colors.black45,
                text5: 'fresco especiado',
                containerWidth6: 125,
                containerColor6: Color.fromRGBO(245, 236, 227, 1),
                colorText6: Colors.black45,
                text6: 'atalcado',
                containerWidth7: 125,
                containerColor7: Color.fromRGBO(245, 248, 252, 1),
                colorText7: Colors.black45,
                text7: 'floral blanco',
              ),
              //TODO: 7
              AromasBuscador(
                title: 'Madinah - Al Haramain',
                description: '''
Madinah de Al Haramain Perfumes es una
fragancia de la familia olfativa Ámbar
Floral para Hombres y Mujeres.
Tiene una longevidad duradera y su
estela es moderada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/madinah_haramain.jpg',
                imageNotaSalida: 'assets/images/rosa.jpg',
                textNotaSalida: 'Rosa',
                imageNotaSalida2: 'assets/images/geranio.jpg',
                textNotaSalida2: 'Geranio',
                imageNotaSalida3: 'assets/images/davana.jpg',
                textNotaSalida3: 'Davana',
                imageNotaSalida4: 'assets/images/naranja.jpg',
                textNotaSalida4: 'Naranja',
                imageNotaSalida5: 'assets/images/bergamota.jpg',
                textNotaSalida5: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/azafran.jpg',
                textCorazon2: 'Azafrán',
                imageCorazon3: 'assets/images/sandalo.jpg',
                textCorazon3: 'Sándalo',
                imageCorazon4: 'assets/images/orquidea.jpg',
                textCorazon4: 'Orquídea',
                imageCorazon5: 'assets/images/jazmin.jpg',
                textCorazon5: 'Jazmín',
                imageCorazon6: 'assets/images/cedro.jpg',
                textCorazon6: 'Cedro',
                imageCorazon7: 'assets/images/clavos_de_olor.jpg',
                textCorazon7: '''Clavos
de Olor''',
                imageBase: 'assets/images/sandalo.jpg',
                textBase: 'Sándalo',
                imageBase2: 'assets/images/notas_florales.jpg',
                textBase2: 'Notas Florales',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/cedro.jpg',
                textBase5: 'Cedro',
                imageBase6: 'assets/images/cachemira.jpg',
                textBase6: 'Cachemira',
                containerWidth: 230,
                containerColor: Color.fromRGBO(254, 1, 107, 1),
                colorText: Colors.white,
                text: 'rosas',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(255, 125, 162, 1),
                colorText2: Colors.black,
                text2: 'florales',
                containerWidth3: 200,
                containerColor3: Color.fromRGBO(213, 89, 48, 1),
                colorText3: Colors.white,
                text3: 'cálido especiado',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(154, 116, 81, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 180,
                containerColor5: Color.fromRGBO(250, 255, 129, 1),
                colorText5: Colors.black54,
                text5: 'cítrico',
                containerWidth6: 165,
                containerColor6: Color.fromRGBO(243, 232, 221, 1),
                colorText6: Colors.black54,
                text6: 'atalcado',
                containerWidth7: 150,
                containerColor7: Color.fromRGBO(244, 247, 252, 1),
                colorText7: Colors.black54,
                text7: 'floral blanco',
                containerWidth8: 145,
                containerColor8: Color.fromRGBO(197, 211, 214, 1),
                colorText8: Colors.black54,
                text8: 'metálico',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(199, 240, 244, 1),
                colorText9: Colors.black54,
                text9: 'fresco',
                containerWidth10: 140,
                containerColor10: Color.fromRGBO(184, 158, 151, 1),
                colorText10: Colors.white60,
                text10: 'cuero',
              ),
              //TODO: 8
              AromasBuscador200(
                title: 'Santal 33 - Le Labo',
                description: '''
Santal 33 de Le Labo es una fragancia
de la familia olfativa Amaderada
Aromática para Hombres y Mujeres.
Santal 33 se lanzó en 2011.
Tiene una longevidad duradera y su
estela es de moderada a pesada.
Es un aroma Unisex.
''',
                imageLocion: 'assets/images/santal_33_le_labo.jpg',
                imageNotaFragancia: 'assets/images/sandalo.jpg',
                textNotaFragancia: 'Sándalo',
                imageNotaFragancia2: 'assets/images/cuero.jpg',
                textNotaFragancia2: 'Cuero',
                imageNotaFragancia3: 'assets/images/papiro_de_egipto.jpg',
                textNotaFragancia3: '''Papiro
de Egipto''',
                imageNotaFragancia4: 'assets/images/cedro.jpg',
                textNotaFragancia4: 'Cedro',
                imageNotaFragancia5: 'assets/images/violeta.jpg',
                textNotaFragancia5: 'Violeta',
                imageNotaFragancia6: 'assets/images/cardamomo.jpg',
                textNotaFragancia6: 'Cardamomo',
                imageNotaFragancia7: 'assets/images/iris.jpg',
                textNotaFragancia7: 'Iris',
                imageNotaFragancia8: 'assets/images/ambar.jpg',
                textNotaFragancia8: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 150,
                containerColor2: Color.fromRGBO(243, 231, 219, 1),
                colorText2: Colors.black54,
                text2: 'atalcado',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(166, 135, 126, 1),
                colorText3: Colors.white70,
                text3: 'cuero',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(224, 131, 100, 1),
                colorText4: Colors.white70,
                text4: 'cálido especiado',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(200, 130, 255, 1),
                colorText5: Colors.white70,
                text5: 'violeta',
              ),
              //TODO: 9
              AromasBuscador(
                title: 'Il Kakuno - ILMIN',
                description: '''
Il Kakuno de ILMIN Parfums es una fragancia
de la familia olfativa para Hombres y Mujeres.
Il Kakuno se lanzó en 2018. Tiene una
longevidad moderada y su estela es moderada.
Es un aroma Unisex.
''',
                imageLocion: 'assets/images/il_kakuno_ilmin.jpg',
                imageNotaSalida: 'assets/images/caramelo.jpg',
                textNotaSalida: 'Caramelo',
                imageNotaSalida2: 'assets/images/fresa.jpg',
                textNotaSalida2: 'Fresa',
                imageNotaSalida3: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida3: '''
Pimienta
Rosa''',
                imageNotaSalida4: 'assets/images/durazno.jpg',
                textNotaSalida4: 'Durazno',
                imageNotaSalida5: 'assets/images/ladano.jpg',
                textNotaSalida5: 'Ládano',
                imageNotaSalida6: 'assets/images/bayas_silvestres.jpg',
                textNotaSalida6: '''Bayas
Silvestres''',
                imageCorazon: 'assets/images/cipriol.jpg',
                textCorazon: 'Cipriol',
                imageCorazon2: 'assets/images/jengibre.jpg',
                textCorazon2: 'Jengibre',
                imageCorazon3: 'assets/images/cuero.jpg',
                textCorazon3: 'Cuero',
                imageCorazon4: 'assets/images/rosa.jpg',
                textCorazon4: 'Rosa',
                imageCorazon5: 'assets/images/pachuli.jpg',
                textCorazon5: 'Pachulí',
                imageCorazon6: 'assets/images/azafran.jpg',
                textCorazon6: 'Azafrán',
                imageBase: 'assets/images/balsamo.jpg',
                textBase: 'Bálsamo',
                imageBase2: 'assets/images/madera_de_oud.jpg',
                textBase2: '''Madera
de Oud''',
                imageBase3: 'assets/images/benjui.jpg',
                textBase3: 'Benjuí',
                imageBase4: 'assets/images/vainilla.jpg',
                textBase4: 'Vainilla',
                imageBase5: 'assets/images/almizcle.jpg',
                textBase5: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(188, 77, 16, 1),
                colorText: Colors.white,
                text: 'ámbar',
                containerWidth2: 220,
                containerColor2: Color.fromRGBO(125, 77, 31, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 200,
                containerColor3: Color.fromRGBO(184, 147, 111, 1),
                colorText3: Colors.black87,
                text3: 'balsámico',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(215, 96, 56, 1),
                colorText4: Colors.white,
                text4: 'cálido especiado',
                containerWidth5: 175,
                containerColor5: Color.fromRGBO(229, 185, 127, 1),
                colorText5: Colors.black54,
                text5: 'caramelo',
                containerWidth6: 170,
                containerColor6: Color.fromRGBO(255, 254, 208, 1),
                colorText6: Colors.black54,
                text6: 'avainillado',
                containerWidth7: 165,
                containerColor7: Color.fromRGBO(242, 107, 110, 1),
                colorText7: Colors.white70,
                text7: 'dulce',
                containerWidth8: 165,
                containerColor8: Color.fromRGBO(253, 124, 100, 1),
                colorText8: Colors.black54,
                text8: 'afrutados',
                containerWidth9: 150,
                containerColor9: Color.fromRGBO(239, 229, 241, 1),
                colorText9: Colors.black54,
                text9: 'almizclado',
                containerWidth10: 150,
                containerColor10: Color.fromRGBO(143, 130, 123, 1),
                colorText10: Colors.white70,
                text10: 'oud',
              ),
              //TODO: 10
              AromasBuscador(
                title: 'Il Femme - ILMIN',
                description: '''
Il Femme de ILMIN Parfums es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres y Mujeres. Il Femme se lanzó en 2018.
Su longevidad es muy duradera y su estela
es moderada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/il_femme_ilmin.jpg',
                imageNotaSalida: 'assets/images/maracuya.jpg',
                textNotaSalida: 'Maracuyá',
                imageNotaSalida2: 'assets/images/rosa.jpg',
                textNotaSalida2: 'Rosa',
                imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                textNotaSalida3: 'Nuez Moscada',
                imageNotaSalida4: 'assets/images/canela.jpg',
                textNotaSalida4: 'Canela',
                imageCorazon: 'assets/images/cedro.jpg',
                textCorazon: 'Cedro',
                imageCorazon2: 'assets/images/cipriol.jpg',
                textCorazon2: 'Cipriol',
                imageCorazon3: 'assets/images/madera_de_gaiac.jpg',
                textCorazon3: '''
Madera
de Gaiac''',
                imageCorazon4: 'assets/images/madera_de_cachemira.jpg',
                textCorazon4: '''
Madera
de Cachemira''',
                imageBase: 'assets/images/sandalo.jpg',
                textBase: 'Sándalo',
                imageBase2: 'assets/images/tabaco.jpg',
                textBase2: 'Tabaco',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/cumarina.jpg',
                textBase4: 'Cumarina',
                imageBase5: 'assets/images/vainilla.jpg',
                textBase5: 'Vainilla',
                imageBase6: 'assets/images/ladano.jpg',
                textBase6: 'Ládano',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 150,
                containerColor2: Color.fromRGBO(244, 233, 222, 1),
                colorText2: Colors.black54,
                text2: 'atalcado',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(244, 128, 132, 1),
                colorText3: Colors.white70,
                text3: 'dulce',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(240, 231, 242, 1),
                colorText4: Colors.black54,
                text4: 'almizclado',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(225, 138, 109, 1),
                colorText5: Colors.white70,
                text5: 'cálido especiado',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(254, 111, 171, 1),
                colorText6: Colors.white70,
                text6: 'rosas',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(208, 178, 133, 1),
                colorText7: Colors.white70,
                text7: 'tabaco',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(189, 226, 142, 1),
                colorText8: Colors.black54,
                text8: 'fresco especiado',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(253, 161, 143, 1),
                colorText9: Colors.black54,
                text9: 'afrutados',
              ),
              //TODO: 11
              AromasBuscador(
                title: 'Arabians Tonka - Montale',
                description: '''
Arabians Tonka de Montale es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres y Mujeres. Arabians Tonka se lanzó
en 2019. Tiene una longevidad muy duradera
y su estela es enorme. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/arabians_tonka_montale.webp',
                imageNotaSalida: 'assets/images/azafran.jpg',
                textNotaSalida: 'Azafrán',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageCorazon: 'assets/images/madera_de_oud.jpg',
                textCorazon: '''
Madera
de Oud''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: '''
Rosa de
Bulgaria''',
                imageBase: 'assets/images/cumarina.jpg',
                textBase: '''Haba
Tonka''',
                imageBase2: 'assets/images/caña_de_azucar.jpg',
                textBase2: '''
Caña de
Azúcar''',
                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',
                imageBase4: 'assets/images/almizcle.jpg',
                textBase4: '''
Almizcle
Blanco''',
                imageBase5: 'assets/images/musgo_de_roble.jpg',
                textBase5: '''Musgo
de Roble''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(255, 254, 198, 1),
                colorText2: Colors.black,
                text2: 'avainillado',
                containerWidth3: 200,
                containerColor3: Color.fromRGBO(197, 101, 48, 1),
                colorText3: Colors.white,
                text3: 'ámbar',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(216, 101, 63, 1),
                colorText4: Colors.white70,
                text4: 'cálido especiado',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(128, 114, 106, 1),
                colorText5: Colors.white70,
                text5: 'oud',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(254, 80, 153, 1),
                colorText6: Colors.white70,
                text6: 'rosas',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(241, 232, 242, 1),
                colorText7: Colors.black54,
                text7: 'almizclado',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(144, 202, 189, 1),
                colorText8: Colors.black54,
                text8: 'aromático',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(197, 211, 215, 1),
                colorText9: Colors.black54,
                text9: 'metálico',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(246, 237, 228, 1),
                colorText10: Colors.black54,
                text10: 'atalcado',
              ),
              //TODO: 12
              AromasBuscador(
                title: 'Intense Cafe - Montale',
                description: '''
Intense Cafe de Montale es una fragancia
de la familia olfativa Ámbar Vainilla para
Hombres y Mujeres. Intense Cafe se lanzó
en 2013. Tiene una longevidad duradera y
su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/intense_cafe_montale.jpg',
                imageNotaSalida: 'assets/images/notas_florales.jpg',
                textNotaSalida: '''Notas
Florales''',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/cafe.jpg',
                textCorazon2: 'Café',
                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: '''Almizcle
Blanco''',
                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(254, 1, 107, 1),
                colorText: Colors.white,
                text: 'rosas',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(255, 254, 198, 1),
                colorText2: Colors.black,
                text2: 'avainillado',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(113, 97, 72, 1),
                colorText3: Colors.white,
                text3: 'café',
                containerWidth4: 185,
                containerColor4: Color.fromRGBO(255, 128, 165, 1),
                colorText4: Colors.black87,
                text4: 'florales',
                containerWidth5: 170,
                containerColor5: Color.fromRGBO(243, 231, 219, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 160,
                containerColor6: Color.fromRGBO(239, 229, 241, 1),
                colorText6: Colors.black54,
                text6: 'almizclado',
                containerWidth7: 160,
                containerColor7: Color.fromRGBO(222, 123, 91, 1),
                colorText7: Colors.white60,
                text7: 'cálido especiado',
                containerWidth8: 150,
                containerColor8: Color.fromRGBO(215, 151, 115, 1),
                colorText8: Colors.white60,
                text8: 'ámbar',
                containerWidth9: 140,
                containerColor9: Color.fromRGBO(246, 149, 152, 1),
                colorText9: Colors.white60,
                text9: 'dulce',
              ),
              //TODO: 13
              AromasBuscador(
                title: 'Baccarat Rouge 540 - Francis Kurkdjian',
                description: '''
Baccarat Rouge 540 de Maison Francis
Kurkdjian es una fragancia de la familia
olfativa Ámbar Floral para Hombres y Mujeres.
Baccarat Rouge 540 se lanzó en 2015. Su
longevidad es muy duradera y su estela 
es pesada. Es un aroma Unisex.
''',
                imageLocion:
                    'assets/images/baccarat_rouge_francis_kurkdjian.webp',
                imageNotaSalida: 'assets/images/azafran.jpg',
                textNotaSalida: 'Azafrán',
                imageNotaSalida2: 'assets/images/jazmin.jpg',
                textNotaSalida2: 'Jazmín',
                imageCorazon: 'assets/images/amberwood.jpg',
                textCorazon: 'Amberwood',
                imageCorazon2: 'assets/images/ambar_gris.jpg',
                textCorazon2: '''Ámbar
Gris''',
                imageBase: 'assets/images/resina_de_abeto.jpg',
                textBase: '''Resina
de Abeto''',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 215,
                containerColor2: Color.fromRGBO(193, 90, 33, 1),
                colorText2: Colors.white,
                text2: 'ámbar',
                containerWidth3: 170,
                containerColor3: Color.fromRGBO(217, 104, 67, 1),
                colorText3: Colors.white,
                text3: 'cálido especiado',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(187, 225, 137, 1),
                colorText4: Colors.black54,
                text4: 'fresco especiado',
                containerWidth5: 130,
                containerColor5: Color.fromRGBO(146, 203, 191, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 130,
                containerColor6: Color.fromRGBO(198, 212, 216, 1),
                colorText6: Colors.black54,
                text6: 'metálico',
                containerWidth7: 128,
                containerColor7: Color.fromRGBO(245, 248, 252, 1),
                colorText7: Colors.black54,
                text7: 'floral blanco',
                containerWidth8: 128,
                containerColor8: Color.fromRGBO(195, 159, 130, 1),
                colorText8: Colors.white60,
                text8: 'aromático',
              ),
              //TODO: 14
              AromasBuscador(
                title: 'Oud Saffron - Orientica',
                description: '''
Oud Saffron de Orientica Premium es una
fragancia de la familia olfativa Amaderada
Especiada para Hombres y Mujeres. Oud
Saffron se lanzó en 2021. Su longevidad
es muy duradera y su estela es pesada.
Es un aroma Unisex.
''',
                imageLocion: 'assets/images/oud_saffron_orientica.webp',
                imageNotaSalida: 'assets/images/notas_orientales.jpg',
                textNotaSalida: '''Notas
Orientales''',
                imageNotaSalida2: 'assets/images/vainilla.jpg',
                textNotaSalida2: 'Vainilla',
                imageCorazon: 'assets/images/azafran.jpg',
                textCorazon: 'Azafrán',
                imageCorazon2: 'assets/images/pachuli.jpg',
                textCorazon2: 'Pachulí',
                imageBase: 'assets/images/madera_de_oud.jpg',
                textBase: '''Madera
de Oud''',
                imageBase2: 'assets/images/madera_de_gaiac.jpg',
                textBase2: '''Madera
de Gaiac''',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(204, 51, 0, 1),
                colorText: Colors.white,
                text: 'cálido especiado',
                containerWidth2: 150,
                containerColor2: Color.fromRGBO(210, 135, 94, 1),
                colorText2: Colors.white70,
                text2: 'ámbar',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(239, 230, 241, 1),
                colorText3: Colors.black54,
                text3: 'almizclado',
                containerWidth4: 140,
                containerColor4: Color.fromRGBO(146, 134, 127, 1),
                colorText4: Colors.white70,
                text4: 'oud',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(169, 137, 106, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(255, 254, 215, 1),
                colorText6: Colors.black54,
                text6: 'avainillado',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(245, 236, 226, 1),
                colorText7: Colors.black54,
                text7: 'atalcado',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(198, 212, 216, 1),
                colorText8: Colors.black54,
                text8: 'metálico',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(173, 174, 146, 1),
                colorText9: Colors.white60,
                text9: 'pachulí',
              ),
              //TODO: 15
              AromasBuscador(
                title: '212 Heroes - Carolina Herrera',
                description: '''
212 Heroes de Carolina Herrera es una
fragancia de la familia olfativa Aromática
Frutal para Hombres. 212 Heroes se lanzó
en 2021. Tiene una longevidad moderada y su
estela es moderada. Es un aroma de Hombre.
''',
                imageLocion: 'assets/images/212_heroes_carolina_herrera.png',
                imageNotaSalida: 'assets/images/pera.jpg',
                textNotaSalida: 'Pera',
                imageNotaSalida2: 'assets/images/marihuana.jpg',
                textNotaSalida2: '''Marihuana
(cannabis)''',
                imageNotaSalida3: 'assets/images/jengibre.jpg',
                textNotaSalida3: 'Jengibre',
                imageCorazon: 'assets/images/geranio.jpg',
                textCorazon: 'Geranio',
                imageCorazon2: 'assets/images/salvia.jpg',
                textCorazon2: 'Salvia',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/cuero.jpg',
                textBase2: 'Cuero',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(252, 101, 72, 1),
                colorText2: Colors.black,
                text2: 'afrutados',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(130, 178, 146, 1),
                colorText3: Colors.black,
                text3: 'herbal',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(217, 103, 65, 1),
                colorText4: Colors.white70,
                text4: 'cálido especiado',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(118, 169, 106, 1),
                colorText5: Colors.white70,
                text5: 'cannabis',
                containerWidth6: 165,
                containerColor6: Color.fromRGBO(242, 109, 113, 1),
                colorText6: Colors.white70,
                text6: 'dulce',
                containerWidth7: 150,
                containerColor7: Color.fromRGBO(238, 228, 240, 1),
                colorText7: Colors.black54,
                text7: 'almizclado',
                containerWidth8: 150,
                containerColor8: Color.fromRGBO(187, 237, 242, 1),
                colorText8: Colors.black54,
                text8: 'fresco',
                containerWidth9: 140,
                containerColor9: Color.fromRGBO(175, 220, 116, 1),
                colorText9: Colors.black54,
                text9: 'fresco especiado',
                containerWidth10: 140,
                containerColor10: Color.fromRGBO(154, 222, 236, 1),
                colorText10: Colors.black54,
                text10: 'acuático',
              ),
              //TODO: 16
              AromasBuscador(
                title: '212 VIP Men - Carolina Herrera',
                description: '''
212 VIP Men de Carolina Herrera es una
fragancia de la familia olfativa Ámbar
Amaderada para Hombres. 212 VIP Men se
lanzó en 2011. Tiene una longevidad
duradera y su estela es pesada. 
Es un aroma Masculino.
''',
                imageLocion: 'assets/images/212_vip_men_carolina_herrera.png',
                imageNotaSalida: 'assets/images/maracuya.jpg',
                textNotaSalida: 'Maracuyá',
                imageNotaSalida2: 'assets/images/lima.jpg',
                textNotaSalida2: 'Lima',
                imageNotaSalida3: 'assets/images/pimienta.jpg',
                textNotaSalida3: 'Pimienta',
                imageNotaSalida4: 'assets/images/jengibre.jpg',
                textNotaSalida4: 'Jengibre',
                imageCorazon: 'assets/images/vodka.jpg',
                textCorazon: 'Vodka',
                imageCorazon2: 'assets/images/ginebra.jpg',
                textCorazon2: 'Ginebra',
                imageCorazon3: 'assets/images/menta.jpg',
                textCorazon3: 'Menta',
                imageCorazon4: 'assets/images/especias.jpg',
                textCorazon4: 'Especias',
                imageBase: 'assets/images/ambar.jpg',
                textBase: 'Ámbar',
                imageBase2: 'assets/images/cuero.jpg',
                textBase2: 'Cuero',
                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 220,
                containerColor2: Color.fromRGBO(244, 250, 248, 1),
                colorText2: Colors.black,
                text2: 'vodka',
                containerWidth3: 220,
                containerColor3: Color.fromRGBO(206, 59, 10, 1),
                colorText3: Colors.white,
                text3: 'cálido especiado',
                containerWidth4: 200,
                containerColor4: Color.fromRGBO(144, 206, 62, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 190,
                containerColor5: Color.fromRGBO(138, 94, 53, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 175,
                containerColor6: Color.fromRGBO(62, 163, 74, 1),
                colorText6: Colors.white70,
                text6: 'verde',
                containerWidth7: 170,
                containerColor7: Color.fromRGBO(248, 193, 65, 1),
                colorText7: Colors.black54,
                text7: 'tropical',
                containerWidth8: 165,
                containerColor8: Color.fromRGBO(250, 255, 126, 1),
                colorText8: Colors.black54,
                text8: 'cítrico',
                containerWidth9: 160,
                containerColor9: Color.fromRGBO(242, 109, 113, 1),
                colorText9: Colors.white60,
                text9: 'dulce',
                containerWidth10: 160,
                containerColor10: Color.fromRGBO(253, 125, 100, 1),
                colorText10: Colors.black45,
                text10: 'afrutados',
              ),
              //TODO: 17
              AromasBuscador(
                title: 'CH Men - Carolina Herrera',
                description: '''
CH Men de Carolina Herrera es una
fragancia de la familia olfativa
Ámbar Especiada para Hombres.
CH Men se lanzó en 2009. Su longevidad
y su estela son moderadas.
Es un Aroma Masculino.
''',
                imageLocion: 'assets/images/ch_carolina_herrera.webp',
                imageNotaSalida: 'assets/images/hierba.jpg',
                textNotaSalida: 'Hierba',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/toronja.jpg',
                textNotaSalida3: 'Toronja',
                imageCorazon: 'assets/images/notas_amaderadas.jpg',
                textCorazon: '''
Nota
Amaderada''',
                imageCorazon2: 'assets/images/nuez_moscada.jpg',
                textCorazon2: 'Nuez',
                imageCorazon3: 'assets/images/violeta.jpg',
                textCorazon3: 'Violeta',
                imageCorazon4: 'assets/images/azafran.jpg',
                textCorazon4: 'Azafrán',
                imageCorazon5: 'assets/images/jazmin.jpg',
                textCorazon5: 'Jazmín',
                imageBase: 'assets/images/caña_de_azucar.jpg',
                textBase: 'Azúcar',
                imageBase2: 'assets/images/cuero.jpg',
                textBase2: 'Cuero',
                imageBase3: 'assets/images/vainilla.jpg',
                textBase3: 'Vainilla',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/madera_de_cachemira.jpg',
                textBase5: '''
Madera de
Cachemira''',
                imageBase6: 'assets/images/sandalo.jpg',
                textBase6: 'Sándalo',
                imageBase7: 'assets/images/musgo_de_roble.jpg',
                textBase7: '''
Musgo de
Roble''',
                imageBase8: 'assets/images/vetiver.jpg',
                textBase8: 'Vetiver',
                containerWidth: 230,
                containerColor: Color.fromRGBO(120, 72, 58, 1),
                colorText: Colors.white,
                text: 'cuero',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(240, 77, 81, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 200,
                containerColor3: Color.fromRGBO(255, 254, 199, 1),
                colorText3: Colors.black,
                text3: 'avainillado',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(146, 105, 67, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(243, 231, 218, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(98, 180, 108, 1),
                colorText6: Colors.white70,
                text6: 'verde',
                containerWidth7: 155,
                containerColor7: Color.fromRGBO(182, 140, 104, 1),
                colorText7: Colors.white70,
                text7: 'animálico',
                containerWidth8: 150,
                containerColor8: Color.fromRGBO(177, 221, 121, 1),
                colorText8: Colors.black45,
                text8: 'fresco especiado',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(251, 255, 152, 1),
                colorText9: Colors.black45,
                text9: 'cítrico',
                containerWidth10: 145,
                containerColor10: Color.fromRGBO(195, 239, 244, 1),
                colorText10: Colors.black45,
                text10: 'fresco',
              ),
              //TODO: 18
            ],
          ),
        ),
      ],
    );
  }
}

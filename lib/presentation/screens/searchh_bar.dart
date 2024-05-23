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
  List<String> suggestions = [
    "Lociones", 
    "Camisetas", 
    "Rifas",
    "Bolsos"
  ];

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
                borderSide: const BorderSide(color: Colors.grey)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.grey)
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
/*
Para que la imagen y el texto vayan apareciendo a medida que el usuario escribe, puedes seguir utilizando el ListTile dentro de una ListView o Column. A medida que el usuario escribe, la lista de sugerencias filtradas se actualiza y las sugerencias correspondientes se muestran. Aquí tienes el código modificado para lograr esto:

dart*/


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
  ];

  final Map<String, String> suggestionImages = {
    "Yara - Lattafa": 'assets/images/yara_lattafa.jpg',
    "Ombre Nomade - Louis Vuitton": 'assets/images/ombre_nomade_louis_vuitton.webp',
    "Bade'e Al Oud Amethyst - Lattafa": 'assets/images/amethyst_lattafa.webp',
    "Oud For Greatness - Initio": 'assets/images/oud_for_greatness_initio.jpg',
    "Amber Oud - Al Haramain": 'assets/images/amber_oud_haramain.webp',
    "L' Aventure - Al Haramain": 'assets/images/l_aventure_haramain.jpg',
    "Madinah - Al Haramain": 'assets/images/madinah_haramain.jpg',
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
            .where((suggestion) => suggestion.toLowerCase().contains(searchTerm))
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
                    suggestionImages[suggestion] ?? 'assets/images/locion_4.jpg',
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
          height: _selectedIndex == 0 ? 0 : 950,
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
                    imageLocion:
                        'assets/images/ombre_nomade_louis_vuitton.webp',
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
                text9: 'balsámico'
              ),
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
            ],
          ),
        ),
      ],
    );
  }
}

  


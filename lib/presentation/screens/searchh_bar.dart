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
    "Oud For Greatness - Initio",
    "Rifas",
    "Bolsos"
  ];

  final Map<String, String> suggestionImages = {
    "Yara - Lattafa": 'assets/images/cedro.jpg',
    "Oud For Greatness - Initio": 'assets/images/mandarina.jpg',
    "Rifas": 'assets/images/manzana.jpg',
    "Bolsos": 'assets/images/jazmin.jpg',
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
        case 'Oud For Greatness - Initio':
          _selectedIndex = 2;
          break;
        case 'Rifas':
          _selectedIndex = 3;
          break;
        case 'Hola':
          _selectedIndex = 4;
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
          height: _selectedIndex == 0 ? 0 : 900,
          width: double.infinity,
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              SizedBox.shrink(),
              AromasBuscador(
                    title: 'Yara - Lattafa',
                    description: '''
Yara de Lattafa Perfumes es una fragancia de la 
Familia olfativa Ámbar Vainilla para Mujeres. 
Yara se lanzó en 2020. 
Su longevidad y su estela son moderadas. 
Es un aroma Femenino.
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
                textNotaSalida2: 'Nuez Moscada',
                imageNotaSalida3: 'assets/images/lavanda.jpg',
                textNotaSalida3: 'Lavanda',
                imageCorazon: 'assets/images/madera_de_oud.jpg',
                textCorazon: 'Madera de Oud',
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
            ],
          ),
        ),
      ],
    );
  }
}

  


/*
### Explicación:

1. **TextEditingController**: Controla el texto que el usuario ingresa.
2. **_onSearchChanged**: Filtra las sugerencias de acuerdo con lo que el usuario escribe.
3. **filteredSuggestions**: Actualiza la lista de sugerencias filtradas en tiempo real.
4. **Column y ListTile**: Muestra una lista de elementos con imágenes y textos que se actualizan dinámicamente según lo que el usuario escribe.

Cada vez que el usuario escribe algo en el campo de texto, el método _onSearchChanged actualiza la lista filteredSuggestions, que luego se utiliza para mostrar los resultados correspondientes con imágenes y textos en la interfaz.

*/
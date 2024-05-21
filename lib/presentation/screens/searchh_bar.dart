import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';


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
  
  List<String> suggestions = [
    "Lociones",
    "Camisetas",
    "Rifas",
    "Bolsos"
  ];

  Map<String, String> suggestionImages = {
    "Lociones": 'assets/images/locion_2.jpg',
    "Camisetas": 'assets/images/camisetas_1.jpg',
    "Rifas": 'assets/images/locion_10.jpg',
    "Bolsos": 'assets/images/campanilla.jpg',
  };

  List<String> filteredSuggestions = [];

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
      if (searchTerm.isNotEmpty) {
        filteredSuggestions = suggestions
            .where((suggestion) => suggestion.toLowerCase().contains(searchTerm))
            .toList();
      } else {
        filteredSuggestions = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
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
        ),
        const SizedBox(height: 10),
        if (filteredSuggestions.isNotEmpty)
          for (var suggestion in filteredSuggestions)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: Image.network(
                  suggestionImages[suggestion] ?? 'https://via.placeholder.com/50',
                  width: 50,
                  height: 50,
                ),
                title: Text(suggestion),
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
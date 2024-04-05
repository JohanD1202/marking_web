import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 270,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Busca tus favoritos',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey)
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                prefixIcon: const Icon(Icons.search_rounded),
              ),
            ),
          ),
          const SizedBox(height: 10),
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
      ),
    );
  }
}
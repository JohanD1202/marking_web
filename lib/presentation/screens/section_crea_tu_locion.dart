import 'package:marking_web/exports.dart';


class SectionCreaTuLocion extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionCreaTuLocion({Key? key}) : super(key: key);

  @override
  State<SectionCreaTuLocion> createState() => _SectionCreaTuLocionState();
}

class _SectionCreaTuLocionState extends State<SectionCreaTuLocion> {

  String? selectedOption1;
  String? selectedOption2;
  String? selectedSuggestion;
  int? selectedQuantity;
  int? selectedSuggestionQuantity;
  List<Widget> locionesCreadaList = [];
  int _elementCount = 0;

  void removeLocion(int index) {
    if (index >= 0 && index < locionesCreadaList.length) {
      setState(() {
        locionesCreadaList.removeAt(index);
      });
    }
  }

  void addLocion(String locion1, int quantity) {
    setState(() {
      locionesCreadaList.add(
        LocionCreada(
          locion1: locion1,
          quantity: quantity,
          onRemove: () => removeLocion(locionesCreadaList.length - 1),
        )
      );
      _elementCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text('Nuestras Sugerencias', style: styleText3Mobile),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 30),
                child: Suggestions(
                  onSuggestionSelected: (suggestion) {
                    setState(() {
                      selectedSuggestion = suggestion;
                    });
                  }
                ),
              ),
              const SizedBox(width: 10),
              Text('Elige la Cantidad:', style: styleText3Mobile),
              const SizedBox(width: 15),
              Cantidad(onQuantityChanged: (newValue) {
                setState(() {
                  selectedSuggestionQuantity = newValue;
                });
              }),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: ButtonTextBar(
              buttonText: 'Listo ✔',
              onPressed: () {
                if (selectedSuggestion == null || selectedSuggestionQuantity == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, selecciona una sugerencia y la Cantidad', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    ),
                  );
                } else {
                  addLocion(selectedSuggestion!, selectedSuggestionQuantity!);
               }
              },
            )
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 250),
                child: Text('''O arma tu propio Aroma!

Elige 1 Loción para comenzar:''', style: styleText3Mobile),
              ),
              Text('Luego elige tu segunda Loción:', style: styleText3Mobile)
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ListaLociones(
                  onChanged: (newValue) {
                    setState(() {
                      selectedOption1 = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(width: 20),
              Text('+', style: styleText3),
              const SizedBox(width: 20),
              ListaLociones2(
                enabled: selectedOption1 != null && selectedOption1 != "Elige 1 Loción",
                onChanged: (newValue) {
                  setState(() {
                    selectedOption2 = newValue;
                  });
                }
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text('Ahora elige la Cantidad:', style: styleText3Mobile),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Cantidad(onQuantityChanged: (newValue) {
              setState(() {
                selectedQuantity = newValue;
              });
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: ButtonTextBar(
              buttonText: 'Listo ✔',
              onPressed: () {
                if (selectedOption2 == null || selectedQuantity == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, selecciona las 2 Lociones y la Cantidad', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    ),
                  );
                } else if (selectedOption1 == selectedOption2) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No puedes elegir la misma loción 2 veces', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    )
                  );
                } else {
                setState(() {
                  if (selectedOption1 != null && selectedOption2 != null && selectedQuantity != null) {
                    locionesCreadaList.add(
                      LocionCreada(
                        locion1: selectedOption1!,
                        locion2: selectedOption2!,
                        quantity: selectedQuantity!,
                        onRemove: () => removeLocion(locionesCreadaList.length - 1),
                      ),
                    );
                    _elementCount++;
                  } 
                });
               }
              },
            )
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: locionesCreadaList,
          ),
        ],
      );
  }
}

class LocionCreada extends StatefulWidget {

  final String locion1;
  final String? locion2;
  final int quantity;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreada({
    Key? key,
    required this.locion1,
    this.locion2,
    required this.quantity,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreada> createState() => _LocionCreadaState();
}

class _LocionCreadaState extends State<LocionCreada> {
  @override
  Widget build(BuildContext context) {

    double totalPrice = 25.000 * widget.quantity;
    String nameLocion = widget.locion2 != null ? '${widget.locion1} + ${widget.locion2}' : widget.locion1;
    
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 10),
        child: LocionCreaTuLocion(
        imageLocion: 'assets/images/aroma_1.jpg',
        imageLocion2: 'assets/images/aroma_6.jpg',
        imageWidth: 230,
        imageHeight: 350,
        nameLocion: nameLocion,
        symbol: '\$',
        priceOriginal: totalPrice,
        cantidad: widget.quantity,
        onRemove: widget.onRemove,
       ),
    );
  }
}

class Suggestions extends StatefulWidget {

  final Function(String) onSuggestionSelected;

  // ignore: use_key_in_widget_constructors, use_super_parameters
  const Suggestions({
    Key? key,
    required this.onSuggestionSelected,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  String _selectedOption = "Baccarat Rouge 540 - Francis Kurkdjian + Oud For Greatness - Initio";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        "Baccarat Rouge 540 - Francis Kurkdjian + Oud For Greatness - Initio",
        "Sauvage - Dior + 1 Million Parfum - Paco Rabanne",
        "Amber Oud - Al Haramain + Arabians Tonka - Montale",
        "Intense Cafe - Montale + La Vie Est Belle - Lancôme",
        "CK One - Calvin Klein + 212 VIP Men - Carolina Herrera",
        "Light Blue - Dolce&Gabbana + Nautica Voyage - Nautica",
        "Il Femme - ILMIN + Amor Amor - Cacharel",
        "Black XS - Paco Rabbane + Toy Boy - Moschino",
        "Ombre Nomade - Louis Vuitton + Yara - Lattafa",
        "Santal 33 - Le Labo + Fahrenheit - Dior",
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: texto),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
        });
        widget.onSuggestionSelected(newValue!);
      },
    );
  }
}

//TODO: LISTA LOCIONES

class ListaLociones extends StatefulWidget {

  final Function(String) onChanged;

  // ignore: use_super_parameters
  const ListaLociones({
    Key? key,
    required this.onChanged
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListaLocionesState createState() => _ListaLocionesState();
}

class _ListaLocionesState extends State<ListaLociones> {
  String _selectedOption = "Yara - Lattafa";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
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
        "212 VIP Men Wins - Carolina Herrera",
        "1 Million Parfum - Paco Rabanne",
        "1 Million Lucky - Paco Rabanne",
        "Invictus - Paco Rabanne",
        "Black XS - Paco Rabanne",
        "Sauvage - Dior",
        "Fahrenheit - Dior",
        "CK One - Calvin Klein",
        "360° for Men - Perry Ellis",
        "Nautica Voyage - Nautica",
        "Toy Boy - Moschino",
        "Red - Lacoste",
        "L'Eau d'Issey Pour Homme Eau & Cèdre - Issey Miyake",
        "Hugo - Hugo Boss",
        "Acqua di Gio - Giorgio Armani",
        "Polo Blue - Ralph Lauren",
        "Carolina Herrera - Carolina Herrera",
        "CH (2015) - Carolina Herrera",
        "212 VIP Rosé - Carolina Herrera",
        "360° - Perry Ellis",
        "Paris Hilton - Paris Hilton",
        "Can Can - Paris Hilton",
        "Heiress - Paris Hilton",
        "Toy 2 - Moschino",
        "Amor Amor - Cacharel",
        "La Vie Est Belle - Lancôme",
        "Light Blue - Dolce&Gabbana",
        "Kim Kardashian - Kim Kardashian",
        "Angel - Mugler",
        "Halloween - Halloween",
        "CK2 - Calvin Klein",
        "Aventus - Creed",
        "Amber Rouge - Orientica",
        "D'Orsay - Ésika",
        "Bad - Diesel",
        "Diesel Plus White - Diesel",
        "Amber Oud Gold - Al Haramain",
        "King - Bharara",
        "Scandal - Jean Paul Galtier",
        "Good Girl - Carolina Herrera",
        "Aqva Pour Homme - Bvlgari",
        "Boss The Scent - Hugo Boss",
        "Velvet Gold - Orientica",
        "The Scent of Peace - Bond No 9",
        "Layton - Parfums de Marly",
        "Bad Boy - Carolina Herrera",
        "212 VIP Black Red - Carolina Herrera",
        "Le Beau - Jean Paul Galtier",
        "Arsenal - Gilles Cantuel",
        "Legend Spirit - Montblanc",
        "Valentino Born in Roma - Valentino",
        "Asad - Lattafa",
        "Bvlgari Man in Black - Bvlgari",
        "Club de Nuit Intense Man - Armaf",
        "Lacoste L.12.12 White - Lacoste",
        "Omnia Coral - Bvlgari",
        "Opulent Musk - Lattafa",
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: texto),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
          widget.onChanged(newValue);
        });
      },
    );
  }
}

class ListaLociones2 extends StatefulWidget {

  final bool enabled;
  final Function(String) onChanged;

  // ignore: use_super_parameters
  const ListaLociones2({
    Key? key,
    required this.enabled,
    required this.onChanged
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListaLociones2State createState() => _ListaLociones2State();
}

class _ListaLociones2State extends State<ListaLociones2> {
  String _selectedOption = "Yara - Lattafa";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
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
        "212 VIP Men Wins - Carolina Herrera",
        "1 Million Parfum - Paco Rabanne",
        "1 Million Lucky - Paco Rabanne",
        "Invictus - Paco Rabanne",
        "Black XS - Paco Rabanne",
        "Sauvage - Dior",
        "Fahrenheit - Dior",
        "CK One - Calvin Klein",
        "360° for Men - Perry Ellis",
        "Nautica Voyage - Nautica",
        "Toy Boy - Moschino",
        "Red - Lacoste",
        "L'Eau d'Issey Pour Homme Eau & Cèdre - Issey Miyake",
        "Hugo - Hugo Boss",
        "Acqua di Gio - Giorgio Armani",
        "Polo Blue - Ralph Lauren",
        "Carolina Herrera - Carolina Herrera",
        "CH (2015) - Carolina Herrera",
        "212 VIP Rosé - Carolina Herrera",
        "360° - Perry Ellis",
        "Paris Hilton - Paris Hilton",
        "Can Can - Paris Hilton",
        "Heiress - Paris Hilton",
        "Toy 2 - Moschino",
        "Amor Amor - Cacharel",
        "La Vie Est Belle - Lancôme",
        "Light Blue - Dolce&Gabbana",
        "Kim Kardashian - Kim Kardashian",
        "Angel - Mugler",
        "Halloween - Halloween",
        "CK2 - Calvin Klein",
        "Aventus - Creed",
        "Amber Rouge - Orientica",
        "D'Orsay - Ésika",
        "Bad - Diesel",
        "Diesel Plus White - Diesel",
        "Amber Oud Gold - Al Haramain",
        "King - Bharara",
        "Scandal - Jean Paul Galtier",
        "Good Girl - Carolina Herrera",
        "Aqva Pour Homme - Bvlgari",
        "Boss The Scent - Hugo Boss",
        "Velvet Gold - Orientica",
        "The Scent of Peace - Bond No 9",
        "Layton - Parfums de Marly",
        "Bad Boy - Carolina Herrera",
        "212 VIP Black Red - Carolina Herrera",
        "Le Beau - Jean Paul Galtier",
        "Arsenal - Gilles Cantuel",
        "Legend Spirit - Montblanc",
        "Valentino Born in Roma - Valentino",
        "Asad - Lattafa",
        "Bvlgari Man in Black - Bvlgari",
        "Club de Nuit Intense Man - Armaf",
        "Lacoste L.12.12 White - Lacoste",
        "Omnia Coral - Bvlgari",
        "Opulent Musk - Lattafa",
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: widget.enabled ? texto : texto.copyWith(color: Colors.grey[300])),
        );
      }).toList(),
      onChanged: widget.enabled? (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
          widget.onChanged(newValue);
        });
      } : null,
      disabledHint: Text(_selectedOption, style: texto.copyWith(color: Colors.grey[300])),
    );
  }
}
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
  int? selectedQuantity;
  List<Widget> locionesCreadaList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 30),
                child: const Suggestions(),
              ),
            ],
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
                    print('Selected option 1: $selectedOption1');
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
              const SizedBox(width: 10),
              IconButton(
              icon: const Icon(
                Icons.remove_circle_outline_rounded, size: 20,
              ),
              onPressed: () {
              },
            )
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
                    locionesCreadaList.add(LocionCreada(
                      locion1: selectedOption1!,
                      locion2: selectedOption2!,
                      quantity: selectedQuantity!,
                    ));
                  } 
                });
               }
              },
            )
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: IconButton(
              icon: const Icon(
                Icons.add_circle_rounded, size: 25),
              onPressed: () {
                setState(() {
                  locionesCreadaList.add(const LocionNueva());
                });
              },
            ),
          ),
          ...locionesCreadaList,
        ],
      );
  }
}
                /*
                final _context = context;
                (context as Element).markNeedsBuild();
                setState(() {
                  locionesCreadaList.remove(widget);
                });*/

                /*
                final _context = context;
                (context as Element).markNeedsBuild();
                setState(() {
                  locionesCreadaList.remove(widget);
                });*/




class LocionCreada extends StatefulWidget {

  final String locion1;
  final String locion2;
  final int quantity;

  // ignore: use_super_parameters
  const LocionCreada({
    Key? key,
    required this.locion1,
    required this.locion2,
    required this.quantity,
  }) : super(key: key);

  @override
  State<LocionCreada> createState() => _LocionCreadaState();
}

class _LocionCreadaState extends State<LocionCreada> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 10),
      child: Locion(
        imageLocion: 'assets/images/aroma_1.jpg',
        imageLocion2: 'assets/images/aroma_6.jpg',
        imageWidth: 240,
        imageHeight: 370,
        nameLocion: '${widget.locion1} + ${widget.locion2}',
        symbol: '\$',
        priceOriginal: 25.000,
        onzas: '1 fl oz'
      ),
      
      /*
      Row(
        children: [
          Text('Locion 1: ${widget.locion1}', style: styleTextLocion),
          const SizedBox(width: 10),
          Text('Locion 1: ${widget.locion2}', style: styleTextLocion),
          const SizedBox(width: 10),
          Text('Cantidad: ${widget.quantity}', style: styleTextLocion)
        ],
      ),*/
    );
  }
}


class LocionNueva extends StatefulWidget {

 
  // ignore: use_super_parameters
  const LocionNueva({
    Key? key,
  }) : super(key: key);

  @override
  State<LocionNueva> createState() => _LocionNuevaState();
}

class _LocionNuevaState extends State<LocionNueva> {

  String? selectedOption1;
  String? selectedOption2;
  int? selectedQuantity;
  List<Widget> locionesCreadaList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              },
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(
                Icons.remove_circle_outline_rounded, size: 20,
              ),
              onPressed: () {
              },
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Cantidad:', style: texto),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, bottom: 30),
              child: Cantidad(onQuantityChanged: (newValue) {
                setState(() {
                  selectedQuantity = newValue;
                });
              }),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 30),
            SizedBox(
              width: 1100,
              child: Divider(color: Colors.grey[500], thickness: 3, height: 2)
            ),
          ],
        ),
        const SizedBox(height: 10)
      ]
    );
  }
}

class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  String _selectedOption = 'Nuestras Sugerencias';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        'Nuestras Sugerencias',
        'Opción 1',
        'Opción 2',
        'Opción 3'
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
import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class SectionCreaTuLocionMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionCreaTuLocionMobile({Key? key}) : super(key: key);

  @override
  State<SectionCreaTuLocionMobile> createState() => _SectionCreaTuLocionMobileState();
}

class _SectionCreaTuLocionMobileState extends State<SectionCreaTuLocionMobile> {

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
      LocionCreadaMobile(
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
            padding: const EdgeInsets.only(left: 30),
            child: Text('Nuestras Sugerencias:', style: creaLocion),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 15),
                child: SuggestionsMobile(
                  onSuggestionSelected: (suggestion) {
                    setState(() {
                      selectedSuggestion = suggestion;
                    });
                  }
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Elige la Cantidad:', style: creaLocion),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Cantidad(onQuantityChanged: (newValue) {
              setState(() {
                selectedSuggestionQuantity = newValue;
              });
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
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
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('''O arma tu propio Aroma!

Elige 1 Loción para comenzar:''', style: creaLocion),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ListaLocionesMobile(
                  onChanged: (newValue) {
                    setState(() {
                      selectedOption1 = newValue;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Luego elige tu segunda Loción:', style: creaLocion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListaLocionesMobile2(
              enabled: selectedOption1 != null && selectedOption1 != "Elige 1 Loción",
              onChanged: (newValue) {
                setState(() {
                  selectedOption2 = newValue;
                });
              }
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Ahora elige la Cantidad:', style: creaLocion),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Cantidad(onQuantityChanged: (newValue) {
              setState(() {
                selectedQuantity = newValue;
              });
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
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
                      LocionCreadaMobile(
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
            children: locionesCreadaList,
          ),
        ],
      );
  }
}

class LocionCreadaMobile extends StatefulWidget {

  final String locion1;
  final String? locion2;
  final int quantity;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreadaMobile({
    Key? key,
    required this.locion1,
    this.locion2,
    required this.quantity,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreadaMobile> createState() => _LocionCreadaMobileState();
}

class _LocionCreadaMobileState extends State<LocionCreadaMobile> {
  @override
  Widget build(BuildContext context) {

    double totalPrice = 25.000 * widget.quantity;
    String nameLocion = widget.locion2 != null ?
    '''${widget.locion1} + 
${widget.locion2}''' : widget.locion1;
    
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
        child: LocionCreaTuLocionMobile(
        imageLocion: 'assets/images/aroma_1.jpg',
        imageLocion2: 'assets/images/aroma_6.jpg',
        imageWidth: 160,
        imageHeight: 210,
        nameLocion: nameLocion,
        symbol: '\$',
        priceOriginal: totalPrice,
        cantidad: widget.quantity,
        onRemove: widget.onRemove,
       ),
    );
  }
}

class SuggestionsMobile extends StatefulWidget {

  final Function(String) onSuggestionSelected;

  // ignore: use_super_parameters
  const SuggestionsMobile({
    Key? key,
    required this.onSuggestionSelected,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SuggestionsMobileState createState() => _SuggestionsMobileState();
}

class _SuggestionsMobileState extends State<SuggestionsMobile> {
  String _selectedOption = 
        '''Ombre Nomade - Louis Vuitton +
Yara - Lattafa''';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        '''Ombre Nomade - Louis Vuitton +
Yara - Lattafa''',
        '''Sauvage - Dior +
1 Million Parfum - Paco Rabanne''',
        '''Amber Oud - Al Haramain +
Arabians Tonka - Montale''',
        '''Intense Cafe - Montale +
La Vie Est Belle - Lancôme''',
        '''CK One - Calvin Klein +
212 VIP Men - Carolina Herrera''',
        '''Light Blue - Dolce&Gabbana
+ Nautica Voyage - Nautica''',
        '''Il Femme - ILMIN +
Amor Amor - Cacharel''',
        '''Black XS - Paco Rabbane +
Toy Boy - Moschino''',
        '''Santal 33 - Le Labo +
Fahrenheit - Dior''',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: textoMobile),
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

class ListaLocionesMobile extends StatefulWidget {

  final Function(String) onChanged;

  // ignore: use_super_parameters
  const ListaLocionesMobile({
    Key? key,
    required this.onChanged
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListaLocionesMobileState createState() => _ListaLocionesMobileState();
}

class _ListaLocionesMobileState extends State<ListaLocionesMobile> {
  String _selectedOption =
        '''Yara -
Lattafa''';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        '''Yara -
Lattafa''',
        '''Ombre Nomade -
Louis Vuitton''',
        '''Bade'e Al Oud Amethyst
- Lattafa''',
        '''Oud For Greatness
- Initio''',
        '''Amber Oud -
Al Haramain''',
        '''L' Aventure -
Al Haramain''',
        '''Madinah -
Al Haramain''',
        '''Santal 33 -
Le Labo''',
        '''Il Kakuno
- ILMIN''',
        '''Il Femme
- ILMIN''',
        '''Arabians Tonka
- Montale''',
        '''Intense Cafe
- Montale''',
        '''Baccarat Rouge 540
- Francis Kurkdjian''',
        '''Oud Saffron -
Orientica''',
        '''212 Heroes -
Carolina Herrera''',
        '''212 VIP Men -
Carolina Herrera''',
        '''CH Men -
Carolina Herrera''',
        '''212 VIP Men Wins
- Carolina Herrera''',
        '''1 Million Parfum
- Paco Rabanne''',
        '''1 Million Lucky
- Paco Rabanne''',
        '''Invictus -
Paco Rabanne''',
        '''Black XS -
Paco Rabanne''',
        '''Sauvage
- Dior''',
        '''Fahrenheit
- Dior''',
        '''CK One -
Calvin Klein''',
        '''360° for Men
- Perry Ellis''',
        '''Nautica Voyage
- Nautica''',
        '''Toy Boy -
Moschino''',
        '''Red -
Lacoste''',
        '''L'Eau d'Issey Pour Homme
Eau & Cèdre - Issey Miyake''',
        '''Hugo -
Hugo Boss''',
        '''Acqua di Gio
- Giorgio Armani''',
        '''Polo Blue -
Ralph Lauren''',
        '''Carolina Herrera
- Carolina Herrera''',
        '''CH (2015) -
Carolina Herrera''',
        '''212 VIP Rosé -
Carolina Herrera''',
        '''360° -
Perry Ellis''',
        '''Paris Hilton -
Paris Hilton''',
        '''Can Can -
Paris Hilton''',
        '''Heiress -
Paris Hilton''',
        '''Toy 2 -
Moschino''',
        '''Amor Amor
- Cacharel''',
        '''La Vie Est
Belle - Lancôme''',
        '''Light Blue
- Dolce&Gabbana''',
        '''Kim Kardashian
- Kim Kardashian''',
        '''Angel
- Mugler''',
        '''Halloween
- Halloween''',
        '''CK2 -
Calvin Klein''',
        '''Aventus
- Creed''',
        '''Amber Rouge
- Orientica''',
        '''D'Orsay
- Ésika''',
        '''Bad -
Diesel''',
        '''Diesel Plus White
- Diesel''',
        '''Amber Oud Gold
- Al Haramain''',
        '''King -
Bharara''',
        '''Scandal -
Jean Paul Galtier''',
        '''Good Girl -
Carolina Herrera''',
        '''Aqva Pour Homme
- Bvlgari''',
        '''Boss The Scent
- Hugo Boss''',
        '''Velvet Gold
- Orientica''',
        '''The Scent of Peace
- Bond No 9''',
        '''Layton -
Parfums de Marly''',
        '''Bad Boy -
Carolina Herrera''',
        '''212 VIP Black Red
- Carolina Herrera''',
        '''Le Beau -
Jean Paul Galtier''',
        '''Arsenal -
Gilles Cantuel''',
        '''Legend Spirit
- Montblanc''',
        '''Valentino Born in Roma
- Valentino''',
        '''Asad -
Lattafa''',
        '''Bvlgari Man in Black
- Bvlgari''',
        '''Club de Nuit Intense Man
- Armaf''',
        '''Lacoste L.12.12 White
- Lacoste''',
        '''Omnia Coral
- Bvlgari''',
        '''Opulent Musk
- Lattafa''',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: textoMobile),
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

class ListaLocionesMobile2 extends StatefulWidget {

  final bool enabled;
  final Function(String) onChanged;

  // ignore: use_super_parameters
  const ListaLocionesMobile2({
    Key? key,
    required this.enabled,
    required this.onChanged
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListaLocionesMobile2State createState() => _ListaLocionesMobile2State();
}

class _ListaLocionesMobile2State extends State<ListaLocionesMobile2> {
  String _selectedOption = 
        '''Yara -
Lattafa''';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        '''Yara -
Lattafa''',
        '''Ombre Nomade -
Louis Vuitton''',
        '''Bade'e Al Oud Amethyst
- Lattafa''',
        '''Oud For Greatness
- Initio''',
        '''Amber Oud -
Al Haramain''',
        '''L' Aventure -
Al Haramain''',
        '''Madinah -
Al Haramain''',
        '''Santal 33 -
Le Labo''',
        '''Il Kakuno
- ILMIN''',
        '''Il Femme
- ILMIN''',
        '''Arabians Tonka
- Montale''',
        '''Intense Cafe
- Montale''',
        '''Baccarat Rouge 540
- Francis Kurkdjian''',
        '''Oud Saffron -
Orientica''',
        '''212 Heroes -
Carolina Herrera''',
        '''212 VIP Men -
Carolina Herrera''',
        '''CH Men -
Carolina Herrera''',
        '''212 VIP Men Wins
- Carolina Herrera''',
        '''1 Million Parfum
- Paco Rabanne''',
        '''1 Million Lucky
- Paco Rabanne''',
        '''Invictus -
Paco Rabanne''',
        '''Black XS -
Paco Rabanne''',
        '''Sauvage
- Dior''',
        '''Fahrenheit
- Dior''',
        '''CK One -
Calvin Klein''',
        '''360° for Men
- Perry Ellis''',
        '''Nautica Voyage
- Nautica''',
        '''Toy Boy -
Moschino''',
        '''Red -
Lacoste''',
        '''L'Eau d'Issey Pour Homme
Eau & Cèdre - Issey Miyake''',
        '''Hugo -
Hugo Boss''',
        '''Acqua di Gio
- Giorgio Armani''',
        '''Polo Blue -
Ralph Lauren''',
        '''Carolina Herrera
- Carolina Herrera''',
        '''CH (2015) -
Carolina Herrera''',
        '''212 VIP Rosé -
Carolina Herrera''',
        '''360° -
Perry Ellis''',
        '''Paris Hilton -
Paris Hilton''',
        '''Can Can -
Paris Hilton''',
        '''Heiress -
Paris Hilton''',
        '''Toy 2 -
Moschino''',
        '''Amor Amor
- Cacharel''',
        '''La Vie Est
Belle - Lancôme''',
        '''Light Blue
- Dolce&Gabbana''',
        '''Kim Kardashian
- Kim Kardashian''',
        '''Angel
- Mugler''',
        '''Halloween
- Halloween''',
        '''CK2 -
Calvin Klein''',
        '''Aventus
- Creed''',
        '''Amber Rouge
- Orientica''',
        '''D'Orsay
- Ésika''',
        '''Bad -
Diesel''',
        '''Diesel Plus White
- Diesel''',
        '''Amber Oud Gold
- Al Haramain''',
        '''King -
Bharara''',
        '''Scandal -
Jean Paul Galtier''',
        '''Good Girl -
Carolina Herrera''',
        '''Aqva Pour Homme
- Bvlgari''',
        '''Boss The Scent
- Hugo Boss''',
        '''Velvet Gold
- Orientica''',
        '''The Scent of Peace
- Bond No 9''',
        '''Layton -
Parfums de Marly''',
        '''Bad Boy -
Carolina Herrera''',
        '''212 VIP Black Red
- Carolina Herrera''',
        '''Le Beau -
Jean Paul Galtier''',
        '''Arsenal -
Gilles Cantuel''',
        '''Legend Spirit
- Montblanc''',
        '''Valentino Born in Roma
- Valentino''',
        '''Asad -
Lattafa''',
        '''Bvlgari Man in Black
- Bvlgari''',
        '''Club de Nuit Intense Man
- Armaf''',
        '''Lacoste L.12.12 White
- Lacoste''',
        '''Omnia Coral
- Bvlgari''',
        '''Opulent Musk
- Lattafa''',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: widget.enabled ? textoMobile : textoMobile.copyWith(color: Colors.grey[300])),
        );
      }).toList(),
      onChanged: widget.enabled? (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
          widget.onChanged(newValue);
        });
      } : null,
      disabledHint: Text(_selectedOption, style: textoMobile.copyWith(color: Colors.grey[300])),
    );
  }
}
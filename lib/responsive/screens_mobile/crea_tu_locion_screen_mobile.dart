import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class CreaTuLocionMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const CreaTuLocionMobile({Key? key}) : super(key: key);

  @override
  State<CreaTuLocionMobile> createState() => _CreaTuLocionMobileState();
}

class _CreaTuLocionMobileState extends State<CreaTuLocionMobile> {

  String? selectedOption1;
  String? selectedOption2;
  String? selectedOption3;
  String? selectedOption10;
  String? selectedOption20;
  String? selectedOption30;
  String? selectedSuggestion;
  String? selectedSuggestion10;
  int? selectedQuantity;
  int? selectedQuantity10;
  int? selectedSuggestionQuantity;
  int? selectedSuggestionQuantity10;
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
  void addLocion3(String locion1, int quantity) {
    setState(() {
      locionesCreadaList.add(
        LocionCreadaMobile3(
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
                          Text('Bienvenidos a la sección de Crea Tu Loción', style: styleText3Mobile),
                          const SizedBox(height: 20),
                          Text('''
Bienvenido a nuestra innovadora sección Crea tu
Loción donde la creatividad y la personalización
se unen para ofrecerte aromas únicos y exclusivos
Aquí puedes combinar dos de nuestras lociones
para crear una fragancia que sea verdaderamente
tuya.

Cómo funciona:

Explora nuestras sugerencias: 
Utiliza nuestro menú desplegable de sugerencias
para inspirarte. Estas combinaciones
recomendadas están diseñadas por expertos para
ofrecerte mezclas armoniosas y sorprendentes.

Elige tus lociones: 
Puedes desplegar los dos menús que contienen
todas nuestras lociones disponibles y
seleccionar una loción de cada lista para
crear tu combinación personalizada.

Elige la cantidad:
Por último, elige la cantidad que deseas comprar
de tu combinación.

Añade tu creación al carrito:
Una vez que hayas seleccionado tus lociones
favoritas y la cantidad, da click en el botón de
'Listo ✔', verás un resumen con los detalles de
tu compra, solo haz clic en 'Añadir al carrito'
y tu fragancia personalizada estará lista para
ser comprada. Si no te gusta tu creación, puedes
presionar en el icono de la basura para
eliminarla. Todas tus creaciones aparecerán al
final de la sección.

Te recordamos que en esta sección todas las
lociones son de 1 fl oz. Puedes elegir tu mezcla
de 2 lociones a \$25.000 por combinación. O de 3
a \$35.000. Puedes hacer tantas combinaciones
como desees.

¡Siéntete libre de hacer tu Loción Personalizada!
''', style: textoMobile)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 5),
            child: Text('Nuestras Sugerencias con 2 Lociones:', style: creaLocion),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
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
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black,
                thickness: 2,
                height: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          //TODO: SUGERENCIAS CON 3 LOCIONES
          Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 5),
            child: Text('Nuestras Sugerencias con 3 Lociones:', style: creaLocion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Suggestions3LocionesMobile(
              onSuggestionSelected: (suggestion) {
                setState(() {
                  selectedSuggestion10 = suggestion;
                });
              },
            ),
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
                selectedSuggestionQuantity10 = newValue;
              });
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ButtonTextBar(
              buttonText: 'Listo ✔',
              onPressed: () {
                if (selectedSuggestion10 == null || selectedSuggestionQuantity == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, selecciona una sugerencia y la Cantidad', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    ),
                  );
                } else {
                  addLocion3(selectedSuggestion10!, selectedSuggestionQuantity10!);
               }
              },
            )
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black,
                thickness: 2,
                height: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('O arma tu propio Aroma!', style: creaLocion),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Elige 1 Loción para comenzar:', style: creaLocion),
          ),
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
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black,
                thickness: 2,
                height: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          //TODO:
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('Aquí puedes hacer tus combinaciones con 3 Lociones!', style: creaLocion),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 5),
            child: Text('Primera Loción:', style: creaLocion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListaLocionesMobile(
              onChanged: (newValue) {
                setState(() {
                  selectedOption10 = newValue;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 5),
            child: Text('Segunda Loción:', style: creaLocion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListaLocionesMobile2(
              enabled: selectedOption10 != null && selectedOption10 != "Elige 1 Loción",
              onChanged: (newValue) {
                setState(() {
                  selectedOption20 = newValue;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 5),
            child: Text('Tercera Loción:', style: creaLocion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListaLocionesMobile3(
              enabled: selectedOption20 != null && selectedOption20 != "Elige 1 Loción",
              onChanged: (newValue) {
                setState(() {
                  selectedOption30 = newValue;
                });
              }
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Ahora elige la Cantidad:', style: creaLocion),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Cantidad(onQuantityChanged: (newValue) {
              setState(() {
                selectedQuantity10 = newValue;
              });
            }),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ButtonTextBar(
              buttonText: 'Listo ✔',
              onPressed: () {
                if (selectedOption20 == null || selectedQuantity10 == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, selecciona las 3 Lociones y la Cantidad', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    ),
                  );
                } else if (selectedOption10 == selectedOption20) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No puedes elegir la misma loción 2 veces', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    )
                  );
                } else if (selectedOption20 == selectedOption30) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No puedes elegir la misma loción 2 veces', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    )
                  );
                } else if (selectedOption10 == selectedOption30) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No puedes elegir la misma loción 2 veces', style: snackbar),
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.black,
                    )
                  );
                } else {
                setState(() {
                  if (
                    selectedOption10 != null && 
                    selectedOption20 != null && 
                    selectedOption30 != null && 
                    selectedQuantity10 != null) {
                    locionesCreadaList.add(
                      LocionCreadaMobile3L(
                        locion1: selectedOption10!,
                        locion2: selectedOption20!,
                        locion3: selectedOption30!,
                        quantity: selectedQuantity10!,
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
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: SizedBox(
              width: 1200,
              child: Divider(
                color: Colors.black,
                thickness: 2.5,
                height: 2.5,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            children: locionesCreadaList,
          ),
        ],
      )
            ],
          ),
        ),
      ),
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
    '${widget.locion1} + ${widget.locion2}' : widget.locion1;
    
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

//TODO:

class LocionCreadaMobile3 extends StatefulWidget {

  final String locion1;
  final String? locion2;
  final int quantity;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreadaMobile3({
    Key? key,
    required this.locion1,
    this.locion2,
    required this.quantity,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreadaMobile3> createState() => _LocionCreadaMobile3State();
}

class _LocionCreadaMobile3State extends State<LocionCreadaMobile3> {
  @override
  Widget build(BuildContext context) {

    double totalPrice = 36.000 * widget.quantity;
    String nameLocion = widget.locion2 != null ?
    '${widget.locion1} + ${widget.locion2}' : widget.locion1;
    
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

//TODO:

class LocionCreadaMobile3L extends StatefulWidget {

  final String locion1;
  final String? locion2;
  final String? locion3;
  final int quantity;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreadaMobile3L({
    Key? key,
    required this.locion1,
    this.locion2,
    this.locion3,
    required this.quantity,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreadaMobile3L> createState() => _LocionCreadaMobile3LState();
}

class _LocionCreadaMobile3LState extends State<LocionCreadaMobile3L> {
  @override
  Widget build(BuildContext context) {

    double totalPrice = 36.000 * widget.quantity;
    String nameLocion = widget.locion2 != null ?
    '${widget.locion1} + ${widget.locion2} + ${widget.locion3}' : widget.locion1;
    
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
        child: LocionCreaTuLocionMobile3(
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

//TODO:

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
  String _selectedOption = "Ombre Nomade - Louis Vuitton + Yara - Lattafa";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        "Ombre Nomade - Louis Vuitton + Yara - Lattafa",
        "Sauvage - Dior + 1 Million Parfum - Paco Rabanne",
        "Amber Oud - Al Haramain + Arabians Tonka - Montale",
        "Intense Cafe - Montale + La Vie Est Belle - Lancôme",
        "Il Femme - ILMIN + Amor Amor - Cacharel",
        "Black XS - Paco Rabbane + Toy Boy - Moschino",
        "Olympea - Paco Rabbane + Good Girl Suprême",
        "Phantom - Paco Rabbane + Invictus - Paco Rabbane",
        "Santal 33 - Le Labo + Fahrenheit - Dior",
        "Club de Nuit Intense Man - Armaf + Il Femme - ILMIN",
        "Il Femme - ILMIN + Ombre Leather - Tom Ford",
        '''CK One - Calvin Klein + 212 VIP Men - Carolina
Herrera''',
        '''Light Blue - Dolce&Gabbana + Nautica Voyage
- Nautica''',
        '''Good Girl Suprême - Carolina Herrera + Light Blue
- Dolce&Gabbana''',
        '''Baccarat Rouge 540 - Francis Kurkdjian + Oud For
Greatness - Initio''',
        '''Bad Boy - Carolina Herrera + Black XS
L'Aphrodisiaque for Men - Paco Rabbane''',
        '''Eternity - Calvin Klein + 1 Million Parfum -
Paco Rabbane''',
        '''Club de Nuit Intense Man - Armaf + 1 Million
Parfum - Paco Rabbane''',
        '''Good Girl - Carolina Herrera + La Vie Est Belle
- Lancôme''',
        '''Club de Nuit Intense Man - Armaf + Amber Oud
- Al Haramain''',
        '''Santal 33 - Le Labo + L'Eau d'Issey Pour Homme
- Issey Miyake''',
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

//TODO: SUGGESTIONS 3 LOCIONES

class Suggestions3LocionesMobile extends StatefulWidget {

  final Function(String) onSuggestionSelected;

  // ignore: use_key_in_widget_constructors, use_super_parameters
  const Suggestions3LocionesMobile({
    Key? key,
    required this.onSuggestionSelected,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Suggestions3LocionesMobileState createState() => _Suggestions3LocionesMobileState();
}

class _Suggestions3LocionesMobileState extends State<Suggestions3LocionesMobile> {
  String _selectedOption = "Guess Gold + Guess Pink + 9 PM - Afnan";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        "Guess Gold + Guess Pink + 9 PM - Afnan",
        '''Acqua di Gio - Giorgio Armani + Emporio
Armani White + Armani Code''',
        '''Baccarat Rouge 540 + Aventus Creed
+ Noir Tom Ford''',
        '''Classique - Jean Paul Galtier + Ange ou
Demon - Givenchy + Sorbetto Roso - Escada''',
        '''Nautica Voyage - Nautica + Acqua di
Gio Profumo + Ombre Leather Tom Ford''',
        '''Olympea + Good Girl - Carolina Herrera
+ Eros - Versace''',
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
  String _selectedOption = 'Yara - Lattafa';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        'Yara - Lattafa',
        'Ombre Nomade - Louis Vuitton',
        'Bade\'e Al Oud Amethyst - Lattafa',
        'Oud For Greatness - Initio',
        'Amber Oud - Al Haramain',
        'L\' Aventure - Al Haramain',
        'Madinah - Al Haramain',
        'Santal 33 - Le Labo',
        'Il Kakuno - ILMIN',
        'Il Femme - ILMIN',
        'Arabians Tonka - Montale',
        'Intense Cafe - Montale',
        'Baccarat Rouge 540 - Francis Kurkdjian',
        'Oud Saffron - Orientica',
        '212 Heroes - Carolina Herrera',
        '212 VIP Men - Carolina Herrera',
        'CH Men - Carolina Herrera',
        '212 VIP Men Wins - Carolina Herrera',
        '1 Million Parfum - Paco Rabanne',
        '1 Million Lucky - Paco Rabanne',
        'Invictus - Paco Rabanne',
        'Black XS - Paco Rabanne',
        'Sauvage - Dior',
        'Fahrenheit - Dior',
        'CK One - Calvin Klein',
        '360° for Men - Perry Ellis',
        'Nautica Voyage - Nautica',
        'Toy Boy - Moschino',
        'Red - Lacoste',
        'L\'Eau d\'Issey Pour Homme - Issey Miyake',
        'Hugo - Hugo Boss',
        'Acqua di Gio - Giorgio Armani',
        'Polo Blue - Ralph Lauren',
        'Carolina Herrera - Carolina Herrera',
        'CH (2015) - Carolina Herrera',
        '212 VIP Rosé - Carolina Herrera',
        '360° - Perry Ellis',
        'Paris Hilton - Paris Hilton',
        'Can Can - Paris Hilton',
        'Heiress - Paris Hilton',
        'Toy 2 - Moschino',
        'Amor Amor - Cacharel',
        'La Vie Est Belle - Lancôme',
        'Light Blue - Dolce&Gabbana',
        'Kim Kardashian - Kim Kardashian',
        'Angel - Mugler',
        'Halloween - Halloween',
        'CK2 - Calvin Klein',
        'Aventus - Creed',
        'Amber Rouge - Orientica',
        'D\'Orsay - Ésika',
        'Bad - Diesel',
        'Diesel Plus White - Diesel',
        'Amber Oud Gold - Al Haramain',
        'King - Bharara',
        'Scandal - Jean Paul Galtier',
        'Good Girl - Carolina Herrera',
        'Aqva Pour Homme - Bvlgari',
        'Boss The Scent - Hugo Boss',
        'Velvet Gold - Orientica',
        'The Scent of Peace - Bond No 9',
        'Layton - Parfums de Marly',
        'Bad Boy - Carolina Herrera',
        '212 VIP Black Red - Carolina Herrera',
        'Le Beau - Jean Paul Galtier',
        'Arsenal - Gilles Cantuel',
        'Legend Spirit - Montblanc',
        'Valentino Born in Roma - Valentino',
        'Asad - Lattafa',
        'Bvlgari Man in Black - Bvlgari',
        'Club de Nuit Intense Man - Armaf',
        'Lacoste L.12.12 White - Lacoste',
        'Omnia Coral - Bvlgari',
        'Opulent Musk - Lattafa',
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
  String _selectedOption = 'Yara - Lattafa';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        'Yara - Lattafa',
        'Ombre Nomade - Louis Vuitton',
        'Bade\'e Al Oud Amethyst - Lattafa',
        'Oud For Greatness - Initio',
        'Amber Oud - Al Haramain',
        'L\' Aventure - Al Haramain',
        'Madinah - Al Haramain',
        'Santal 33 - Le Labo',
        'Il Kakuno - ILMIN',
        'Il Femme - ILMIN',
        'Arabians Tonka - Montale',
        'Intense Cafe - Montale',
        'Baccarat Rouge 540 - Francis Kurkdjian',
        'Oud Saffron - Orientica',
        '212 Heroes - Carolina Herrera',
        '212 VIP Men - Carolina Herrera',
        'CH Men - Carolina Herrera',
        '212 VIP Men Wins - Carolina Herrera',
        '1 Million Parfum - Paco Rabanne',
        '1 Million Lucky - Paco Rabanne',
        'Invictus - Paco Rabanne',
        'Black XS - Paco Rabanne',
        'Sauvage - Dior',
        'Fahrenheit - Dior',
        'CK One - Calvin Klein',
        '360° for Men - Perry Ellis',
        'Nautica Voyage - Nautica',
        'Toy Boy - Moschino',
        'Red - Lacoste',
        'L\'Eau d\'Issey Pour Homme - Issey Miyake',
        'Hugo - Hugo Boss',
        'Acqua di Gio - Giorgio Armani',
        'Polo Blue - Ralph Lauren',
        'Carolina Herrera - Carolina Herrera',
        'CH (2015) - Carolina Herrera',
        '212 VIP Rosé - Carolina Herrera',
        '360° - Perry Ellis',
        'Paris Hilton - Paris Hilton',
        'Can Can - Paris Hilton',
        'Heiress - Paris Hilton',
        'Toy 2 - Moschino',
        'Amor Amor - Cacharel',
        'La Vie Est Belle - Lancôme',
        'Light Blue - Dolce&Gabbana',
        'Kim Kardashian - Kim Kardashian',
        'Angel - Mugler',
        'Halloween - Halloween',
        'CK2 - Calvin Klein',
        'Aventus - Creed',
        'Amber Rouge - Orientica',
        'D\'Orsay - Ésika',
        'Bad - Diesel',
        'Diesel Plus White - Diesel',
        'Amber Oud Gold - Al Haramain',
        'King - Bharara',
        'Scandal - Jean Paul Galtier',
        'Good Girl - Carolina Herrera',
        'Aqva Pour Homme - Bvlgari',
        'Boss The Scent - Hugo Boss',
        'Velvet Gold - Orientica',
        'The Scent of Peace - Bond No 9',
        'Layton - Parfums de Marly',
        'Bad Boy - Carolina Herrera',
        '212 VIP Black Red - Carolina Herrera',
        'Le Beau - Jean Paul Galtier',
        'Arsenal - Gilles Cantuel',
        'Legend Spirit - Montblanc',
        'Valentino Born in Roma - Valentino',
        'Asad - Lattafa',
        'Bvlgari Man in Black - Bvlgari',
        'Club de Nuit Intense Man - Armaf',
        'Lacoste L.12.12 White - Lacoste',
        'Omnia Coral - Bvlgari',
        'Opulent Musk - Lattafa',
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

class ListaLocionesMobile3 extends StatefulWidget {

  final bool enabled;
  final Function(String) onChanged;

  // ignore: use_super_parameters
  const ListaLocionesMobile3({
    Key? key,
    required this.enabled,
    required this.onChanged
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListaLocionesMobile3State createState() => _ListaLocionesMobile3State();
}

class _ListaLocionesMobile3State extends State<ListaLocionesMobile3> {
  String _selectedOption = 'Yara - Lattafa';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        'Yara - Lattafa',
        'Ombre Nomade - Louis Vuitton',
        'Bade\'e Al Oud Amethyst - Lattafa',
        'Oud For Greatness - Initio',
        'Amber Oud - Al Haramain',
        'L\' Aventure - Al Haramain',
        'Madinah - Al Haramain',
        'Santal 33 - Le Labo',
        'Il Kakuno - ILMIN',
        'Il Femme - ILMIN',
        'Arabians Tonka - Montale',
        'Intense Cafe - Montale',
        'Baccarat Rouge 540 - Francis Kurkdjian',
        'Oud Saffron - Orientica',
        '212 Heroes - Carolina Herrera',
        '212 VIP Men - Carolina Herrera',
        'CH Men - Carolina Herrera',
        '212 VIP Men Wins - Carolina Herrera',
        '1 Million Parfum - Paco Rabanne',
        '1 Million Lucky - Paco Rabanne',
        'Invictus - Paco Rabanne',
        'Black XS - Paco Rabanne',
        'Sauvage - Dior',
        'Fahrenheit - Dior',
        'CK One - Calvin Klein',
        '360° for Men - Perry Ellis',
        'Nautica Voyage - Nautica',
        'Toy Boy - Moschino',
        'Red - Lacoste',
        'L\'Eau d\'Issey Pour Homme - Issey Miyake',
        'Hugo - Hugo Boss',
        'Acqua di Gio - Giorgio Armani',
        'Polo Blue - Ralph Lauren',
        'Carolina Herrera - Carolina Herrera',
        'CH (2015) - Carolina Herrera',
        '212 VIP Rosé - Carolina Herrera',
        '360° - Perry Ellis',
        'Paris Hilton - Paris Hilton',
        'Can Can - Paris Hilton',
        'Heiress - Paris Hilton',
        'Toy 2 - Moschino',
        'Amor Amor - Cacharel',
        'La Vie Est Belle - Lancôme',
        'Light Blue - Dolce&Gabbana',
        'Kim Kardashian - Kim Kardashian',
        'Angel - Mugler',
        'Halloween - Halloween',
        'CK2 - Calvin Klein',
        'Aventus - Creed',
        'Amber Rouge - Orientica',
        'D\'Orsay - Ésika',
        'Bad - Diesel',
        'Diesel Plus White - Diesel',
        'Amber Oud Gold - Al Haramain',
        'King - Bharara',
        'Scandal - Jean Paul Galtier',
        'Good Girl - Carolina Herrera',
        'Aqva Pour Homme - Bvlgari',
        'Boss The Scent - Hugo Boss',
        'Velvet Gold - Orientica',
        'The Scent of Peace - Bond No 9',
        'Layton - Parfums de Marly',
        'Bad Boy - Carolina Herrera',
        '212 VIP Black Red - Carolina Herrera',
        'Le Beau - Jean Paul Galtier',
        'Arsenal - Gilles Cantuel',
        'Legend Spirit - Montblanc',
        'Valentino Born in Roma - Valentino',
        'Asad - Lattafa',
        'Bvlgari Man in Black - Bvlgari',
        'Club de Nuit Intense Man - Armaf',
        'Lacoste L.12.12 White - Lacoste',
        'Omnia Coral - Bvlgari',
        'Opulent Musk - Lattafa',
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
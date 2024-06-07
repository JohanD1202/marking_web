import 'package:marking_web/exports.dart';


class SectionCreaTuLocion extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionCreaTuLocion({Key? key}) : super(key: key);

  @override
  State<SectionCreaTuLocion> createState() => _SectionCreaTuLocionState();
}

class _SectionCreaTuLocionState extends State<SectionCreaTuLocion> {
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
              padding: const EdgeInsets.only(left: 60, right: 30),
              child: const ListaLociones(),
            ),
            const ListaLociones2(),
          ],
        )
      ],
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
  String _selectedOption = 'Sugerencias';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        'Sugerencias',
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

class ListaLociones extends StatefulWidget {
  const ListaLociones({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListaLocionesState createState() => _ListaLocionesState();
}

class _ListaLocionesState extends State<ListaLociones> {
  String _selectedOption = "Elige 1 Loción";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        "Elige 1 Loción",
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
        });
      },
    );
  }
}

class ListaLociones2 extends StatefulWidget {
  const ListaLociones2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListaLociones2State createState() => _ListaLociones2State();
}

class _ListaLociones2State extends State<ListaLociones2> {
  String _selectedOption = "Elige 1 Loción";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      items: <String>[
        "Elige 1 Loción",
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
        });
      },
    );
  }
}
import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/guia_de_aromas.dart';


class SearchhBar extends StatefulWidget {
  // ignore: use_super_parameters
  const SearchhBar({Key? key}) : super(key: key);

  @override
  State<SearchhBar> createState() => _SearchhBarState();
}

class _SearchhBarState extends State<SearchhBar> {
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
    "Amber Rouge - Orientica",
    "Amber Oud Gold - Al Haramain",
    "King - Bharara",
    "Corvus - Ahli",
    "Velvet Gold - Orientica",
    "Asad - Lattafa",
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
    "L'Eau d'Issey Pour Homme - Issey Miyake",
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
  ];

  final Map<String, String> suggestionImages = {
    "Yara - Lattafa": 'assets/images/yara_lattafa.jpg',
    "Ombre Nomade - Louis Vuitton":
        'assets/images/ombre_nomade_louis_vuitton.webp',
    "Bade'e Al Oud Amethyst - Lattafa": 'assets/images/amethyst_lattafa.webp',
    "Oud For Greatness - Initio": 'assets/images/oud_for_greatness_initio.jpg',
    "Amber Oud - Al Haramain": 'assets/images/amber_oud_haramain.jpg',
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
    "Amber Rouge - Orientica": 'assets/images/amber_rouge_orientica.jpg',
    "Amber Oud Gold - Al Haramain": 'assets/images/amber_oud_gold_haramain.webp',
    "King - Bharara": 'assets/images/king_bharara.jpg',
    "Corvus - Ahli": 'assets/images/corvus_ahli.jpg',
    "Velvet Gold - Orientica": 'assets/images/velvet_gold_orientica.jpg',
    "Asad - Lattafa": 'assets/images/asad_lattafa.jpg',
    "212 Heroes - Carolina Herrera":
        'assets/images/212_heroes_carolina_herrera.png',
    "212 VIP Men - Carolina Herrera":
        'assets/images/212_vip_men_carolina_herrera.png',
    "CH Men - Carolina Herrera": 'assets/images/ch_carolina_herrera.webp',
    "212 VIP Men Wins - Carolina Herrera":
        'assets/images/212_vip_wins_carolina_herrera.jpeg',
    "1 Million Parfum - Paco Rabanne":
        'assets/images/1_million_paco_rabanne.webp',
    "1 Million Lucky - Paco Rabanne":
        'assets/images/1_million_lucky_paco_rabanne.jpeg',
    "Invictus - Paco Rabanne": 'assets/images/invictus_paco_rabanne.jpg',
    "Black XS - Paco Rabanne": 'assets/images/black_xs_paco_rabanne.webp',
    "Sauvage - Dior": 'assets/images/sauvage_dior.jpg',
    "Fahrenheit - Dior": 'assets/images/fahrenheit_dior.jpeg',
    "CK One - Calvin Klein": 'assets/images/ck_one_calvin_klein.jpeg',
    "360° for Men - Perry Ellis": 'assets/images/360_for_men_perry_ellis.jpg',
    "Nautica Voyage - Nautica": 'assets/images/nautica_voyage_nautica.jpg',
    "Toy Boy - Moschino": 'assets/images/toy_boy_moschino.webp',
    "Red - Lacoste": 'assets/images/red_lacoste.webp',
    "L'Eau d'Issey Pour Homme - Issey Miyake":
        'assets/images/leau_dissey_pour_homme_issey_miyake.webp',
    "Hugo - Hugo Boss": 'assets/images/hugo_hugo_boss.webp',
    "Acqua di Gio - Giorgio Armani":
        'assets/images/acqua_di_gio_giorgio_armani.webp',
    "Polo Blue - Ralph Lauren": 'assets/images/polo_blue_ralph_lauren.jpg',
    "Carolina Herrera - Carolina Herrera":
        'assets/images/carolina_herrera_carolina_herrera.jpg',
    "CH (2015) - Carolina Herrera":
        'assets/images/ch_2015_carolina_herrera.jpg',
    "212 VIP Rosé - Carolina Herrera":
        'assets/images/212_vip_rose_carolina_herrera.jpg',
    "360° - Perry Ellis": 'assets/images/360_perry_ellis.jpg',
    "Paris Hilton - Paris Hilton":
        'assets/images/paris_hilton_paris_hilton.jpg',
    "Can Can - Paris Hilton": 'assets/images/can_can_paris_hilton.webp',
    "Heiress - Paris Hilton": 'assets/images/heiress_paris_hilton.jpg',
    "Toy 2 - Moschino": 'assets/images/toy_2_moschino.jpg',
    "Amor Amor - Cacharel": 'assets/images/amor_amor_cacharel.webp',
    "La Vie Est Belle - Lancôme": 'assets/images/la_vie_est_belle_lancome.jpg',
    "Light Blue - Dolce&Gabbana": 'assets/images/light_blue_dolce_gabbana.jpg',
    "Kim Kardashian - Kim Kardashian":
        'assets/images/kim_kardashian_kim_kardashian.jpg',
    "Angel - Mugler": 'assets/images/angel_mugler.webp',
    "Halloween - Halloween": 'assets/images/halloween_halloween.jpg',
    "CK2 - Calvin Klein": 'assets/images/ck2_calvin_klein.webp',
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
        case 'Amber Rouge - Orientica':
          _selectedIndex = 15;
          break;
        case 'Amber Oud Gold - Al Haramain':
          _selectedIndex = 16;
          break;
        case 'King - Bharara':
          _selectedIndex = 17;
          break;
        case 'Corvus - Ahli':
          _selectedIndex = 18;
          break;
        case 'Velvet Gold - Orientica':
          _selectedIndex = 19;
          break;
        case 'Asad - Lattafa':
          _selectedIndex = 20;
          break;
        case '212 Heroes - Carolina Herrera':
          _selectedIndex = 21;
          break;
        case '212 VIP Men - Carolina Herrera':
          _selectedIndex = 22;
          break;
        case 'CH Men - Carolina Herrera':
          _selectedIndex = 23;
          break;
        case '212 VIP Men Wins - Carolina Herrera':
          _selectedIndex = 24;
          break;
        case '1 Million Parfum - Paco Rabanne':
          _selectedIndex = 25;
          break;
        case '1 Million Lucky - Paco Rabanne':
          _selectedIndex = 26;
          break;
        case 'Invictus - Paco Rabanne':
          _selectedIndex = 27;
          break;
        case 'Black XS - Paco Rabanne':
          _selectedIndex = 28;
          break;
        case 'Sauvage - Dior':
          _selectedIndex = 29;
          break;
        case 'Fahrenheit - Dior':
          _selectedIndex = 30;
          break;
        case 'CK One - Calvin Klein':
          _selectedIndex = 31;
          break;
        case '360° for Men - Perry Ellis':
          _selectedIndex = 32;
          break;
        case 'Nautica Voyage - Nautica':
          _selectedIndex = 33;
          break;
        case 'Toy Boy - Moschino':
          _selectedIndex = 34;
          break;
        case 'Red - Lacoste':
          _selectedIndex = 35;
          break;
        case 'L\'Eau d\'Issey Pour Homme - Issey Miyake':
          _selectedIndex = 36;
          break;
        case 'Hugo - Hugo Boss':
          _selectedIndex = 37;
          break;
        case 'Acqua di Gio - Giorgio Armani':
          _selectedIndex = 38;
          break;
        case 'Polo Blue - Ralph Lauren':
          _selectedIndex = 39;
          break;
        case 'Carolina Herrera - Carolina Herrera':
          _selectedIndex = 40;
          break;
        case 'CH (2015) - Carolina Herrera':
          _selectedIndex = 41;
          break;
        case '212 VIP Rosé - Carolina Herrera':
          _selectedIndex = 42;
          break;
        case '360° - Perry Ellis':
          _selectedIndex = 43;
          break;
        case 'Paris Hilton - Paris Hilton':
          _selectedIndex = 44;
          break;
        case 'Can Can - Paris Hilton':
          _selectedIndex = 45;
          break;
        case 'Heiress - Paris Hilton':
          _selectedIndex = 46;
          break;
        case 'Toy 2 - Moschino':
          _selectedIndex = 47;
          break;
        case 'Amor Amor - Cacharel':
          _selectedIndex = 48;
          break;
        case 'La Vie Est Belle - Lancôme':
          _selectedIndex = 49;
          break;
        case 'Light Blue - Dolce&Gabbana':
          _selectedIndex = 50;
          break;
        case 'Kim Kardashian - Kim Kardashian':
          _selectedIndex = 51;
          break;
        case 'Angel - Mugler':
          _selectedIndex = 52;
          break;
        case 'Halloween - Halloween':
          _selectedIndex = 53;
          break;
        case 'CK2 - Calvin Klein':
          _selectedIndex = 54;
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          width: 500,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Busca tu aroma favorito',
              hintStyle: hint,
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
            height: 150,
            child: ListView.builder(
              itemCount: filteredSuggestions.length,
              itemBuilder: (context, index) {
                final suggestion = filteredSuggestions[index];
                return ListTile(
                  leading: Image.network(
                    suggestionImages[suggestion] ??
                        '',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(suggestion),
                  onTap: () => _navigateToWidget(suggestion),
                );
              },
            ),
          ),
        SizedBox(
          height: _selectedIndex == 0 ? 0 : 1300,
          width: double.infinity,
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              //TODO: 0
              SizedBox.shrink(),
              //TODO: 1
              BuscadorAromas(
                title: 'Yara - Lattafa',
                description: '''
Yara de Lattafa Perfumes es una fragancia de la familia olfativa Ámbar Vainilla para Mujeres. Yara se lanzó en 2020.
Su longevidad y su estela son moderadas. Es un aroma Femenino.
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
              AromasBuscador2000(
                title: 'Ombre Nomade - Louis Vuitton',
                description: '''
Ombre Nomade de Louis Vuitton es una fragancia de la familia olfativa Ámbar Amaderada para Hombres. Ombre Nomade se
lanzó en 2018. Tiene una longevidad muy duradera y su estela es enorme. Es un aroma Masculino.
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
              BuscadorAromas(
                title: 'Bade\'e Al Oud Amethyst - Lattafa',
                description: '''
Bade'e Al Oud Amethyst de Lattafa Perfumes es una fragancia de la familia olfativa Ámbar Vainilla para Hombres y Mujeres.
Bade'e Al Oud Amethyst se lanzó en 2021. Tiene una longevidad duradera y su estela es pesada. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Oud For Greatness - Initio',
                description: '''
Oud for Greatness de Initio Parfums Prives es una fragancia de la familia olfativa para Hombres y Mujeres. Oud for
Greatness se lanzó en 2018. Tiene una longevidad muy duradera y su estela es pesada. Es un aroma Unisex.
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
              BuscadorAromas(
                  title: 'Amber Oud - Al Haramain',
                  description: '''
Amber Oud de Al Haramain Perfumes es una fragancia de la familia olfativa Ámbar amaderada para Hombres y Mujeres.
Amber Oud se lanzó en 2018. Tiene una longevidad duradera y su estela es pesada. Es un aroma Unisex.
''',
                  imageLocion: 'assets/images/amber_oud_haramain.jpg',
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
              BuscadorAromas(
                title: 'L\' Aventure - Al Haramain',
                description: '''
L' Aventure de Al Haramain Perfumes es una fragancia de la familia olfativa Chipre Frutal para Hombres. L' Aventure
se lanzó en 2016. Tiene una longevidad duradera y su estela es moderada. Es un aroma Masculino (Tiene su versión
femenina) L' Aventure femme.
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
              BuscadorAromas(
                title: 'Madinah - Al Haramain',
                description: '''
Madinah de Al Haramain Perfumes es una fragancia de la familia olfativa Ámbar Floral para Hombres y Mujeres.
Tiene una longevidad duradera y su estela es moderada. Es un aroma Unisex.
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
              AromasBuscador2000(
                title: 'Santal 33 - Le Labo',
                description: '''
Santal 33 de Le Labo es una fragancia de la familia olfativa Amaderada Aromática para Hombres y Mujeres. Santal 33
se lanzó en 2011. Tiene una longevidad duradera y su estela es de moderada a pesada. Es un aroma Unisex.
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
Il Kakuno de ILMIN Parfums es una fragancia de la familia olfativa para Hombres y Mujeres. Il Kakuno se lanzó en 2018.
Tiene una longevidad moderada y su estela es moderada. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Il Femme - ILMIN',
                description: '''
Il Femme de ILMIN Parfums es una fragancia de la familia olfativa Ámbar Amaderada para Hombres y Mujeres. Il Femme
se lanzó en 2018. Su longevidad es muy duradera y su estela es moderada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/il_femme_ilmin.jpg',
                imageNotaSalida: 'assets/images/maracuya.jpg',
                textNotaSalida: 'Maracuyá',
                imageNotaSalida2: 'assets/images/rosa.jpg',
                textNotaSalida2: 'Rosa',
                imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                textNotaSalida3: '''Nuez
Moscada''',
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
              BuscadorAromas(
                title: 'Arabians Tonka - Montale',
                description: '''
Arabians Tonka de Montale es una fragancia de la familia olfativa Ámbar Amaderada para Hombres y Mujeres. Arabians
Tonka se lanzó en 2019. Tiene una longevidad muy duradera y su estela es enorme. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Intense Cafe - Montale',
                description: '''
Intense Cafe de Montale es una fragancia de la familia olfativa Ámbar Vainilla para Hombres y Mujeres. Intense
Cafe se lanzó en 2013. Tiene una longevidad duradera y su estela es pesada. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Baccarat Rouge 540 - Francis Kurkdjian',
                description: '''
Baccarat Rouge 540 de Maison Francis Kurkdjian es una fragancia de la familia olfativa Ámbar Floral para Hombres y Mujeres.
Baccarat Rouge 540 se lanzó en 2015. Su longevidad es muy duradera y su estela es pesada. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Oud Saffron - Orientica',
                description: '''
Oud Saffron de Orientica Premium es una fragancia de la familia olfativa Amaderada Especiada para Hombres y Mujeres.
Oud Saffron se lanzó en 2021. Su longevidad es muy duradera y su estela es pesada. Es un aroma Unisex.
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
              BuscadorAromas(
                title: 'Amber Rouge - Orientica',
                description: '''
Amber Rouge de Orientica Premium es una fragancia de la familia olfativa Amaderada Especiada para Hombres y Mujeres.
Amber Rouge se lanzó en 2021.  Su longevidad es duradera y su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/amber_rouge_orientica.jpg',

                imageNotaSalida: 'assets/images/azafran.jpg',
                textNotaSalida: 'Azafrán',

                imageNotaSalida2: 'assets/images/jazmin.jpg',
                textNotaSalida2: 'Jazmín',

                imageCorazon: 'assets/images/amberwood.jpg',
                textCorazon: 'Amberwood',

                imageCorazon2: 'assets/images/ambar_gris.jpg',
                textCorazon2: '''Ámbar
Gris''',

                imageBase: 'assets/images/cedro.jpg',
                textBase: 'Cedro',

                imageBase2: 'assets/images/resina_de_abeto.jpg',
                textBase2: '''Resina
de Abeto''',

                containerWidth: 230,
                containerColor: Color.fromRGBO(188, 77, 16, 1),
                colorText: Colors.white,
                text: 'ámbar',

                containerWidth2: 220,
                containerColor2: Color.fromRGBO(126, 78, 32, 1),
                colorText2: Colors.white,
                text2: 'amaderado',

                containerWidth3: 180,
                containerColor3: Color.fromRGBO(213, 87, 45, 1),
                colorText3: Colors.white,
                text3: 'cálido especiado',

                containerWidth4: 130,
                containerColor4: Color.fromRGBO(193, 208, 212, 1),
                colorText4: Colors.black54,
                text4: 'metálico',

                containerWidth5: 128,
                containerColor5: Color.fromRGBO(244, 247, 252, 1),
                colorText5: Colors.black54,
                text5: 'floral blanco',

                containerWidth6: 128,
                containerColor6: Color.fromRGBO(189, 151, 119, 1),
                colorText6: Colors.white70,
                text6: 'animálico',

                containerWidth7: 123,
                containerColor7: Color.fromRGBO(180, 153, 146, 1),
                colorText7: Colors.white70,
                text7: 'cuero',
              ),
              //TODO: 16
              BuscadorAromas(
                title: 'Amber Oud Gold - Al Haramain',
                description: '''
Amber Oud Gold de Al Haramain Perfumes es una fragancia de la familia olfativa Ámbar Vainilla para Hombres y Mujeres.
Amber Oud Gold se lanzó en 2018. Su longevidad es muy duradera y su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/amber_oud_gold_haramain.webp',

                imageNotaSalida: 'assets/images/bergamota.jpg',
                textNotaSalida: 'Bergamota',

                imageNotaSalida2: 'assets/images/notas_verdes.jpg',
                textNotaSalida2: '''Notas
Verdes''',

                imageCorazon: 'assets/images/notas_dulces.jpg',
                textCorazon: '''Notas
Dulces''',

                imageCorazon2: 'assets/images/melon.jpg',
                textCorazon2: 'Melón',

                imageCorazon3: 'assets/images/piña.jpg',
                textCorazon3: 'Piña',

                imageCorazon4: 'assets/images/ambar.jpg',
                textCorazon4: 'Ámbar',

                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',

                imageBase2: 'assets/images/vainilla.jpg',
                textBase2: 'Vainilla',

                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Notas
Amaderadas''',

                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',

                containerWidth2: 150,
                containerColor2: Color.fromRGBO(253, 130, 106, 1),
                colorText2: Colors.black87,
                text2: 'afrutados',

                containerWidth3: 135,
                containerColor3: Color.fromRGBO(222, 253, 252, 1),
                colorText3: Colors.black54,
                text3: 'ozónico',

                containerWidth4: 133,
                containerColor4: Color.fromRGBO(241, 232, 242, 1),
                colorText4: Colors.black54,
                text4: 'almizclado',

                containerWidth5: 133,
                containerColor5: Color.fromRGBO(245, 235, 225, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',

                containerWidth6: 133,
                containerColor6: Color.fromRGBO(216, 151, 116, 1),
                colorText6: Colors.white70,
                text6: 'ámbar',

                containerWidth7: 133,
                containerColor7: Color.fromRGBO(197, 240, 244, 1),
                colorText7: Colors.black54,
                text7: 'fresco',

                containerWidth8: 133,
                containerColor8: Color.fromRGBO(255, 254, 219, 1),
                colorText8: Colors.black54,
                text8: 'avainillado',

                containerWidth9: 133,
                containerColor9: Color.fromRGBO(166, 226, 238, 1),
                colorText9: Colors.black54,
                text9: 'acuático',

                containerWidth10: 123,
                containerColor10: Color.fromRGBO(183, 156, 130, 1),
                colorText10: Colors.white70,
                text10: 'amaderado',
              ),
              //TODO: 17
              BuscadorAromas(
                title: 'King - Bharara',
                description: '''
King de Bharara es una fragancia de la familia olfativa Aromática para Hombres. King se lanzó en 2021.
Su longevidad es duradera y su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/king_bharara.jpg',

                imageNotaSalida: 'assets/images/naranja.jpg',
                textNotaSalida: 'Naranja',

                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',

                imageNotaSalida3: 'assets/images/limon.jpg',
                textNotaSalida3: 'Limón',

                imageCorazon: 'assets/images/notas_afrutadas.jpg',
                textCorazon: '''Notas
Afrutadas''',

                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',

                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: '''Almizcle
Blanco''',

                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',

                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',

                containerWidth2: 200,
                containerColor2: Color.fromRGBO(252, 96, 66, 1),
                colorText2: Colors.black,
                text2: 'afrutados',

                containerWidth3: 185,
                containerColor3: Color.fromRGBO(241, 91, 95, 1),
                colorText3: Colors.white,
                text3: 'dulce',

                containerWidth4: 180,
                containerColor4: Color.fromRGBO(255, 254, 206, 1),
                colorText4: Colors.black87,
                text4: 'avainillado',

                containerWidth5: 160,
                containerColor5: Color.fromRGBO(243, 231, 218, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',

                containerWidth6: 155,
                containerColor6: Color.fromRGBO(238, 228, 240, 1),
                colorText6: Colors.black54,
                text6: 'almizclado',

                containerWidth7: 150,
                containerColor7: Color.fromRGBO(210, 137, 96, 1),
                colorText7: Colors.white70,
                text7: 'ambar',

                containerWidth8: 120,
                containerColor8: Color.fromRGBO(187, 225, 138, 1),
                colorText8: Colors.black45,
                text8: 'fresco especiado',
              ),
              //TODO: 18
              BuscadorAromas(
                title: 'Corvus - Ahli',
                description: '''
Corvus de Ahli es una fragancia de la familia olfativa dulce frutal amaderada para Mujeres. Corvus se lanzó en 2022.
Su longevidad es duradera y su estela es moderada. Es un aroma de Mujer.
''',
                imageLocion: 'assets/images/corvus_ahli.jpg',

                imageNotaSalida: 'assets/images/grosellas_negras.jpg',
                textNotaSalida: '''Grosellas
Negras''',

                imageNotaSalida2: 'assets/images/fresa.jpg',
                textNotaSalida2: 'Fresa',

                imageNotaSalida3: 'assets/images/cereza.jpg',
                textNotaSalida3: 'Cereza',

                imageNotaSalida4: 'assets/images/mora.jpeg',
                textNotaSalida4: 'Mora',

                imageNotaSalida5: 'assets/images/limon.jpg',
                textNotaSalida5: 'Limón',

                imageNotaSalida6: 'assets/images/mandarina.jpg',
                textNotaSalida6: 'Mandarina',

                imageCorazon: 'assets/images/violeta.jpg',
                textCorazon: 'Violeta',

                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',

                imageCorazon3: 'assets/images/ambar.jpg',
                textCorazon3: 'Ámbar',

                imageCorazon4: 'assets/images/pachuli.jpg',
                textCorazon4: 'Pachulí',

                imageBase: 'assets/images/madera_de_cachemira.jpg',
                textBase: '''Madera de
Cachemira''',

                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',

                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo de
Roble''',

                imageBase4: 'assets/images/vainilla.jpg',
                textBase4: 'Vainilla',

                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 96, 66, 1),
                colorText: Colors.black,
                text: 'afrutados',

                containerWidth2: 200,
                containerColor2: Color.fromRGBO(240, 245, 235, 1),
                colorText2: Colors.black,
                text2: 'floral blanco',

                containerWidth3: 170,
                containerColor3: Color.fromRGBO(255, 254, 55, 1),
                colorText3: Colors.white,
                text3: 'cítrico',

                containerWidth4: 150,
                containerColor4: Color.fromRGBO(255, 254, 206, 1),
                colorText4: Colors.black87,
                text4: 'avainillado',

                containerWidth5: 140,
                containerColor5: Color.fromRGBO(183, 156, 130, 1),
                colorText5: Colors.black54,
                text5: 'amaderado',

                containerWidth6: 140,
                containerColor6: Color.fromRGBO(210, 137, 96, 1),
                colorText6: Colors.black54,
                text6: 'ámbar',
              ),
              //TODO: 19
              BuscadorAromas(
                title: 'Velvet Gold - Orientica',
                description: '''
Velvet Gold de Orientica Premium es una fragancia de la familia olfativa Floral para Mujeres.
Velvet Gold se lanzó en 2022. Su longevidad es duradera y su estela es moderada. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/velvet_gold_orientica.jpg',

                imageNotaSalida: 'assets/images/caramelo.jpg',
                textNotaSalida: 'Caramelo',

                imageNotaSalida2: 'assets/images/violeta.jpg',
                textNotaSalida2: 'Violeta',

                imageNotaSalida3: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida3: '''Pimienta
Rosa''',
                imageNotaSalida4: 'assets/images/bergamota.jpg',
                textNotaSalida4: 'Bergamota',

                imageCorazon: 'assets/images/notas_atalcadas.jpg',
                textCorazon: '''Notas
Atalcadas''',

                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: 'Rosa',

                imageCorazon3: 'assets/images/pachuli.jpg',
                textCorazon3: 'Pachulí',

                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',

                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',

                imageBase3: 'assets/images/notas_animalicas.jpg',
                textBase3: '''Notas
Animálicas''',

                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 221, 204, 1),
                colorText: Colors.black,
                text: 'atalcado',

                containerWidth2: 170,
                containerColor2: Color.fromRGBO(236, 224, 238, 1),
                colorText2: Colors.black87,
                text2: 'almizclado',

                containerWidth3: 155,
                containerColor3: Color.fromRGBO(230, 189, 134, 1),
                colorText3: Colors.black87,
                text3: 'caramelo',

                containerWidth4: 150,
                containerColor4: Color.fromRGBO(255, 254, 211, 1),
                colorText4: Colors.black87,
                text4: 'avainillado',

                containerWidth5: 145,
                containerColor5: Color.fromRGBO(188, 103, 255, 1),
                colorText5: Colors.white,
                text5: 'violeta',

                containerWidth6: 140,
                containerColor6: Color.fromRGBO(243, 123, 126, 1),
                colorText6: Colors.white,
                text6: 'dulce',

                containerWidth7: 130,
                containerColor7: Color.fromRGBO(184, 143, 108, 1),
                colorText7: Colors.white,
                text7: 'animálico',

                containerWidth8: 115,
                containerColor8: Color.fromRGBO(254, 112, 172, 1),
                colorText8: Colors.white70,
                text8: 'rosas',

                containerWidth9: 115,
                containerColor9: Color.fromRGBO(238, 179, 158, 1),
                colorText9: Colors.black54,
                text9: 'especiado suave',

                containerWidth10: 110,
                containerColor10: Color.fromRGBO(255, 170, 194, 1),
                colorText10: Colors.white70,
                text10: 'florales',
              ),
              //TODO: 20
              BuscadorAromas(
                title: 'Asad - Lattafa',
                description: '''
Asad de Lattafa Perfumes es una fragancia de la familia olfativa Ámbar para Hombres.
Asad se lanzó en 2021. Su longevidad es duradera y su estela es pesada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/asad_lattafa.jpg',

                imageNotaSalida: 'assets/images/pimienta_negra.jpg',
                textNotaSalida: '''Pimienta
Negra''',

                imageNotaSalida2: 'assets/images/tabaco.jpg',
                textNotaSalida2: 'Tabaco',

                imageNotaSalida3: 'assets/images/piña.jpg',
                textNotaSalida3: 'Piña',
                      
                imageCorazon: 'assets/images/pachuli.jpg',
                textCorazon: 'Pachulí',

                imageCorazon2: 'assets/images/cafe.jpg',
                textCorazon2: 'Café',

                imageCorazon3: 'assets/images/iris.jpg',
                textCorazon3: 'Iris',

                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',

                imageBase2: 'assets/images/ambar.jpg',
                textBase2: 'Ámbar',

                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Madera
Seca''',

                imageBase4: 'assets/images/benjui.jpg',
                textBase4: 'Benjuí',

                imageBase5: 'assets/images/ladano.jpg',
                textBase5: 'Ládano',

                containerWidth: 230,
                containerColor: Color.fromRGBO(188, 77, 16, 1),
                colorText: Colors.white,
                text: 'ámbar',

                containerWidth2: 210,
                containerColor2: Color.fromRGBO(255, 254, 198, 1),
                colorText2: Colors.black,
                text2: 'avainillado',

                containerWidth3: 200,
                containerColor3: Color.fromRGBO(149, 209, 72, 1),
                colorText3: Colors.black87,
                text3: 'fresco especiado',

                containerWidth4: 195,
                containerColor4: Color.fromRGBO(141, 98, 58, 1),
                colorText4: Colors.white,
                text4: 'amaderado',

                containerWidth5: 185,
                containerColor5: Color.fromRGBO(214, 90, 49, 1),
                colorText5: Colors.white,
                text5: 'cálido especiado',

                containerWidth6: 170,
                containerColor6: Color.fromRGBO(242, 104, 108, 1),
                colorText6: Colors.white,
                text6: 'dulce',

                containerWidth7: 160,
                containerColor7: Color.fromRGBO(198, 160, 105, 1),
                colorText7: Colors.white,
                text7: 'tabaco',

                containerWidth8: 150,
                containerColor8: Color.fromRGBO(244, 233, 222, 1),
                colorText8: Colors.black54,
                text8: 'atalcado',

                containerWidth9: 135,
                containerColor9: Color.fromRGBO(167, 168, 137, 1),
                colorText9: Colors.white70,
                text9: 'pachulí',

                containerWidth10: 135,
                containerColor10: Color.fromRGBO(209, 185, 162, 1),
                colorText10: Colors.black54,
                text10: 'balsámico',
              ),
              //TODO: 21
              BuscadorAromas(
                title: '212 Heroes - Carolina Herrera',
                description: '''
212 Heroes de Carolina Herrera es una fragancia de la familia olfativa Aromática Frutal para Hombres. 212 Heroes se lanzó
en 2021. Tiene una longevidad moderada y su estela es moderada. Es un aroma de Hombre.
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
              BuscadorAromas(
                title: '212 VIP Men - Carolina Herrera',
                description: '''
212 VIP Men de Carolina Herrera es una fragancia de la familia olfativa Ámbar Amaderada para Hombres. 212 VIP Men se lanzó
en 2011. Tiene una longevidad duradera y su estela es pesada. Es un aroma Masculino.
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
              BuscadorAromas(
                title: 'CH Men - Carolina Herrera',
                description: '''
CH Men de Carolina Herrera es una fragancia de la familia olfativa Ámbar Especiada para Hombres. CH Men se lanzó en 2009.
Su longevidad y su estela son moderadas. Es un Aroma Masculino.
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
              BuscadorAromas(
                title: '212 VIP Men Wins - Carolina Herrera',
                description: '''
212 VIP Men Wins de Carolina Herrera es una fragancia de la familia olfativa Aromática Fougère para Hombres.
212 VIP Men Wins se lanzó en 2021. Su longevidad y su estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/212_vip_wins_carolina_herrera.jpeg',
                imageNotaSalida: 'assets/images/yuzu.jpg',
                textNotaSalida: 'Yuzu',
                imageNotaSalida2: 'assets/images/albahaca.jpg',
                textNotaSalida2: 'Albahaca',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/pimienta.jpg',
                textCorazon: '''
Pimienta de
Madagascar''',
                imageCorazon2: 'assets/images/lavanda.jpg',
                textCorazon2: 'Lavanda',
                imageBase: 'assets/images/piel.jpg',
                textBase: 'Piel',
                imageBase2: 'assets/images/cumarina.jpg',
                textBase2: '''Haba
Tonka''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(131, 201, 40, 1),
                colorText: Colors.black,
                text: 'fresco especiado',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(249, 255, 95, 1),
                colorText2: Colors.black87,
                text2: 'cítrico',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(118, 190, 174, 1),
                colorText3: Colors.black54,
                text3: 'aromático',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(94, 178, 104, 1),
                colorText4: Colors.white70,
                text4: 'verde',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(244, 128, 131, 1),
                colorText5: Colors.white70,
                text5: 'dulce',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(241, 227, 244, 1),
                colorText6: Colors.black45,
                text6: 'lavanda',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(255, 254, 219, 1),
                colorText7: Colors.black45,
                text7: 'avainillado',
                containerWidth8: 115,
                containerColor8: Color.fromRGBO(226, 142, 114, 1),
                colorText8: Colors.white60,
                text8: 'cálido especiado',
              ),
              //TODO: 19
              AromasBuscador2000(
                title: '1 Million Parfum - Paco Rabanne',
                description: '''
1 Million Parfum de Paco Rabanne es una fragancia de la familia olfativa Cuero para Hombres. 1 Million Parfum se lanzó
en 2020. Su longevidad es duradera y su estela es pesada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/1_million_paco_rabanne.webp',
                imageNotaFragancia: 'assets/images/nardos.jpg',
                textNotaFragancia: 'Nardos',
                imageNotaFragancia2: 'assets/images/sal.jpg',
                textNotaFragancia2: 'Sal',
                imageNotaFragancia3: 'assets/images/notas_solares.jpg',
                textNotaFragancia3: '''Notas
Solares''',
                imageNotaFragancia4: 'assets/images/aceite_de_monoil.jpg',
                textNotaFragancia4: '''Aceite
de Monoi''',
                imageNotaFragancia5: 'assets/images/ambar_gris.jpg',
                textNotaFragancia5: '''Ámbar
Gris''',
                imageNotaFragancia6: 'assets/images/cuero.jpg',
                textNotaFragancia6: 'Cuero',
                imageNotaFragancia7: 'assets/images/cachemira.jpg',
                textNotaFragancia7: 'Cachemira',
                imageNotaFragancia8: 'assets/images/ladano.jpg',
                textNotaFragancia8: 'Ládano',
                imageNotaFragancia9: 'assets/images/pino.jpg',
                textNotaFragancia9: 'Pino',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(236, 250, 244, 1),
                colorText2: Colors.black,
                text2: 'nardos',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(197, 101, 48, 1),
                colorText3: Colors.white,
                text3: 'ámbar',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(161, 105, 58, 1),
                colorText4: Colors.white,
                text4: 'animálico',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(158, 122, 88, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(240, 255, 251, 1),
                colorText6: Colors.black54,
                text6: 'salado',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(167, 136, 126, 1),
                colorText7: Colors.white70,
                text7: 'cuero',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(249, 206, 106, 1),
                colorText8: Colors.black45,
                text8: 'tropical',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(241, 232, 242, 1),
                colorText9: Colors.black45,
                text9: 'almizclado',
                containerWidth10: 115,
                containerColor10: Color.fromRGBO(247, 242, 231, 1),
                colorText10: Colors.black45,
                text10: 'coco',
              ),
              //TODO: 20
              BuscadorAromas(
                title: '1 Million Lucky - Paco Rabanne',
                description: '''
1 Million Lucky de Paco Rabanne es una fragancia de la familia olfativa Amaderada para Hombres. 1 Million Lucky se lanzó
en 2018. Su longevidad es duradera y su estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/1_million_lucky_paco_rabanne.jpeg',
                imageNotaSalida: 'assets/images/ciruela.jpg',
                textNotaSalida: 'Ciruela',
                imageNotaSalida2: 'assets/images/notas_ozonicas.jpg',
                textNotaSalida2: '''Notas
Ozónicas''',
                imageNotaSalida3: 'assets/images/toronja.jpg',
                textNotaSalida3: 'Toronja',
                imageNotaSalida4: 'assets/images/bergamota.jpg',
                textNotaSalida4: 'Bergamota',
                imageCorazon: 'assets/images/avellana.jpg',
                textCorazon: 'Avellana',
                imageCorazon2: 'assets/images/miel.jpg',
                textCorazon2: 'Miel',
                imageCorazon3: 'assets/images/cedro.jpg',
                textCorazon3: 'Cedro',
                imageCorazon4: 'assets/images/madera_de_cachemira.jpg',
                textCorazon4: '''Madera de
Cachemira''',
                imageCorazon5: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon5: '''Flor del
Naranjo''',
                imageBase: 'assets/images/amberwood.jpg',
                textBase: 'Amberwood',
                imageBase2: 'assets/images/pachuli.jpg',
                textBase2: 'Pachulí',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo
de Roble''',
                imageBase4: 'assets/images/vetiver.jpg',
                textBase4: 'Vetiver',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(241, 91, 95, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(198, 174, 133, 1),
                colorText3: Colors.black87,
                text3: 'nueces',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(251, 191, 71, 1),
                colorText4: Colors.black87,
                text4: 'amielado',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(253, 127, 103, 1),
                colorText5: Colors.black54,
                text5: 'afrutados',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(251, 255, 148, 1),
                colorText6: Colors.black54,
                text6: 'cítrico',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(224, 253, 252, 1),
                colorText7: Colors.black54,
                text7: 'ozónico',
                containerWidth8: 110,
                containerColor8: Color.fromRGBO(217, 155, 121, 1),
                colorText8: Colors.white60,
                text8: 'ámbar',
                containerWidth9: 100,
                containerColor9: Color.fromRGBO(255, 170, 195, 1),
                colorText9: Colors.black45,
                text9: 'florales',
                containerWidth10: 95,
                containerColor10: Color.fromRGBO(245, 248, 252, 1),
                colorText10: Colors.black45,
                text10: 'floral blanco',
              ),
              //TODO: 21
              BuscadorAromas(
                title: 'Invictus - Paco Rabanne',
                description: '''
Invictus de Paco Rabanne es una fragancia de la familia olfativa Amaderada Acuática para Hombres. Invictus se lanzó
en 2013. Su longevidad es de moderada a duradera y su estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/invictus_paco_rabanne.jpg',
                imageNotaSalida: 'assets/images/notas_marinas.jpg',
                textNotaSalida: '''Notas
Marinas''',
                imageNotaSalida2: 'assets/images/toronja.jpg',
                textNotaSalida2: 'Toronja',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/hoja_de_laurel.jpg',
                textCorazon: '''Hoja de
Laurel''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageBase: 'assets/images/ambar_gris.jpg',
                textBase: '''Ámbar
Gris''',
                imageBase2: 'assets/images/madera_de_gaiac.jpg',
                textBase2: '''Madera
de Gaiac''',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo
de Roble''',
                imageBase4: 'assets/images/pachuli.jpg',
                textBase4: 'Pachulí',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(41, 102, 166, 1),
                colorText2: Colors.white,
                text2: 'marino',
                containerWidth3: 195,
                containerColor3: Color.fromRGBO(82, 173, 153, 1),
                colorText3: Colors.black,
                text3: 'aromático',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(161, 214, 93, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(166, 132, 101, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(214, 146, 109, 1),
                colorText6: Colors.white70,
                text6: 'ámbar',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(241, 255, 251, 1),
                colorText7: Colors.black54,
                text7: 'salado',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(244, 247, 252, 1),
                colorText8: Colors.black45,
                text8: 'floral blanco',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(170, 227, 239, 1),
                colorText9: Colors.black45,
                text9: 'acuático',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(168, 177, 139, 1),
                colorText10: Colors.black45,
                text10: 'alcanforados',
              ),
              //TODO: 22
              BuscadorAromas(
                title: 'Black XS - Paco Rabanne',
                description: '''
Black XS de Paco Rabanne es una fragancia de la familia olfativa Ámbar Amaderada para Hombres. Black XS se lanzó
en 2005. Su longevidad es duradera y su estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/black_xs_paco_rabanne.webp',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: 'Limón',
                imageNotaSalida2: 'assets/images/salvia.jpg',
                textNotaSalida2: 'Salvia',
                imageCorazon: 'assets/images/praline.jpg',
                textCorazon: 'Praliné',
                imageCorazon2: 'assets/images/canela.jpg',
                textCorazon2: 'Canela',
                imageCorazon3: 'assets/images/balsamo_de_tolu.jpg',
                textCorazon3: '''Bálsamo
de Tolú''',
                imageCorazon4: 'assets/images/cardamomo.jpg',
                textCorazon4: '''Cardamomo
Negro''',
                imageBase: 'assets/images/palo_de_rosa_de_brasil.jpg',
                textBase: '''Palo de Rosa
de Brasil''',
                imageBase2: 'assets/images/pachuli.jpg',
                textBase2: 'Pachulí',
                imageBase3: 'assets/images/ambar_gris.jpg',
                textBase3: '''Ámbar
Negro''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 230,
                containerColor2: Color.fromRGBO(204, 53, 2, 1),
                colorText2: Colors.white,
                text2: 'cálido especiado',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(250, 255, 108, 1),
                colorText3: Colors.black87,
                text3: 'cítrico',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(203, 117, 70, 1),
                colorText4: Colors.white70,
                text4: 'ámbar',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(107, 184, 167, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(158, 122, 88, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(199, 170, 141, 1),
                colorText7: Colors.black54,
                text7: 'balsámico',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(225, 155, 106, 1),
                colorText8: Colors.white70,
                text8: 'canela',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(158, 159, 125, 1),
                colorText9: Colors.white60,
                text9: 'pachulí',
                containerWidth10: 110,
                containerColor10: Color.fromRGBO(245, 245, 243, 1),
                colorText10: Colors.black45,
                text10: 'lactónico',
              ),
              //TODO: 23
              BuscadorAromas(
                title: 'Sauvage - Dior',
                description: '''
Sauvage de Dior es una fragancia de la familia olfativa Aromática Fougère para Hombres. Sauvage se lanzó en 2015.
Tiene una longevidad duradera y su estela es pesada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/sauvage_dior.jpg',
                imageNotaSalida: 'assets/images/bergamota.jpg',
                textNotaSalida: '''Bergamota
de Calabria''',
                imageNotaSalida2: 'assets/images/pimienta.jpg',
                textNotaSalida2: 'Pimienta',
                imageCorazon: 'assets/images/pimienta.jpg',
                textCorazon: '''Pimienta
de Sichuan''',
                imageCorazon2: 'assets/images/lavanda.jpg',
                textCorazon2: 'Lavanda',
                imageCorazon3: 'assets/images/pimienta_rosa.jpg',
                textCorazon3: '''Pimienta
Rosa''',
                imageCorazon4: 'assets/images/vetiver.jpg',
                textCorazon4: 'Vetiver',
                imageCorazon5: 'assets/images/pachuli.jpg',
                textCorazon5: 'Pachulí',
                imageCorazon6: 'assets/images/geranio.jpg',
                textCorazon6: 'Geranio',
                imageCorazon7: 'assets/images/elemi.jpg',
                textCorazon7: 'Elemí',
                imageBase: 'assets/images/ambroxan.jpg',
                textBase: 'Ambroxan',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/ladano.jpg',
                textBase3: 'Ládano',
                containerWidth: 230,
                containerColor: Color.fromRGBO(131, 201, 40, 1),
                colorText: Colors.black,
                text: 'fresco especiado',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(203, 118, 71, 1),
                colorText2: Colors.white,
                text2: 'ámbar',
                containerWidth3: 165,
                containerColor3: Color.fromRGBO(250, 255, 127, 1),
                colorText3: Colors.black87,
                text3: 'cítrico',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(118, 190, 174, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(239, 229, 241, 1),
                colorText5: Colors.black54,
                text5: 'almizclado',
                containerWidth6: 130,
                containerColor6: Color.fromRGBO(173, 142, 114, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(176, 206, 186, 1),
                colorText7: Colors.black45,
                text7: 'herbal',
                containerWidth8: 110,
                containerColor8: Color.fromRGBO(242, 228, 244, 1),
                colorText8: Colors.black45,
                text8: 'Lavanda',
                containerWidth9: 110,
                containerColor9: Color.fromRGBO(228, 147, 120, 1),
                colorText9: Colors.white60,
                text9: 'cálido especiado',
              ),
              //TODO: 24
              BuscadorAromas(
                title: 'Fahrenheit - Dior',
                description: '''
ahrenheit de Dior es una fragancia de la familia olfativa Aromática Fougère para Hombres. Fahrenheit se lanzó en 1988.
Tiene una longevidad duradera y su estela es pesada. Es un aroma masculino.
''',
                imageLocion: 'assets/images/fahrenheit_dior.jpeg',
                imageNotaSalida: 'assets/images/flor_del_espino.jpg',
                textNotaSalida: '''Flor del
Espino''',
                imageNotaSalida2: 'assets/images/lavanda.jpg',
                textNotaSalida2: 'Lavanda',
                imageNotaSalida3: 'assets/images/cedro.jpg',
                textNotaSalida3: 'Cedro',
                imageNotaSalida4: 'assets/images/bergamota.jpg',
                textNotaSalida4: 'Bergamota',
                imageNotaSalida5: 'assets/images/limon.jpg',
                textNotaSalida5: 'Limón',
                imageNotaSalida6: 'assets/images/nuez_moscada.jpg',
                textNotaSalida6: '''Flor del
Mascadero''',
                imageNotaSalida7: 'assets/images/mandarina.jpg',
                textNotaSalida7: 'Mandarina',
                imageNotaSalida8: 'assets/images/manzanilla.jpg',
                textNotaSalida8: 'Manzanilla',
                imageCorazon: 'assets/images/hojas_de_violeta.jpg',
                textCorazon: '''Hojas de
Violeta''',
                imageCorazon2: 'assets/images/nuez_moscada.jpg',
                textCorazon2: '''Nuez
Moscada''',
                imageCorazon3: 'assets/images/cedro.jpg',
                textCorazon3: 'Cedro',
                imageCorazon4: 'assets/images/clavel.jpg',
                textCorazon4: 'Clavel',
                imageCorazon5: 'assets/images/madreselva.jpg',
                textCorazon5: '''Madre
Selva''',
                imageCorazon6: 'assets/images/jazmin.jpg',
                textCorazon6: 'Jazmín',
                imageCorazon7: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon7: '''Lirio de
los Valles''',
                imageBase: 'assets/images/cuero.jpg',
                textBase: 'Cuero',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/pachuli.jpg',
                textBase5: 'Pachulí',
                imageBase6: 'assets/images/cumarina.jpg',
                textBase6: 'Haba Tonka',
                containerWidth: 230,
                containerColor: Color.fromRGBO(120, 72, 58, 1),
                colorText: Colors.white,
                text: 'cuero',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(133, 87, 44, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(210, 253, 251, 1),
                colorText3: Colors.black87,
                text3: 'ozónico',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(155, 211, 82, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(167, 115, 72, 1),
                colorText5: Colors.white70,
                text5: 'animálico',
                containerWidth6: 160,
                containerColor6: Color.fromRGBO(100, 181, 164, 1),
                colorText6: Colors.black54,
                text6: 'aromático',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(142, 218, 234, 1),
                colorText7: Colors.black54,
                text7: 'acuático',
                containerWidth8: 140,
                containerColor8: Color.fromRGBO(255, 141, 173, 1),
                colorText8: Colors.black54,
                text8: 'florales',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(251, 255, 139, 1),
                colorText9: Colors.black45,
                text9: 'cítrico',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(102, 182, 111, 1),
                colorText10: Colors.white60,
                text10: 'verde',
              ),
              //TODO: 25
              BuscadorAromas(
                title: 'CK One - Calvin Klein',
                description: '''
CK One de Calvin Klein es una fragancia de la familia olfativa Cítrica Aromática para Hombres y Mujeres. CK One se lanzó
en 1994. Su longevidad y su estela son moderadas. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/ck_one_calvin_klein.jpeg',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: 'Limón',
                imageNotaSalida2: 'assets/images/piña.jpg',
                textNotaSalida2: 'Piña',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageNotaSalida4: 'assets/images/mandarina.jpg',
                textNotaSalida4: 'Mandarina',
                imageNotaSalida5: 'assets/images/papaya.jpg',
                textNotaSalida5: 'Papaya',
                imageNotaSalida6: 'assets/images/cardamomo.jpg',
                textNotaSalida6: 'Cardamomo',
                imageNotaSalida7: 'assets/images/notas_verdes.jpg',
                textNotaSalida7: '''Notas
Verdes''',
                imageCorazon: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon: '''Lirio de
los Valles''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/violeta.jpg',
                textCorazon3: 'Violeta',
                imageCorazon4: 'assets/images/rosa.jpg',
                textCorazon4: 'Rosa',
                imageCorazon5: 'assets/images/nuez_moscada.jpg',
                textCorazon5: '''Nuez
Moscada''',
                imageCorazon6: 'assets/images/raiz_de_lirio.jpg',
                textCorazon6: '''Raíz de
Lirio''',
                imageCorazon7: 'assets/images/fresia.jpg',
                textCorazon7: 'Fresia',
                imageBase: 'assets/images/notas_verdes.jpg',
                textBase: '''Acordes
Verdes''',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/cedro.jpg',
                textBase3: 'Cedro',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/musgo_de_roble.jpg',
                textBase5: '''Musgo de
Roble''',
                imageBase6: 'assets/images/te_verde.jpg',
                textBase6: 'Té Verde',
                imageBase7: 'assets/images/ambar.jpg',
                textBase7: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(74, 168, 85, 1),
                colorText2: Colors.white,
                text2: 'verde',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(168, 136, 105, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 140,
                containerColor4: Color.fromRGBO(243, 233, 222, 1),
                colorText4: Colors.black54,
                text4: 'atalcado',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(243, 246, 252, 1),
                colorText5: Colors.black54,
                text5: 'floral blanco',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(194, 238, 243, 1),
                colorText6: Colors.black54,
                text6: 'fresco',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(134, 197, 183, 1),
                colorText7: Colors.black54,
                text7: 'aromático',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(185, 224, 134, 1),
                colorText8: Colors.black45,
                text8: 'fresco especiado',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(254, 167, 192, 1),
                colorText9: Colors.black45,
                text9: 'florales',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(241, 233, 243, 1),
                colorText10: Colors.black45,
                text10: 'almizclado',
              ),
              //TODO: 26
              BuscadorAromas(
                title: '360° for Men - Perry Ellis',
                description: '''
360° for Men de Perry Ellis es una fragancia de la familia olfativa Aromática para Hombres. 360° for Men se lanzó
en 1995. Tiene longevidad y estela moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/360_for_men_perry_ellis.jpg',
                imageNotaSalida: 'assets/images/bayas_de_enebro.jpg',
                textNotaSalida: '''Bayas de
Enebro''',
                imageNotaSalida2: 'assets/images/limon.jpg',
                textNotaSalida2: 'Limón',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageCorazon: 'assets/images/lavanda.jpg',
                textCorazon: 'Lavanda',
                imageCorazon2: 'assets/images/salvia.jpg',
                textCorazon2: 'Salvia',
                imageCorazon3: 'assets/images/cardamomo.jpg',
                textCorazon3: 'Cardamomo',
                imageCorazon4: 'assets/images/fresia.jpg',
                textCorazon4: 'Fresia',
                imageBase: 'assets/images/notas_amaderadas.jpg',
                textBase: '''Notas
Amaderadas''',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 140,
                containerColor2: Color.fromRGBO(158, 122, 88, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(168, 217, 105, 1),
                colorText3: Colors.black87,
                text3: 'fresco especiado',
                containerWidth4: 125,
                containerColor4: Color.fromRGBO(250, 254, 142, 1),
                colorText4: Colors.black54,
                text4: 'cítrico',
                containerWidth5: 110,
                containerColor5: Color.fromRGBO(240, 226, 243, 1),
                colorText5: Colors.black45,
                text5: 'lavanda',
              ),
              //TODO: 27
              BuscadorAromas(
                title: 'Nautica Voyage - Nautica',
                description: '''
Nautica Voyage de Nautica es una fragancia de la familia olfativa Amaderada Acuática para Hombres. Nautica Voyage
se lanzó en 2006. Su longevidad y su estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/nautica_voyage_nautica.jpg',
                imageNotaSalida: 'assets/images/notas_verdes.jpg',
                textNotaSalida: '''Hojas
Verdes''',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageCorazon: 'assets/images/flor_de_loto.jpg',
                textCorazon: '''Flor de
Loto''',
                imageCorazon2: 'assets/images/mimosa.jpg',
                textCorazon2: 'Mimosa',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo de
Roble''',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(14, 140, 29, 1),
                colorText: Colors.white,
                text: 'verde',
                containerWidth2: 150,
                containerColor2: Color.fromRGBO(252, 126, 101, 1),
                colorText2: Colors.black87,
                text2: 'afrutados',
                containerWidth3: 135,
                containerColor3: Color.fromRGBO(254, 149, 179, 1),
                colorText3: Colors.black87,
                text3: 'florales',
                containerWidth4: 120,
                containerColor4: Color.fromRGBO(194, 239, 243, 1),
                colorText4: Colors.black54,
                text4: 'fresco',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(244, 234, 224, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 115,
                containerColor6: Color.fromRGBO(165, 225, 238, 1),
                colorText6: Colors.black54,
                text6: 'acuático',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(241, 233, 242, 1),
                colorText7: Colors.black54,
                text7: 'almizclado',
                containerWidth8: 105,
                containerColor8: Color.fromRGBO(181, 154, 128, 1),
                colorText8: Colors.white70,
                text8: 'amaderado',
                containerWidth9: 100,
                containerColor9: Color.fromRGBO(254, 236, 128, 1),
                colorText9: Colors.black45,
                text9: 'floral amarillo',
              ),
              //TODO: 28
              BuscadorAromas(
                title: 'Toy Boy - Moschino',
                description: '''
Toy Boy de Moschino es una fragancia de la familia olfativa Amaderada Especiada para Hombres.Toy Boy se lanzó en 2019.
Su longevidad es duradera y su estela es pesada. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/toy_boy_moschino.webp',
                imageNotaSalida: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida: '''Pimienta
Rosa''',
                imageNotaSalida2: 'assets/images/pera.jpg',
                textNotaSalida2: 'Pera',
                imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                textNotaSalida3: '''Nuez 
Moscada''',
                imageNotaSalida4: 'assets/images/elemi.jpg',
                textNotaSalida4: 'Elemí',
                imageNotaSalida5: 'assets/images/bergamota.jpg',
                textNotaSalida5: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/clavos_de_olor.jpg',
                textCorazon2: '''Clavos
de Olor''',
                imageCorazon3: 'assets/images/magnolia.jpg',
                textCorazon3: 'Magnolia',
                imageCorazon4: 'assets/images/lino.jpg',
                textCorazon4: 'Lino',
                imageBase: 'assets/images/cachemira.jpg',
                textBase: 'Cachemira',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: '''Vetiver
de Haití''',
                imageBase3: 'assets/images/sylkolide.jpg',
                textBase3: 'Sylkolide',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(254, 1, 107, 1),
                colorText: Colors.white,
                text: 'rosas',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(254, 128, 164, 1),
                colorText2: Colors.black87,
                text2: 'florales',
                containerWidth3: 160,
                containerColor3: Color.fromRGBO(236, 225, 239, 1),
                colorText3: Colors.black87,
                text3: 'almizclado',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(154, 117, 82, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(233, 156, 130, 1),
                colorText5: Colors.black87,
                text5: 'especiado suave',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(209, 135, 95, 1),
                colorText6: Colors.white70,
                text6: 'ámbar',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(172, 218, 111, 1),
                colorText7: Colors.black54,
                text7: 'fresco especiado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(123, 192, 177, 1),
                colorText8: Colors.black54,
                text8: 'aromático',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(244, 130, 133, 1),
                colorText9: Colors.white70,
                text9: 'dulce',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(223, 131, 101, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 29
              BuscadorAromas(
                title: 'Red - Lacoste',
                description: '''
Red de Lacoste Fragrances es una fragancia de la familia olfativa Aromática Fougère para Hombres. Red se lanzó
en 2004. Tiene una longevidad y estela moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/red_lacoste.webp',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: '''Manzana
Verde''',
                imageCorazon: 'assets/images/pino.jpg',
                textCorazon: 'Pino',
                imageBase: 'assets/images/pachuli.jpg',
                textBase: 'Pachulí',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(252, 98, 69, 1),
                colorText2: Colors.black,
                text2: 'afrutados',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(70, 166, 81, 1),
                colorText3: Colors.white,
                text3: 'verde',
                containerWidth4: 175,
                containerColor4: Color.fromRGBO(106, 184, 167, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(185, 237, 242, 1),
                colorText5: Colors.black54,
                text5: 'fresco',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(152, 154, 118, 1),
                colorText6: Colors.white,
                text6: 'pachulí',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(153, 146, 136, 1),
                colorText7: Colors.white,
                text7: 'terrosos',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(125, 147, 136, 1),
                colorText8: Colors.white,
                text8: 'conífera',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(210, 187, 164, 1),
                colorText9: Colors.black45,
                text9: 'balsámico',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(228, 147, 121, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 30
              BuscadorAromas(
                title:
                    'L\'Eau d\'Issey Pour Homme - Issey Miyake',
                description: '''
L'Eau d'Issey Pour Homme de Issey Miyake es una fragancia de la familia olfativa Amaderada Aromática para
Hombres. L'Eau d'Issey Pour Homme se lanzó en 1994. Su longevidad es moderada y su estela es moderada.
Es un aroma Masculino.
''',
                imageLocion: 'assets/images/leau_dissey_pour_homme_issey_miyake.webp',
                imageNotaSalida: 'assets/images/yuzu.jpg',
                textNotaSalida: 'Yuzu',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/limon.jpg',
                textNotaSalida3: 'Limón',
                imageCorazon: 'assets/images/nuez_moscada.jpg',
                textCorazon: '''Nuez
Moscada''',
                imageCorazon2: 'assets/images/nenufar.jpg',
                textCorazon2: 'Nenúfar',
                imageCorazon3: 'assets/images/canela.jpg',
                textCorazon3: 'Canela',
                imageCorazon4: 'assets/images/geranio.jpg',
                textCorazon4: 'Geranio',
                imageBase: 'assets/images/cedro.jpg',
                textBase: 'Cedro',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vetiver.jpg',
                textBase3: 'Vetíver',
                imageBase4: 'assets/images/almizcle.jpg',
                textBase4: 'Almizcle',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                imageBase6: 'assets/images/tabaco.jpg',
                textBase6: 'Tabaco',
                containerWidth: 230,
                containerColor: Color.fromRGBO(255, 254, 60, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(100, 245, 130, 1),
                colorText2: Colors.black,
                text2: 'fresco especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(119, 68, 20, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(55, 160, 137, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 170,
                containerColor5: Color.fromRGBO(95, 178, 105, 1),
                colorText5: Colors.black87,
                text5: 'verde',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(151, 221, 235, 1),
                colorText6: Colors.black54,
                text6: 'acuático',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(202, 114, 66, 1),
                colorText7: Colors.black54,
                text7: 'ámbar',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(255, 166, 191, 1),
                colorText8: Colors.black54,
                text8: 'florales',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(239, 229, 241, 1),
                colorText9: Colors.black45,
                text9: 'almizclado',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(221, 253, 252, 1),
                colorText10: Colors.black45,
                text10: 'ozónico',
              ),
              //TODO: 31
              BuscadorAromas(
                title: 'Hugo - Hugo Boss',
                description: '''
Hugo de Hugo Boss es una fragancia de la familia olfativa Aromática Verde para Hombres. Hugo se lanzó en 1995.
Su longevidad y su estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/hugo_hugo_boss.webp',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: '''Manzana
Verde''',
                imageNotaSalida2: 'assets/images/lavanda.jpg',
                textNotaSalida2: 'Lavanda',
                imageNotaSalida3: 'assets/images/menta.jpg',
                textNotaSalida3: 'Menta',
                imageNotaSalida4: 'assets/images/toronja.jpg',
                textNotaSalida4: 'Toronja',
                imageNotaSalida5: 'assets/images/albahaca.jpg',
                textNotaSalida5: 'Albahaca',
                imageCorazon: 'assets/images/salvia.jpg',
                textCorazon: 'Salvia',
                imageCorazon2: 'assets/images/geranio.jpg',
                textCorazon2: 'Geranio',
                imageCorazon3: 'assets/images/clavel.jpg',
                textCorazon3: 'Clavel',
                imageCorazon4: 'assets/images/jazmin.jpg',
                textCorazon4: 'Jazmín',
                imageBase: 'assets/images/abeto.jpg',
                textBase: 'Abeto',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 215,
                containerColor2: Color.fromRGBO(137, 204, 51, 1),
                colorText2: Colors.black,
                text2: 'freso especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(61, 162, 73, 1),
                colorText3: Colors.white,
                text3: 'verde',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(158, 121, 87, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(189, 238, 243, 1),
                colorText5: Colors.black87,
                text5: 'fresco',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(253, 143, 122, 1),
                colorText6: Colors.black54,
                text6: 'afrutados',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(240, 225, 243, 1),
                colorText7: Colors.black54,
                text7: 'lavanda',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(170, 203, 181, 1),
                colorText8: Colors.black45,
                text8: 'herbal',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(251, 255, 162, 1),
                colorText9: Colors.black45,
                text9: 'cítrico',
              ),
              //TODO: 32
              BuscadorAromas(
                title: 'Acqua di Gio - Giorgio Armani',
                description: '''
Acqua di Gio de Giorgio Armani es una fragancia de la familia olfativa Aromática Acuática para Hombres. Acqua di Gio
se lanzó en 1996. Su longevidad y su estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/acqua_di_gio_giorgio_armani.webp',
                imageNotaSalida: 'assets/images/lima.jpg',
                textNotaSalida: 'Lima',
                imageNotaSalida2: 'assets/images/limon.jpg',
                textNotaSalida2: 'Limón',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageNotaSalida4: 'assets/images/jazmin.jpg',
                textNotaSalida4: 'Jazmín',
                imageNotaSalida5: 'assets/images/naranja.jpg',
                textNotaSalida5: 'Naranja',
                imageNotaSalida6: 'assets/images/mandarina.jpg',
                textNotaSalida6: 'Mandarina',
                imageNotaSalida7: 'assets/images/neroli.jpg',
                textNotaSalida7: 'Neroli',
                imageCorazon: 'assets/images/notas_marinas.jpg',
                textCorazon: '''Notas
Marinas''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/calone.jpg',
                textCorazon3: 'Calone',
                imageCorazon4: 'assets/images/romero.jpg',
                textCorazon4: 'Romero',
                imageCorazon5: 'assets/images/durazno.jpg',
                textCorazon5: 'Durazno',
                imageCorazon6: 'assets/images/fresia.jpg',
                textCorazon6: 'Fresia',
                imageCorazon7: 'assets/images/jacinto.jpg',
                textCorazon7: 'Jacinto',
                imageCorazon8: 'assets/images/ciclamen.jpg',
                textCorazon8: 'Ciclamen',
                imageCorazon9: 'assets/images/violeta.jpg',
                textCorazon9: 'Violeta',
                imageCorazon10: 'assets/images/cilantro.jpg',
                textCorazon10: 'Cilantro',
                imageCorazon11: 'assets/images/nuez_moscada.jpg',
                textCorazon11: '''Nuez
Moscada''',
                imageCorazon12: 'assets/images/rosa.jpg',
                textCorazon12: 'Rosa',
                imageCorazon13: 'assets/images/reseda.jpg',
                textCorazon13: 'Reseda',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: '''Almizcle
Blanco''',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo de
Roble''',
                imageBase4: 'assets/images/pachuli.jpg',
                textBase4: 'Pachulí',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(112, 187, 171, 1),
                colorText2: Colors.black87,
                text2: 'aromático',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(98, 142, 190, 1),
                colorText3: Colors.white70,
                text3: 'marino',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(183, 224, 131, 1),
                colorText4: Colors.black54,
                text4: 'fresco especiado',
                containerWidth5: 125,
                containerColor5: Color.fromRGBO(255, 166, 191, 1),
                colorText5: Colors.black45,
                text5: 'florales',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(182, 155, 129, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(202, 241, 245, 1),
                colorText7: Colors.black45,
                text7: 'fresco',
              ),
              //TODO: 33
              BuscadorAromas(
                title: 'Polo Blue - Ralph Lauren',
                description: '''
Polo Blue de Ralph Lauren es una fragancia de la familia olfativa Aromática Fougère para Hombres. Polo Blue se lanzó
en 2003. Su longevidad y su estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/polo_blue_ralph_lauren.jpg',
                imageNotaSalida: 'assets/images/pepino.jpg',
                textNotaSalida: 'Pepino',
                imageNotaSalida2: 'assets/images/melon.jpg',
                textNotaSalida2: 'Melón',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/albahaca.jpg',
                textCorazon: 'Albahaca',
                imageCorazon2: 'assets/images/salvia.jpg',
                textCorazon2: 'Salvia',
                imageCorazon3: 'assets/images/geranio.jpg',
                textCorazon3: 'Geranio',
                imageBase: 'assets/images/gamuza.jpg',
                textBase: 'Gamuza',
                imageBase2: 'assets/images/notas_amaderadas.jpg',
                textBase2: '''Notas
Amaderadas''',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(201, 253, 251, 1),
                colorText: Colors.black,
                text: 'ozónico',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(111, 208, 228, 1),
                colorText2: Colors.black,
                text2: 'acuático',
                containerWidth3: 170,
                containerColor3: Color.fromRGBO(110, 186, 170, 1),
                colorText3: Colors.black87,
                text3: 'aromático',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(169, 217, 106, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(89, 176, 100, 1),
                colorText5: Colors.white,
                text5: 'verde',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(239, 229, 241, 1),
                colorText6: Colors.black87,
                text6: 'almizclado',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(165, 199, 177, 1),
                colorText7: Colors.black54,
                text7: 'herbal',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(197, 240, 244, 1),
                colorText8: Colors.black54,
                text8: 'fresco',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(179, 150, 124, 1),
                colorText9: Colors.white70,
                text9: 'amaderado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(251, 255, 160, 1),
                colorText10: Colors.black45,
                text10: 'cítrico',
              ),
              //TODO: 34
              BuscadorAromas(
                title: 'Carolina Herrera - Carolina Herrera',
                description: '''
Carolina Herrera de Carolina Herrera es una fragancia de la familia olfativa Floral para Hombres y Mujeres.
Carolina Herrera se lanzó en 2016. Su longevidad es muy duradera y su estela es pesada. Es un aroma Femenino.
''',
                imageLocion:
                    'assets/images/carolina_herrera_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/notas_verdes.jpg',
                textNotaSalida: '''Notas
Verdes''',
                imageNotaSalida2: 'assets/images/citricos.jpg',
                textNotaSalida2: 'Cítricos',
                imageCorazon: 'assets/images/nardos.jpg',
                textCorazon: 'Nardos',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageBase: 'assets/images/notas_amaderadas.jpg',
                textBase: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 180,
                containerColor2: Color.fromRGBO(239, 251, 246, 1),
                colorText2: Colors.black87,
                text2: 'nardos',
                containerWidth3: 165,
                containerColor3: Color.fromRGBO(84, 173, 94, 1),
                colorText3: Colors.white,
                text3: 'verdes',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(251, 255, 144, 1),
                colorText4: Colors.black54,
                text4: 'cítrico',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(172, 140, 111, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(200, 240, 245, 1),
                colorText6: Colors.black45,
                text6: 'fresco',
                containerWidth7: 115,
                containerColor7: Color.fromRGBO(195, 160, 131, 1),
                colorText7: Colors.white60,
                text7: 'animálico',
              ),
              //TODO: 35
              BuscadorAromas(
                title: 'CH (2015) - Carolina Herrera',
                description: '''
CH (2015) de Carolina Herrera es una fragancia de la familia olfativa Ámbar Floral para Mujeres. CH (2015) se lanzó
en 2015. Su longevidad y su estela son moderadas. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/ch_2015_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/toronja.jpg',
                textNotaSalida: 'Toronja',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/limon.jpg',
                textNotaSalida3: 'Limón',
                imageCorazon: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon: '''Flor del
Naranjo''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: 'Rosa',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageBase: 'assets/images/cuero.jpg',
                textBase: 'Cuero',
                imageBase2: 'assets/images/praline.jpg',
                textBase2: 'Praliné',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/cedro.jpg',
                textBase5: 'Cedro',
                imageBase6: 'assets/images/almizcle.jpg',
                textBase6: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(153, 115, 79, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(243, 246, 252, 1),
                colorText3: Colors.black87,
                text3: 'floral blanco',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(168, 137, 128, 1),
                colorText4: Colors.white,
                text4: 'cuero',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(244, 128, 132, 1),
                colorText5: Colors.white,
                text5: 'dulce',
                containerWidth6: 130,
                containerColor6: Color.fromRGBO(190, 152, 120, 1),
                colorText6: Colors.white,
                text6: 'animálico',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(167, 168, 137, 1),
                colorText7: Colors.white,
                text7: 'pachulí',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(142, 201, 188, 1),
                colorText8: Colors.black45,
                text8: 'aromático',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(245, 236, 226, 1),
                colorText9: Colors.black45,
                text9: 'atalcado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(187, 225, 138, 1),
                colorText10: Colors.black45,
                text10: 'fresco especiado',
              ),
              //TODO: 36
              BuscadorAromas(
                title: '212 VIP Rosé - Carolina Herrera',
                description: '''
212 VIP Rosé de Carolina Herrera es una fragancia de la familia olfativa Floral Frutal para Mujeres. 212 VIP Rosé
se lanzó en 2014. Su longevidad y su estela son moderadas. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/212_vip_rose_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/champagne_rose.jpg',
                textNotaSalida: '''Champagne
Rosa''',
                imageNotaSalida2: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida2: '''Pimienta
Rosa''',
                imageCorazon: 'assets/images/flor_del_duraznero.jpg',
                textCorazon: '''Flor del
Duraznero''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: 'Rosa',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: '''Almizcle
Blanco''',
                imageBase2: 'assets/images/notas_amaderadas.jpg',
                textBase2: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(255, 95, 141, 1),
                colorText: Colors.black,
                text: 'florales',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(236, 224, 238, 1),
                colorText2: Colors.black87,
                text2: 'almizclado',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(159, 123, 89, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(253, 128, 105, 1),
                colorText4: Colors.black54,
                text4: 'afrutados',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(245, 235, 225, 1),
                colorText5: Colors.black45,
                text5: 'atalcado',
              ),
              //TODO: 37
              BuscadorAromas(
                title: '360° - Perry Ellis',
                description: '''
360° de Perry Ellis es una fragancia de la familia olfativa Floral para Mujeres. 360° se lanzó en 1992. Su longevidad
y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/360_perry_ellis.jpg',
                imageNotaSalida: 'assets/images/melon.jpg',
                textNotaSalida: 'Melón',
                imageNotaSalida2: 'assets/images/azucena.jpg',
                textNotaSalida2: 'Azucena',
                imageNotaSalida3: 'assets/images/osmanto.jpg',
                textNotaSalida3: 'Osmanto',
                imageNotaSalida4: 'assets/images/naranja_tangerina.jpg',
                textNotaSalida4: '''Naranja
Tangerina''',
                imageNotaSalida5: 'assets/images/rosa.jpg',
                textNotaSalida5: 'Rosa',
                imageCorazon: 'assets/images/nenufar.jpg',
                textCorazon: 'Nenúfar',
                imageCorazon2: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon2: '''Lirio de
los Valles''',
                imageCorazon3: 'assets/images/salvia.jpg',
                textCorazon3: 'Salvia',
                imageCorazon4: 'assets/images/lavanda.jpg',
                textCorazon4: 'Lavanda',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vetiver.jpg',
                textBase3: 'Vetiver',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/vainilla.jpg',
                textBase5: 'Vainilla',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(255, 112, 153, 1),
                colorText2: Colors.black,
                text2: 'florales',
                containerWidth3: 185,
                containerColor3: Color.fromRGBO(171, 233, 240, 1),
                colorText3: Colors.black,
                text3: 'fresco',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(133, 215, 232, 1),
                colorText4: Colors.black87,
                text4: 'acuático',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(110, 186, 169, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(253, 127, 103, 1),
                colorText6: Colors.black54,
                text6: 'afrutados',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(235, 162, 137, 1),
                colorText7: Colors.black54,
                text7: 'especiado suave',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(239, 229, 241, 1),
                colorText8: Colors.black54,
                text8: 'almizclado',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(166, 132, 101, 1),
                colorText9: Colors.white70,
                text9: 'amaderado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(221, 253, 252, 1),
                colorText10: Colors.black45,
                text10: 'ozónico',
              ),
              //TODO: 38
              BuscadorAromas(
                title: 'Paris Hilton - Paris Hilton',
                description: '''
Paris Hilton de Paris Hilton es una fragancia de la familia olfativa Floral Frutal para Mujeres. Paris Hilton se lanzó
en 2005. Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/paris_hilton_paris_hilton.jpg',
                imageNotaSalida: 'assets/images/melon.jpg',
                textNotaSalida: 'Melón',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageNotaSalida3: 'assets/images/durazno.jpg',
                textNotaSalida3: 'Durazno',
                imageCorazon: 'assets/images/fresia.jpg',
                textCorazon: 'Fresia',
                imageCorazon2: 'assets/images/mimosa.jpg',
                textCorazon2: 'Mimosa',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon4: '''Lirio de
los Valles''',
                imageCorazon5: 'assets/images/azucena.jpg',
                textCorazon5: 'Azucena',
                imageCorazon6: 'assets/images/nardos.jpg',
                textCorazon6: 'Nardos',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/ylang_ylang.jpg',
                textBase2: 'Ylang-Ylang',
                imageBase3: 'assets/images/sandalo.jpg',
                textBase3: 'Sándalo',
                imageBase4: 'assets/images/musgo_de_roble.jpg',
                textBase4: '''Musgo de
Roble''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(239, 244, 252, 1),
                colorText2: Colors.black87,
                text2: 'floral blanco',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(172, 233, 240, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(255, 139, 172, 1),
                colorText4: Colors.black54,
                text4: 'florales',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(243, 232, 220, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(243, 118, 121, 1),
                colorText6: Colors.white,
                text6: 'dulce',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(219, 253, 252, 1),
                colorText7: Colors.black54,
                text7: 'ozónico',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(151, 221, 235, 1),
                colorText8: Colors.black54,
                text8: 'acuático',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(95, 178, 105, 1),
                colorText9: Colors.white,
                text9: 'verde',
                containerWidth10: 135,
                containerColor10: Color.fromRGBO(255, 232, 98, 1),
                colorText10: Colors.black54,
                text10: 'floral amarillo',
              ),
              //TODO: 39
              BuscadorAromas(
                title: 'Can Can - Paris Hilton',
                description: '''
Can Can de Paris Hilton es una fragancia de la familia olfativa Floral Frutal para Mujeres. Can Can se lanzó en 2007.
Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/can_can_paris_hilton.webp',
                imageNotaSalida: 'assets/images/nectarina.jpg',
                textNotaSalida: 'Nectarina',
                imageNotaSalida2: 'assets/images/grosellas_negras.jpg',
                textNotaSalida2: '''Grosellas
Negras''',
                imageNotaSalida3: 'assets/images/clementina.jpg',
                textNotaSalida3: 'Clementina',
                imageCorazon: 'assets/images/orquidea.jpg',
                textCorazon: '''Orquídea
Silvestre''',
                imageCorazon2: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon2: '''Flor del
Naranjo''',
                imageBase: 'assets/images/ambar.jpg',
                textBase: 'Ámbar',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almzicle',
                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(241, 86, 90, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(202, 114, 66, 1),
                colorText3: Colors.white,
                text3: 'ámbar',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(242, 230, 218, 1),
                colorText4: Colors.black87,
                text4: 'atalcado',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(250, 255, 132, 1),
                colorText5: Colors.black87,
                text5: 'cítrico',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(255, 148, 179, 1),
                colorText6: Colors.black54,
                text6: 'florales',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(169, 137, 106, 1),
                colorText7: Colors.white,
                text7: 'amaderado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(189, 149, 117, 1),
                colorText8: Colors.white70,
                text8: 'animálico',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(238, 176, 155, 1),
                colorText9: Colors.black45,
                text9: 'especiado suave',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(241, 232, 243, 1),
                colorText10: Colors.black45,
                text10: 'almizclado',
              ),
              //TODO: 40
              BuscadorAromas(
                title: 'Heiress - Paris Hilton',
                description: '''
Heiress de Paris Hilton es una fragancia de la familia olfativa Floral Frutal para Mujeres. Heiress se lanzó en 2006.
Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/heiress_paris_hilton.jpg',
                imageNotaSalida: 'assets/images/champaña.jpg',
                textNotaSalida: 'Champaña',
                imageNotaSalida2: 'assets/images/maracuya.jpg',
                textNotaSalida2: 'Maracuyá',
                imageNotaSalida3: 'assets/images/durazno.jpg',
                textNotaSalida3: 'Durazno',
                imageNotaSalida4: 'assets/images/naranja.jpg',
                textNotaSalida4: 'Naranja',
                imageNotaSalida5: 'assets/images/mimosa.jpg',
                textNotaSalida5: 'Mimosa',
                imageCorazon: 'assets/images/granadina.jpg',
                textCorazon: 'Granadina',
                imageCorazon2: 'assets/images/flor_de_tiare.jpg',
                textCorazon2: '''Flor de
Tiaré''',
                imageCorazon3: 'assets/images/ylang_ylang.jpg',
                textCorazon3: '''Ylang-
Ylang''',
                imageCorazon4: 'assets/images/madreselva.jpg',
                textCorazon4: '''Madre
Selva''',
                imageCorazon5: 'assets/images/jazmin.jpg',
                textCorazon5: '''Jazmín de
Estrella''',
                imageBase: 'assets/images/cumarina.jpg',
                textBase: 'Haba Tonka',
                imageBase2: 'assets/images/hojas_de_violeta.jpg',
                textBase2: '''Hojas de
Violeta''',
                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Maderas
Blancas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(239, 73, 77, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(238, 222, 242, 1),
                colorText3: Colors.black87,
                text3: 'champán',
                containerWidth4: 140,
                containerColor4: Color.fromRGBO(249, 205, 101, 1),
                colorText4: Colors.black54,
                text4: 'tropical',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(251, 255, 147, 1),
                colorText5: Colors.black54,
                text5: 'cítrico',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(231, 241, 249, 1),
                colorText6: Colors.black54,
                text6: 'aldehídico',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(244, 247, 252, 1),
                colorText7: Colors.black54,
                text7: 'floral blanco',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(255, 234, 117, 1),
                colorText8: Colors.black54,
                text8: 'floral amarillo',
                containerWidth9: 115,
                containerColor9: Color.fromRGBO(201, 241, 245, 1),
                colorText9: Colors.black45,
                text9: 'fresco',
              ),
              //TODO: 41
              BuscadorAromas(
                title: 'Toy 2 - Moschino',
                description: '''
Toy 2 de Moschino es una fragancia de la familia olfativa Almizcle Floral Amaderado para Mujeres. Toy 2 se lanzó
en 2018. Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/toy_2_moschino.jpg',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: 'Manzana',
                imageNotaSalida2: 'assets/images/mandarina.jpg',
                textNotaSalida2: 'Mandarina',
                imageNotaSalida3: 'assets/images/magnolia.jpg',
                textNotaSalida3: 'Magnolia',
                imageCorazon: 'assets/images/grosella_blanca.jpg',
                textCorazon: '''Grosella
Blanca''',
                imageCorazon2: 'assets/images/peonia.jpg',
                textCorazon2: 'Peonía',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/amberwood.jpg',
                textBase3: 'Amberwood',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 160,
                containerColor2: Color.fromRGBO(255, 138, 171, 1),
                colorText2: Colors.black87,
                text2: 'florales',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(185, 237, 242, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(243, 122, 126, 1),
                colorText4: Colors.white,
                text4: 'dulce',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(251, 255, 143, 1),
                colorText5: Colors.black54,
                text5: 'cítrico',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(239, 230, 241, 1),
                colorText6: Colors.black54,
                text6: 'almizclado',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(120, 191, 129, 1),
                colorText7: Colors.white70,
                text7: 'verde',
                containerWidth8: 120,
                containerColor8: Color.fromRGBO(245, 236, 226, 1),
                colorText8: Colors.black45,
                text8: 'atalcado',
                containerWidth9: 115,
                containerColor9: Color.fromRGBO(239, 183, 164, 1),
                colorText9: Colors.black45,
                text9: 'especiado suave',
                containerWidth10: 115,
                containerColor10: Color.fromRGBO(245, 248, 252, 1),
                colorText10: Colors.black45,
                text10: 'floral blanco',
              ),
              //TODO: 42
              BuscadorAromas(
                title: 'Amor Amor - Cacharel',
                description: '''
Amor Amor de Cacharel es una fragancia de la familia olfativa Floral Frutal para Mujeres. Amor Amor se lanzó en 2003.
Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/amor_amor_cacharel.webp',
                imageNotaSalida: 'assets/images/grosellas_negras.jpg',
                textNotaSalida: '''Grosellas
Negras''',
                imageNotaSalida2: 'assets/images/naranja.jpg',
                textNotaSalida2: 'Naranja',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageNotaSalida4: 'assets/images/toronja.jpg',
                textNotaSalida4: 'Toronja',
                imageNotaSalida5: 'assets/images/casia.jpg',
                textNotaSalida5: 'Casia',
                imageNotaSalida6: 'assets/images/bergamota.jpg',
                textNotaSalida6: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/albaricoque.jpg',
                textCorazon2: 'Chabacano',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/azucena.jpg',
                textCorazon4: 'Azucena',
                imageCorazon5: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon5: '''Lirio de
Valle''',
                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',
                imageBase2: 'assets/images/cumarina.jpg',
                textBase2: '''Haba
Tonka''',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/cedro.jpg',
                textBase5: 'Cedro',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(252, 90, 59, 1),
                colorText2: Colors.black,
                text2: 'afrutados',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(255, 254, 204, 1),
                colorText3: Colors.black87,
                text3: 'avainillado',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(236, 168, 145, 1),
                colorText4: Colors.black54,
                text4: 'especiado suave',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(128, 195, 180, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 160,
                containerColor6: Color.fromRGBO(244, 128, 131, 1),
                colorText6: Colors.white,
                text6: 'dulce',
                containerWidth7: 155,
                containerColor7: Color.fromRGBO(244, 234, 223, 1),
                colorText7: Colors.black54,
                text7: 'atalcado',
                containerWidth8: 155,
                containerColor8: Color.fromRGBO(244, 247, 252, 1),
                colorText8: Colors.black54,
                text8: 'floral blanco',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(254, 104, 167, 1),
                colorText9: Colors.white,
                text9: 'rosas',
                containerWidth10: 140,
                containerColor10: Color.fromRGBO(175, 145, 117, 1),
                colorText10: Colors.white,
                text10: 'amaderado',
              ),
              //TODO: 43
              BuscadorAromas(
                title: 'La Vie Est Belle - Lancôme',
                description: '''
La Vie Est Belle de Lancôme es una fragancia de la familia olfativa Floral Frutal Gourmand para Mujeres. La Vie Est Belle
se lanzó en 2012. Su longevidad es duradera y su estela es pesada. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/la_vie_est_belle_lancome.jpg',
                imageNotaSalida: 'assets/images/grosellas_negras.jpg',
                textNotaSalida: '''Grosellas
Negras''',
                imageNotaSalida2: 'assets/images/pera.jpg',
                textNotaSalida2: 'Pera',
                imageCorazon: 'assets/images/iris.jpg',
                textCorazon: 'Iris',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon3: '''Flor del
Naranjo''',
                imageBase: 'assets/images/praline.jpg',
                textBase: 'Praliné',
                imageBase2: 'assets/images/vainilla.jpg',
                textBase2: 'Vainilla',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                imageBase4: 'assets/images/cumarina.jpg',
                textBase4: '''Haba
Tonka''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(255, 254, 202, 1),
                colorText2: Colors.black,
                text2: 'avainillado',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(253, 128, 105, 1),
                colorText3: Colors.black87,
                text3: 'afrutados',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(156, 157, 122, 1),
                colorText4: Colors.white,
                text4: 'pachulí',
                containerWidth5: 155,
                containerColor5: Color.fromRGBO(169, 137, 106, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(244, 247, 252, 1),
                colorText6: Colors.black54,
                text6: 'floral blanco',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(245, 235, 224, 1),
                colorText7: Colors.black54,
                text7: 'atalcado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(159, 153, 144, 1),
                colorText8: Colors.white70,
                text8: 'terrosos',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(214, 206, 232, 1),
                colorText9: Colors.black45,
                text9: 'iris',
                containerWidth10: 135,
                containerColor10: Color.fromRGBO(226, 142, 114, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 44
              BuscadorAromas(
                title: 'Light Blue - Dolce&Gabbana',
                description: '''
Light Blue de Dolce&Gabbana es una fragancia de la familia olfativa Floral Frutal para Mujeres. Light Blue se lanzó
en 2001. Su longevidad es duradera y su estela es pesada. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/light_blue_dolce_gabbana.jpg',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: '''Limón
Siciliano''',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageNotaSalida3: 'assets/images/cedro.jpg',
                textNotaSalida3: 'Cedro',
                imageNotaSalida4: 'assets/images/campanilla.jpg',
                textNotaSalida4: 'Campanilla',
                imageCorazon: 'assets/images/bambu.jpg',
                textCorazon: 'Bambú',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/rosa.jpg',
                textCorazon3: '''Rosa
Blanca''',
                imageBase: 'assets/images/cedro.jpg',
                textBase: 'Cedro',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(147, 107, 69, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(186, 237, 242, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(253, 139, 117, 1),
                colorText4: Colors.black54,
                text4: 'afrutados',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(133, 197, 183, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 110,
                containerColor6: Color.fromRGBO(241, 233, 243, 1),
                colorText6: Colors.black45,
                text6: 'almizclado',
                containerWidth7: 105,
                containerColor7: Color.fromRGBO(245, 236, 227, 1),
                colorText7: Colors.black45,
                text7: 'atalcado',
                containerWidth8: 100,
                containerColor8: Color.fromRGBO(129, 195, 137, 1),
                colorText8: Colors.white70,
                text8: 'verde',
              ),
              //TODO: 45
              BuscadorAromas(
                title: 'Kim Kardashian - Kim Kardashian',
                description: '''
Kim Kardashian de Kim Kardashian es una fragancia de la familia olfativa Ámbar Floral para Mujeres. Kim Kardashian
se lanzó en 2009. Su longevidad es duradera y su estela es pesada. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/kim_kardashian_kim_kardashian.jpg',
                imageNotaSalida: 'assets/images/madreselva.jpg',
                textNotaSalida: 'Madreselva',
                imageNotaSalida2:
                    'assets/images/flor_de_azahar_del_naranjo.jpg',
                textNotaSalida2: '''Flor del
Naranjo''',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/nardos.jpg',
                textCorazon: 'Nardos',
                imageCorazon2: 'assets/images/gardenia.jpg',
                textCorazon2: 'Gardenia',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/especias.jpg',
                textCorazon4: 'Especias',
                imageBase: 'assets/images/cumarina.jpg',
                textBase: '''Haba
Tonka''',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/sandalo.jpg',
                textBase3: 'Sándalo',
                imageBase4: 'assets/images/orquidea.jpg',
                textBase4: 'Orquídea',
                imageBase5: 'assets/images/notas_amaderadas.jpg',
                textBase5: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 130,
                containerColor2: Color.fromRGBO(243, 252, 248, 1),
                colorText2: Colors.black45,
                text2: 'nardos',
                containerWidth3: 120,
                containerColor3: Color.fromRGBO(195, 159, 130, 1),
                colorText3: Colors.white70,
                text3: 'animálico',
              ),
              //TODO: 46
              BuscadorAromas(
                title: 'Angel - Mugler',
                description: '''
Angel de Mugler es una fragancia de la familia olfativa Ámbar Vainilla para Mujeres. Angel se lanzó en 1992. Su
longevidad es muy duradera y su estela es enorme. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/angel_mugler.webp',
                imageNotaSalida: 'assets/images/algodon_de_azucar.jpg',
                textNotaSalida: '''Algodón de
Azúcar''',
                imageNotaSalida2: 'assets/images/coco.jpg',
                textNotaSalida2: 'Coco',
                imageNotaSalida3: 'assets/images/casia.jpg',
                textNotaSalida3: 'Casis',
                imageNotaSalida4: 'assets/images/melon.jpg',
                textNotaSalida4: 'Melón',
                imageNotaSalida5: 'assets/images/jazmin.jpg',
                textNotaSalida5: 'Jazmín',
                imageNotaSalida6: 'assets/images/bergamota.jpg',
                textNotaSalida6: 'Bergamota',
                imageNotaSalida7: 'assets/images/piña.jpg',
                textNotaSalida7: 'Piña',
                imageNotaSalida8: 'assets/images/mandarina.jpg',
                textNotaSalida8: 'Mandarina',
                imageCorazon: 'assets/images/miel.jpg',
                textCorazon: 'Miel',
                imageCorazon2: 'assets/images/bayas_rojas.jpg',
                textCorazon2: '''Bayas
Rojas''',
                imageCorazon3: 'assets/images/zarzamora.jpg',
                textCorazon3: 'Zarzamora',
                imageCorazon4: 'assets/images/ciruela.jpg',
                textCorazon4: 'Ciruela',
                imageCorazon5: 'assets/images/rosa.jpg',
                textCorazon5: 'Rosa',
                imageCorazon6: 'assets/images/durazno.jpg',
                textCorazon6: 'Durazno',
                imageCorazon7: 'assets/images/jazmin.jpg',
                textCorazon7: 'Jazmín',
                imageCorazon8: 'assets/images/nuez_moscada.jpg',
                textCorazon8: '''Nuez
Moscada''',
                imageCorazon9: 'assets/images/orquidea.jpg',
                textCorazon9: 'Orquídea',
                imageCorazon10: 'assets/images/alcaravea.jpg',
                textCorazon10: 'Alcaravea',
                imageCorazon11: 'assets/images/albaricoque.jpg',
                textCorazon11: 'Chabacano',
                imageCorazon12: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon12: '''Lirio de
los Valles''',
                imageBase: 'assets/images/pachuli.jpg',
                textBase: 'Pachulí',
                imageBase2: 'assets/images/chocolate.jpg',
                textBase2: 'Chocolate',
                imageBase3: 'assets/images/caramelo.jpg',
                textBase3: 'Caramelo',
                imageBase4: 'assets/images/vainilla.jpg',
                textBase4: 'Vainilla',
                imageBase5: 'assets/images/cumarina.jpg',
                textBase5: '''Haba
Tonka''',
                imageBase6: 'assets/images/ambar.jpg',
                textBase6: 'Ámbar',
                imageBase7: 'assets/images/almizcle.jpg',
                textBase7: 'Almizcle',
                imageBase8: 'assets/images/sandalo.jpg',
                textBase8: 'Sándalo',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 160,
                containerColor2: Color.fromRGBO(150, 151, 115, 1),
                colorText2: Colors.white,
                text2: 'pachulí',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(253, 135, 113, 1),
                colorText3: Colors.black87,
                text3: 'afrutados',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(221, 120, 87, 1),
                colorText4: Colors.white,
                text4: 'cálido especiado',
                containerWidth5: 155,
                containerColor5: Color.fromRGBO(232, 194, 144, 1),
                colorText5: Colors.black87,
                text5: 'caramelo',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(255, 254, 215, 1),
                colorText6: Colors.black87,
                text6: 'avainillado',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(173, 142, 113, 1),
                colorText7: Colors.white,
                text7: 'amaderado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(252, 205, 112, 1),
                colorText8: Colors.black54,
                text8: 'amielado',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(245, 235, 226, 1),
                colorText9: Colors.black54,
                text9: 'atalcado',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(166, 139, 113, 1),
                colorText10: Colors.white70,
                text10: 'chocolate',
              ),
              //TODO: 47
              BuscadorAromas(
                title: 'Halloween - Halloween',
                description: '''
Halloween de Halloween es una fragancia de la familia olfativa Ámbar Floral para Mujeres. Halloween se lanzó en 1997.
Su longevidad y su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/halloween_halloween.jpg',
                imageNotaSalida: 'assets/images/violeta.jpg',
                textNotaSalida: 'Violeta',
                imageNotaSalida2: 'assets/images/notas_marinas.jpg',
                textNotaSalida2: '''Notas
Marinas''',
                imageNotaSalida3: 'assets/images/hojas_de_platano.jpg',
                textNotaSalida3: '''Hojas de
Plátano''',
                imageNotaSalida4: 'assets/images/petit_grain.jpg',
                textNotaSalida4: '''Petit
Grain''',
                imageCorazon: 'assets/images/violeta.jpg',
                textCorazon: 'Violeta',
                imageCorazon2: 'assets/images/magnolia.jpg',
                textCorazon2: 'Magnolia',
                imageCorazon3: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon3: '''Lirio de
los Valles''',
                imageCorazon4: 'assets/images/nardos.jpg',
                textCorazon4: 'Nardos',
                imageCorazon5: 'assets/images/pimienta.jpg',
                textCorazon5: 'Pimienta',
                imageBase: 'assets/images/incienso.jpg',
                textBase: 'Incienso',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vainilla.jpg',
                textBase3: 'Vainilla',
                imageBase4: 'assets/images/mirra.jpg',
                textBase4: 'Mirra',
                containerWidth: 230,
                containerColor: Color.fromRGBO(156, 29, 255, 1),
                colorText: Colors.white,
                text: 'violeta',
                containerWidth2: 212,
                containerColor2: Color.fromRGBO(239, 224, 208, 1),
                colorText2: Colors.black,
                text2: 'atalcado',
                containerWidth3: 210,
                containerColor3: Color.fromRGBO(37, 98, 164, 1),
                colorText3: Colors.white,
                text3: 'marino',
                containerWidth4: 208,
                containerColor4: Color.fromRGBO(255, 112, 153, 1),
                colorText4: Colors.black,
                text4: 'florales',
                containerWidth5: 206,
                containerColor5: Color.fromRGBO(41, 153, 55, 1),
                colorText5: Colors.white,
                text5: 'verde',
                containerWidth6: 185,
                containerColor6: Color.fromRGBO(95, 179, 160, 1),
                colorText6: Colors.black87,
                text6: 'aromático',
                containerWidth7: 185,
                containerColor7: Color.fromRGBO(175, 234, 240, 1),
                colorText7: Colors.black87,
                text7: 'fresco',
                containerWidth8: 165,
                containerColor8: Color.fromRGBO(242, 245, 252, 1),
                colorText8: Colors.black54,
                text8: 'floral blanco',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(167, 134, 103, 1),
                colorText9: Colors.white,
                text9: 'amaderado',
                containerWidth10: 143,
                containerColor10: Color.fromRGBO(213, 143, 105, 1),
                colorText10: Colors.white,
                text10: 'ámbar',
              ),
              //TODO: 48
              BuscadorAromas(
                title: 'CK2 - Calvin Klein',
                description: '''
CK2 de Calvin Klein es una fragancia de la familia olfativa Amaderada Aromática para Hombres y Mujeres. CK2 se lanzó
en 2016. Tiene una longevidad y estela moderadas. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/ck2_calvin_klein.webp',
                imageNotaSalida: 'assets/images/wasabi.jpg',
                textNotaSalida: 'Wasabi',
                imageNotaSalida2: 'assets/images/hojas_de_violeta.jpg',
                textNotaSalida2: '''Hojas de
Violeta''',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageNotaSalida4: 'assets/images/pera.jpg',
                textNotaSalida4: 'Pera',
                imageCorazon: 'assets/images/piedrecillas.jpg',
                textCorazon: 'Piedrecillas',
                imageCorazon2: 'assets/images/hediona.jpg',
                textCorazon2: 'Hediona',
                imageCorazon3: 'assets/images/raiz_de_lirio.jpg',
                textCorazon3: '''Raíz de
Lirio''',
                imageCorazon4: 'assets/images/peonia.jpg',
                textCorazon4: 'Peonía',
                imageCorazon5: 'assets/images/rosa.jpg',
                textCorazon5: 'Rosa',
                imageBase: 'assets/images/vetiver.jpg',
                textBase: 'Vetiver',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/incienso.jpg',
                textBase3: 'Incienso',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                containerWidth: 230,
                containerColor: Color.fromRGBO(113, 187, 191, 1),
                colorText: Colors.black,
                text: 'mineral',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(150, 209, 73, 1),
                colorText2: Colors.black87,
                text2: 'fresco especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(211, 253, 252, 1),
                colorText3: Colors.black87,
                text3: 'ozónico',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(129, 214, 231, 1),
                colorText4: Colors.black87,
                text4: 'acuático',
                containerWidth5: 170,
                containerColor5: Color.fromRGBO(148, 107, 70, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 165,
                containerColor6: Color.fromRGBO(255, 131, 166, 1),
                colorText6: Colors.black87,
                text6: 'florales',
                containerWidth7: 155,
                containerColor7: Color.fromRGBO(76, 170, 87, 1),
                colorText7: Colors.white,
                text7: 'verde',
                containerWidth8: 145,
                containerColor8: Color.fromRGBO(183, 236, 242, 1),
                colorText8: Colors.black54,
                text8: 'fresco',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(243, 232, 221, 1),
                colorText9: Colors.black45,
                text9: 'atalcado',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(145, 137, 127, 1),
                colorText10: Colors.white70,
                text10: 'terrosos',
              ),
              //TODO: 49
            ],
          ),
        ),
      ],
    );
  }
}

/*
class SearchhBar2 extends StatefulWidget {

  // ignore: use_super_parameters
  const SearchhBar2({Key? key}) : super(key: key);

  @override
  State<SearchhBar2> createState() => _SearchhBar2State();
}

class _SearchhBar2State extends State<SearchhBar2> {
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
    "CH Men - Carolina Herrera": 'assets/images/ch_carolina_herrera.webp',
    "212 VIP Men Wins - Carolina Herrera":
        'assets/images/212_vip_wins_carolina_herrera.jpeg',
    "1 Million Parfum - Paco Rabanne":
        'assets/images/1_million_paco_rabanne.webp',
    "1 Million Lucky - Paco Rabanne":
        'assets/images/1_million_lucky_paco_rabanne.jpeg',
    "Invictus - Paco Rabanne": 'assets/images/invictus_paco_rabanne.jpg',
    "Black XS - Paco Rabanne": 'assets/images/black_xs_paco_rabanne.webp',
    "Sauvage - Dior": 'assets/images/sauvage_dior.jpg',
    "Fahrenheit - Dior": 'assets/images/fahrenheit_dior.jpeg',
    "CK One - Calvin Klein": 'assets/images/ck_one_calvin_klein.jpeg',
    "360° for Men - Perry Ellis": 'assets/images/360_for_men_perry_ellis.jpg',
    "Nautica Voyage - Nautica": 'assets/images/nautica_voyage_nautica.jpg',
    "Toy Boy - Moschino": 'assets/images/toy_boy_moschino.webp',
    "Red - Lacoste": 'assets/images/red_lacoste.webp',
    "L'Eau d'Issey Pour Homme Eau & Cèdre - Issey Miyake":
        'assets/images/issey_miyake_issey_miyake.webp',
    "Hugo - Hugo Boss": 'assets/images/hugo_hugo_boss.webp',
    "Acqua di Gio - Giorgio Armani":
        'assets/images/acqua_di_gio_giorgio_armani.webp',
    "Polo Blue - Ralph Lauren": 'assets/images/polo_blue_ralph_lauren.jpg',
    "Carolina Herrera - Carolina Herrera":
        'assets/images/carolina_herrera_carolina_herrera.jpg',
    "CH (2015) - Carolina Herrera":
        'assets/images/ch_2015_carolina_herrera.jpg',
    "212 VIP Rosé - Carolina Herrera":
        'assets/images/212_vip_rose_carolina_herrera.jpg',
    "360° - Perry Ellis": 'assets/images/360_perry_ellis.jpg',
    "Paris Hilton - Paris Hilton":
        'assets/images/paris_hilton_paris_hilton.jpg',
    "Can Can - Paris Hilton": 'assets/images/can_can_paris_hilton.webp',
    "Heiress - Paris Hilton": 'assets/images/heiress_paris_hilton.jpg',
    "Toy 2 - Moschino": 'assets/images/toy_2_moschino.jpg',
    "Amor Amor - Cacharel": 'assets/images/amor_amor_cacharel.webp',
    "La Vie Est Belle - Lancôme": 'assets/images/la_vie_est_belle_lancome.jpg',
    "Light Blue - Dolce&Gabbana": 'assets/images/light_blue_dolce_gabbana.jpg',
    "Kim Kardashian - Kim Kardashian":
        'assets/images/kim_kardashian_kim_kardashian.jpg',
    "Angel - Mugler": 'assets/images/angel_mugler.webp',
    "Halloween - Halloween": 'assets/images/halloween_halloween.jpg',
    "CK2 - Calvin Klein": 'assets/images/ck2_calvin_klein.webp',
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
        case '212 VIP Men Wins - Carolina Herrera':
          _selectedIndex = 18;
          break;
        case '1 Million Parfum - Paco Rabanne':
          _selectedIndex = 19;
          break;
        case '1 Million Lucky - Paco Rabanne':
          _selectedIndex = 20;
          break;
        case 'Invictus - Paco Rabanne':
          _selectedIndex = 21;
          break;
        case 'Black XS - Paco Rabanne':
          _selectedIndex = 22;
          break;
        case 'Sauvage - Dior':
          _selectedIndex = 23;
          break;
        case 'Fahrenheit - Dior':
          _selectedIndex = 24;
          break;
        case 'CK One - Calvin Klein':
          _selectedIndex = 25;
          break;
        case '360° for Men - Perry Ellis':
          _selectedIndex = 26;
          break;
        case 'Nautica Voyage - Nautica':
          _selectedIndex = 27;
          break;
        case 'Toy Boy - Moschino':
          _selectedIndex = 28;
          break;
        case 'Red - Lacoste':
          _selectedIndex = 29;
          break;
        case 'L\'Eau d\'Issey Pour Homme Eau & Cèdre - Issey Miyake':
          _selectedIndex = 30;
          break;
        case 'Hugo - Hugo Boss':
          _selectedIndex = 31;
          break;
        case 'Acqua di Gio - Giorgio Armani':
          _selectedIndex = 32;
          break;
        case 'Polo Blue - Ralph Lauren':
          _selectedIndex = 33;
          break;
        case 'Carolina Herrera - Carolina Herrera':
          _selectedIndex = 34;
          break;
        case 'CH (2015) - Carolina Herrera':
          _selectedIndex = 35;
          break;
        case '212 VIP Rosé - Carolina Herrera':
          _selectedIndex = 36;
          break;
        case '360° - Perry Ellis':
          _selectedIndex = 37;
          break;
        case 'Paris Hilton - Paris Hilton':
          _selectedIndex = 38;
          break;
        case 'Can Can - Paris Hilton':
          _selectedIndex = 39;
          break;
        case 'Heiress - Paris Hilton':
          _selectedIndex = 40;
          break;
        case 'Toy 2 - Moschino':
          _selectedIndex = 41;
          break;
        case 'Amor Amor - Cacharel':
          _selectedIndex = 42;
          break;
        case 'La Vie Est Belle - Lancôme':
          _selectedIndex = 43;
          break;
        case 'Light Blue - Dolce&Gabbana':
          _selectedIndex = 44;
          break;
        case 'Kim Kardashian - Kim Kardashian':
          _selectedIndex = 45;
          break;
        case 'Angel - Mugler':
          _selectedIndex = 46;
          break;
        case 'Halloween - Halloween':
          _selectedIndex = 47;
          break;
        case 'CK2 - Calvin Klein':
          _selectedIndex = 48;
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
          width: 800,
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
            height: 150,
            child: ListView.builder(
              itemCount: filteredSuggestions.length,
              itemBuilder: (context, index) {
                final suggestion = filteredSuggestions[index];
                return ListTile(
                  leading: Image.network(
                    suggestionImages[suggestion] ??
                        '',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(suggestion),
                  onTap: () => _navigateToWidget(suggestion),
                );
              },
            ),
          ),
        SizedBox(
          height: _selectedIndex == 0 ? 0 : 800,
          width: 800,
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              //TODO: 0
              SizedBox.shrink(),
              //TODO: 1
              Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Yara - Lattafa',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
           ],
          ),
        ),
      ],
    );
  }
}

*/
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
    "L'Eau d'Issey Pour Homme - Issey Miyake",
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
  ];

  final Map<String, String> suggestionImages = {
    "Yara - Lattafa": 'assets/images/yara_lattafa.jpg',
    "Ombre Nomade - Louis Vuitton":
        'assets/images/ombre_nomade_louis_vuitton.webp',
    "Bade'e Al Oud Amethyst - Lattafa": 'assets/images/amethyst_lattafa.webp',
    "Oud For Greatness - Initio": 'assets/images/oud_for_greatness_initio.jpg',
    "Amber Oud - Al Haramain": 'assets/images/amber_oud_haramain.jpg',
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
    "CH Men - Carolina Herrera": 'assets/images/ch_carolina_herrera.webp',
    "212 VIP Men Wins - Carolina Herrera":
        'assets/images/212_vip_wins_carolina_herrera.jpeg',
    "1 Million Parfum - Paco Rabanne":
        'assets/images/1_million_paco_rabanne.webp',
    "1 Million Lucky - Paco Rabanne":
        'assets/images/1_million_lucky_paco_rabanne.jpeg',
    "Invictus - Paco Rabanne": 'assets/images/invictus_paco_rabanne.jpg',
    "Black XS - Paco Rabanne": 'assets/images/black_xs_paco_rabanne.webp',
    "Sauvage - Dior": 'assets/images/sauvage_dior.jpg',
    "Fahrenheit - Dior": 'assets/images/fahrenheit_dior.jpeg',
    "CK One - Calvin Klein": 'assets/images/ck_one_calvin_klein.jpeg',
    "360° for Men - Perry Ellis": 'assets/images/360_for_men_perry_ellis.jpg',
    "Nautica Voyage - Nautica": 'assets/images/nautica_voyage_nautica.jpg',
    "Toy Boy - Moschino": 'assets/images/toy_boy_moschino.webp',
    "Red - Lacoste": 'assets/images/red_lacoste.webp',
    "L'Eau d'Issey Pour Homme - Issey Miyake":
        'assets/images/leau_dissey_pour_homme_issey_miyake.webp',
    "Hugo - Hugo Boss": 'assets/images/hugo_hugo_boss.webp',
    "Acqua di Gio - Giorgio Armani":
        'assets/images/acqua_di_gio_giorgio_armani.webp',
    "Polo Blue - Ralph Lauren": 'assets/images/polo_blue_ralph_lauren.jpg',
    "Carolina Herrera - Carolina Herrera":
        'assets/images/carolina_herrera_carolina_herrera.jpg',
    "CH (2015) - Carolina Herrera":
        'assets/images/ch_2015_carolina_herrera.jpg',
    "212 VIP Rosé - Carolina Herrera":
        'assets/images/212_vip_rose_carolina_herrera.jpg',
    "360° - Perry Ellis": 'assets/images/360_perry_ellis.jpg',
    "Paris Hilton - Paris Hilton":
        'assets/images/paris_hilton_paris_hilton.jpg',
    "Can Can - Paris Hilton": 'assets/images/can_can_paris_hilton.webp',
    "Heiress - Paris Hilton": 'assets/images/heiress_paris_hilton.jpg',
    "Toy 2 - Moschino": 'assets/images/toy_2_moschino.jpg',
    "Amor Amor - Cacharel": 'assets/images/amor_amor_cacharel.webp',
    "La Vie Est Belle - Lancôme": 'assets/images/la_vie_est_belle_lancome.jpg',
    "Light Blue - Dolce&Gabbana": 'assets/images/light_blue_dolce_gabbana.jpg',
    "Kim Kardashian - Kim Kardashian":
        'assets/images/kim_kardashian_kim_kardashian.jpg',
    "Angel - Mugler": 'assets/images/angel_mugler.webp',
    "Halloween - Halloween": 'assets/images/halloween_halloween.jpg',
    "CK2 - Calvin Klein": 'assets/images/ck2_calvin_klein.webp',
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
        case '212 VIP Men Wins - Carolina Herrera':
          _selectedIndex = 18;
          break;
        case '1 Million Parfum - Paco Rabanne':
          _selectedIndex = 19;
          break;
        case '1 Million Lucky - Paco Rabanne':
          _selectedIndex = 20;
          break;
        case 'Invictus - Paco Rabanne':
          _selectedIndex = 21;
          break;
        case 'Black XS - Paco Rabanne':
          _selectedIndex = 22;
          break;
        case 'Sauvage - Dior':
          _selectedIndex = 23;
          break;
        case 'Fahrenheit - Dior':
          _selectedIndex = 24;
          break;
        case 'CK One - Calvin Klein':
          _selectedIndex = 25;
          break;
        case '360° for Men - Perry Ellis':
          _selectedIndex = 26;
          break;
        case 'Nautica Voyage - Nautica':
          _selectedIndex = 27;
          break;
        case 'Toy Boy - Moschino':
          _selectedIndex = 28;
          break;
        case 'Red - Lacoste':
          _selectedIndex = 29;
          break;
        case "L'Eau d'Issey Pour Homme - Issey Miyake":
          _selectedIndex = 30;
          break;
        case 'Hugo - Hugo Boss':
          _selectedIndex = 31;
          break;
        case 'Acqua di Gio - Giorgio Armani':
          _selectedIndex = 32;
          break;
        case 'Polo Blue - Ralph Lauren':
          _selectedIndex = 33;
          break;
        case 'Carolina Herrera - Carolina Herrera':
          _selectedIndex = 34;
          break;
        case 'CH (2015) - Carolina Herrera':
          _selectedIndex = 35;
          break;
        case '212 VIP Rosé - Carolina Herrera':
          _selectedIndex = 36;
          break;
        case '360° - Perry Ellis':
          _selectedIndex = 37;
          break;
        case 'Paris Hilton - Paris Hilton':
          _selectedIndex = 38;
          break;
        case 'Can Can - Paris Hilton':
          _selectedIndex = 39;
          break;
        case 'Heiress - Paris Hilton':
          _selectedIndex = 40;
          break;
        case 'Toy 2 - Moschino':
          _selectedIndex = 41;
          break;
        case 'Amor Amor - Cacharel':
          _selectedIndex = 42;
          break;
        case 'La Vie Est Belle - Lancôme':
          _selectedIndex = 43;
          break;
        case 'Light Blue - Dolce&Gabbana':
          _selectedIndex = 44;
          break;
        case 'Kim Kardashian - Kim Kardashian':
          _selectedIndex = 45;
          break;
        case 'Angel - Mugler':
          _selectedIndex = 46;
          break;
        case 'Halloween - Halloween':
          _selectedIndex = 47;
          break;
        case 'CK2 - Calvin Klein':
          _selectedIndex = 48;
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
              hintText: 'Busca tu aroma favorito',
              hintStyle: hint,
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
          height: _selectedIndex == 0 ? 0 : 1280,
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
Ombre Nomade de Louis Vuitton es una
fragancia de la familia olfativa Ámbar
Amaderada para Hombres. Ombre Nomade se
lanzó en 2018. Tiene una longevidad muy
duradera y su estela es enorme. Es un
aroma Masculino.
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
                  imageLocion: 'assets/images/amber_oud_haramain.jpg',
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
Frutal para Hombres. L' Aventure se lanzó en
2016. Tiene una longevidad duradera y su
estela es moderada. Es un aroma Masculino
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
                textNotaSalida3: '''Nuez
Moscada''',
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
              AromasBuscador(
                title: '212 VIP Men Wins - Carolina Herrera',
                description: '''
212 VIP Men Wins de Carolina Herrera
es una fragancia de la familia olfativa
Aromática Fougère para Hombres. 212 VIP
Men Wins se lanzó en 2021. Su longevidad
y su estela son moderadas.
Es un aroma Masculino.
''',
                imageLocion: 'assets/images/212_vip_wins_carolina_herrera.jpeg',
                imageNotaSalida: 'assets/images/yuzu.jpg',
                textNotaSalida: 'Yuzu',
                imageNotaSalida2: 'assets/images/albahaca.jpg',
                textNotaSalida2: 'Albahaca',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/pimienta.jpg',
                textCorazon: '''
Pimienta de
Madagascar''',
                imageCorazon2: 'assets/images/lavanda.jpg',
                textCorazon2: 'Lavanda',
                imageBase: 'assets/images/piel.jpg',
                textBase: 'Piel',
                imageBase2: 'assets/images/cumarina.jpg',
                textBase2: '''Haba
Tonka''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(131, 201, 40, 1),
                colorText: Colors.black,
                text: 'fresco especiado',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(249, 255, 95, 1),
                colorText2: Colors.black87,
                text2: 'cítrico',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(118, 190, 174, 1),
                colorText3: Colors.black54,
                text3: 'aromático',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(94, 178, 104, 1),
                colorText4: Colors.white70,
                text4: 'verde',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(244, 128, 131, 1),
                colorText5: Colors.white70,
                text5: 'dulce',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(241, 227, 244, 1),
                colorText6: Colors.black45,
                text6: 'lavanda',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(255, 254, 219, 1),
                colorText7: Colors.black45,
                text7: 'avainillado',
                containerWidth8: 115,
                containerColor8: Color.fromRGBO(226, 142, 114, 1),
                colorText8: Colors.white60,
                text8: 'cálido especiado',
              ),
              //TODO: 19
              AromasBuscador200(
                title: '1 Million Parfum - Paco Rabanne',
                description: '''
1 Million Parfum de Paco Rabanne es una
fragancia de la familia olfativa Cuero
para Hombres. 1 Million Parfum se lanzó
en 2020. Su longevidad es duradera y su
estela es pesada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/1_million_paco_rabanne.webp',
                imageNotaFragancia: 'assets/images/nardos.jpg',
                textNotaFragancia: 'Nardos',
                imageNotaFragancia2: 'assets/images/sal.jpg',
                textNotaFragancia2: 'Sal',
                imageNotaFragancia3: 'assets/images/notas_solares.jpg',
                textNotaFragancia3: '''Notas
Solares''',
                imageNotaFragancia4: 'assets/images/aceite_de_monoil.jpg',
                textNotaFragancia4: '''Aceite
de Monoi''',
                imageNotaFragancia5: 'assets/images/ambar_gris.jpg',
                textNotaFragancia5: '''Ámbar
Gris''',
                imageNotaFragancia6: 'assets/images/cuero.jpg',
                textNotaFragancia6: 'Cuero',
                imageNotaFragancia7: 'assets/images/cachemira.jpg',
                textNotaFragancia7: 'Cachemira',
                imageNotaFragancia8: 'assets/images/ladano.jpg',
                textNotaFragancia8: 'Ládano',
                imageNotaFragancia9: 'assets/images/pino.jpg',
                textNotaFragancia9: 'Pino',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(236, 250, 244, 1),
                colorText2: Colors.black,
                text2: 'nardos',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(197, 101, 48, 1),
                colorText3: Colors.white,
                text3: 'ámbar',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(161, 105, 58, 1),
                colorText4: Colors.white,
                text4: 'animálico',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(158, 122, 88, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(240, 255, 251, 1),
                colorText6: Colors.black54,
                text6: 'salado',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(167, 136, 126, 1),
                colorText7: Colors.white70,
                text7: 'cuero',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(249, 206, 106, 1),
                colorText8: Colors.black45,
                text8: 'tropical',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(241, 232, 242, 1),
                colorText9: Colors.black45,
                text9: 'almizclado',
                containerWidth10: 115,
                containerColor10: Color.fromRGBO(247, 242, 231, 1),
                colorText10: Colors.black45,
                text10: 'coco',
              ),
              //TODO: 20
              AromasBuscador(
                title: '1 Million Lucky - Paco Rabanne',
                description: '''
1 Million Lucky de Paco Rabanne es una
fragancia de la familia olfativa Amaderada
para Hombres. 1 Million Lucky se lanzó en
2018. Su longevidad es duradera y su
estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/1_million_lucky_paco_rabanne.jpeg',
                imageNotaSalida: 'assets/images/ciruela.jpg',
                textNotaSalida: 'Ciruela',
                imageNotaSalida2: 'assets/images/notas_ozonicas.jpg',
                textNotaSalida2: '''Notas
Ozónicas''',
                imageNotaSalida3: 'assets/images/toronja.jpg',
                textNotaSalida3: 'Toronja',
                imageNotaSalida4: 'assets/images/bergamota.jpg',
                textNotaSalida4: 'Bergamota',
                imageCorazon: 'assets/images/avellana.jpg',
                textCorazon: 'Avellana',
                imageCorazon2: 'assets/images/miel.jpg',
                textCorazon2: 'Miel',
                imageCorazon3: 'assets/images/cedro.jpg',
                textCorazon3: 'Cedro',
                imageCorazon4: 'assets/images/madera_de_cachemira.jpg',
                textCorazon4: '''Madera de
Cachemira''',
                imageCorazon5: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon5: '''Flor del
Naranjo''',
                imageBase: 'assets/images/amberwood.jpg',
                textBase: 'Amberwood',
                imageBase2: 'assets/images/pachuli.jpg',
                textBase2: 'Pachulí',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo
de Roble''',
                imageBase4: 'assets/images/vetiver.jpg',
                textBase4: 'Vetiver',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(241, 91, 95, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(198, 174, 133, 1),
                colorText3: Colors.black87,
                text3: 'nueces',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(251, 191, 71, 1),
                colorText4: Colors.black87,
                text4: 'amielado',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(253, 127, 103, 1),
                colorText5: Colors.black54,
                text5: 'afrutados',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(251, 255, 148, 1),
                colorText6: Colors.black54,
                text6: 'cítrico',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(224, 253, 252, 1),
                colorText7: Colors.black54,
                text7: 'ozónico',
                containerWidth8: 110,
                containerColor8: Color.fromRGBO(217, 155, 121, 1),
                colorText8: Colors.white60,
                text8: 'ámbar',
                containerWidth9: 100,
                containerColor9: Color.fromRGBO(255, 170, 195, 1),
                colorText9: Colors.black45,
                text9: 'florales',
                containerWidth10: 95,
                containerColor10: Color.fromRGBO(245, 248, 252, 1),
                colorText10: Colors.black45,
                text10: 'floral blanco',
              ),
              //TODO: 21
              AromasBuscador(
                title: 'Invictus - Paco Rabanne',
                description: '''
Invictus de Paco Rabanne es una fragancia
de la familia olfativa Amaderada Acuática
para Hombres. Invictus se lanzó en 2013.
Su longevidad es de moderada a duradera y
su estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/invictus_paco_rabanne.jpg',
                imageNotaSalida: 'assets/images/notas_marinas.jpg',
                textNotaSalida: '''Notas
Marinas''',
                imageNotaSalida2: 'assets/images/toronja.jpg',
                textNotaSalida2: 'Toronja',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/hoja_de_laurel.jpg',
                textCorazon: '''Hoja de
Laurel''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageBase: 'assets/images/ambar_gris.jpg',
                textBase: '''Ámbar
Gris''',
                imageBase2: 'assets/images/madera_de_gaiac.jpg',
                textBase2: '''Madera
de Gaiac''',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo
de Roble''',
                imageBase4: 'assets/images/pachuli.jpg',
                textBase4: 'Pachulí',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(41, 102, 166, 1),
                colorText2: Colors.white,
                text2: 'marino',
                containerWidth3: 195,
                containerColor3: Color.fromRGBO(82, 173, 153, 1),
                colorText3: Colors.black,
                text3: 'aromático',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(161, 214, 93, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(166, 132, 101, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(214, 146, 109, 1),
                colorText6: Colors.white70,
                text6: 'ámbar',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(241, 255, 251, 1),
                colorText7: Colors.black54,
                text7: 'salado',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(244, 247, 252, 1),
                colorText8: Colors.black45,
                text8: 'floral blanco',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(170, 227, 239, 1),
                colorText9: Colors.black45,
                text9: 'acuático',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(168, 177, 139, 1),
                colorText10: Colors.black45,
                text10: 'alcanforados',
              ),
              //TODO: 22
              AromasBuscador(
                title: 'Black XS - Paco Rabanne',
                description: '''
Black XS de Paco Rabanne es una fragancia de
la familia olfativa Ámbar Amaderada para
Hombres. Black XS se lanzó en 2005. Su
longevidad es duradera y su estela es
moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/black_xs_paco_rabanne.webp',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: 'Limón',
                imageNotaSalida2: 'assets/images/salvia.jpg',
                textNotaSalida2: 'Salvia',
                imageCorazon: 'assets/images/praline.jpg',
                textCorazon: 'Praliné',
                imageCorazon2: 'assets/images/canela.jpg',
                textCorazon2: 'Canela',
                imageCorazon3: 'assets/images/balsamo_de_tolu.jpg',
                textCorazon3: '''Bálsamo
de Tolú''',
                imageCorazon4: 'assets/images/cardamomo.jpg',
                textCorazon4: '''Cardamomo
Negro''',
                imageBase: 'assets/images/palo_de_rosa_de_brasil.jpg',
                textBase: '''Palo de Rosa
de Brasil''',
                imageBase2: 'assets/images/pachuli.jpg',
                textBase2: 'Pachulí',
                imageBase3: 'assets/images/ambar_gris.jpg',
                textBase3: '''Ámbar
Negro''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 230,
                containerColor2: Color.fromRGBO(204, 53, 2, 1),
                colorText2: Colors.white,
                text2: 'cálido especiado',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(250, 255, 108, 1),
                colorText3: Colors.black87,
                text3: 'cítrico',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(203, 117, 70, 1),
                colorText4: Colors.white70,
                text4: 'ámbar',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(107, 184, 167, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(158, 122, 88, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(199, 170, 141, 1),
                colorText7: Colors.black54,
                text7: 'balsámico',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(225, 155, 106, 1),
                colorText8: Colors.white70,
                text8: 'canela',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(158, 159, 125, 1),
                colorText9: Colors.white60,
                text9: 'pachulí',
                containerWidth10: 110,
                containerColor10: Color.fromRGBO(245, 245, 243, 1),
                colorText10: Colors.black45,
                text10: 'lactónico',
              ),
              //TODO: 23
              AromasBuscador(
                title: 'Sauvage - Dior',
                description: '''
Sauvage de Dior es una fragancia de la
familia olfativa Aromática Fougère para
Hombres. Sauvage se lanzó en 2015. Tiene
una longevidad duradera y su estela es
pesada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/sauvage_dior.jpg',
                imageNotaSalida: 'assets/images/bergamota.jpg',
                textNotaSalida: '''Bergamota
de Calabria''',
                imageNotaSalida2: 'assets/images/pimienta.jpg',
                textNotaSalida2: 'Pimienta',
                imageCorazon: 'assets/images/pimienta.jpg',
                textCorazon: '''Pimienta
de Sichuan''',
                imageCorazon2: 'assets/images/lavanda.jpg',
                textCorazon2: 'Lavanda',
                imageCorazon3: 'assets/images/pimienta_rosa.jpg',
                textCorazon3: '''Pimienta
Rosa''',
                imageCorazon4: 'assets/images/vetiver.jpg',
                textCorazon4: 'Vetiver',
                imageCorazon5: 'assets/images/pachuli.jpg',
                textCorazon5: 'Pachulí',
                imageCorazon6: 'assets/images/geranio.jpg',
                textCorazon6: 'Geranio',
                imageCorazon7: 'assets/images/elemi.jpg',
                textCorazon7: 'Elemí',
                imageBase: 'assets/images/ambroxan.jpg',
                textBase: 'Ambroxan',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/ladano.jpg',
                textBase3: 'Ládano',
                containerWidth: 230,
                containerColor: Color.fromRGBO(131, 201, 40, 1),
                colorText: Colors.black,
                text: 'fresco especiado',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(203, 118, 71, 1),
                colorText2: Colors.white,
                text2: 'ámbar',
                containerWidth3: 165,
                containerColor3: Color.fromRGBO(250, 255, 127, 1),
                colorText3: Colors.black87,
                text3: 'cítrico',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(118, 190, 174, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(239, 229, 241, 1),
                colorText5: Colors.black54,
                text5: 'almizclado',
                containerWidth6: 130,
                containerColor6: Color.fromRGBO(173, 142, 114, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(176, 206, 186, 1),
                colorText7: Colors.black45,
                text7: 'herbal',
                containerWidth8: 110,
                containerColor8: Color.fromRGBO(242, 228, 244, 1),
                colorText8: Colors.black45,
                text8: 'Lavanda',
                containerWidth9: 110,
                containerColor9: Color.fromRGBO(228, 147, 120, 1),
                colorText9: Colors.white60,
                text9: 'cálido especiado',
              ),
              //TODO: 24
              AromasBuscador(
                title: 'Fahrenheit - Dior',
                description: '''
Fahrenheit de Dior es una fragancia de
la familia olfativa Aromática Fougère
para Hombres. Fahrenheit se lanzó en 1988.
Tiene una longevidad duradera y su
estela es pesada. Es un aroma masculino.
''',
                imageLocion: 'assets/images/fahrenheit_dior.jpeg',
                imageNotaSalida: 'assets/images/flor_del_espino.jpg',
                textNotaSalida: '''Flor del
Espino''',
                imageNotaSalida2: 'assets/images/lavanda.jpg',
                textNotaSalida2: 'Lavanda',
                imageNotaSalida3: 'assets/images/cedro.jpg',
                textNotaSalida3: 'Cedro',
                imageNotaSalida4: 'assets/images/bergamota.jpg',
                textNotaSalida4: 'Bergamota',
                imageNotaSalida5: 'assets/images/limon.jpg',
                textNotaSalida5: 'Limón',
                imageNotaSalida6: 'assets/images/nuez_moscada.jpg',
                textNotaSalida6: '''Flor del
Mascadero''',
                imageNotaSalida7: 'assets/images/mandarina.jpg',
                textNotaSalida7: 'Mandarina',
                imageNotaSalida8: 'assets/images/manzanilla.jpg',
                textNotaSalida8: 'Manzanilla',
                imageCorazon: 'assets/images/hojas_de_violeta.jpg',
                textCorazon: '''Hojas de
Violeta''',
                imageCorazon2: 'assets/images/nuez_moscada.jpg',
                textCorazon2: '''Nuez
Moscada''',
                imageCorazon3: 'assets/images/cedro.jpg',
                textCorazon3: 'Cedro',
                imageCorazon4: 'assets/images/clavel.jpg',
                textCorazon4: 'Clavel',
                imageCorazon5: 'assets/images/madreselva.jpg',
                textCorazon5: '''Madre
Selva''',
                imageCorazon6: 'assets/images/jazmin.jpg',
                textCorazon6: 'Jazmín',
                imageCorazon7: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon7: '''Lirio de
los Valles''',
                imageBase: 'assets/images/cuero.jpg',
                textBase: 'Cuero',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/pachuli.jpg',
                textBase5: 'Pachulí',
                imageBase6: 'assets/images/cumarina.jpg',
                textBase6: 'Haba Tonka',
                containerWidth: 230,
                containerColor: Color.fromRGBO(120, 72, 58, 1),
                colorText: Colors.white,
                text: 'cuero',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(133, 87, 44, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(210, 253, 251, 1),
                colorText3: Colors.black87,
                text3: 'ozónico',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(155, 211, 82, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(167, 115, 72, 1),
                colorText5: Colors.white70,
                text5: 'animálico',
                containerWidth6: 160,
                containerColor6: Color.fromRGBO(100, 181, 164, 1),
                colorText6: Colors.black54,
                text6: 'aromático',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(142, 218, 234, 1),
                colorText7: Colors.black54,
                text7: 'acuático',
                containerWidth8: 140,
                containerColor8: Color.fromRGBO(255, 141, 173, 1),
                colorText8: Colors.black54,
                text8: 'florales',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(251, 255, 139, 1),
                colorText9: Colors.black45,
                text9: 'cítrico',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(102, 182, 111, 1),
                colorText10: Colors.white60,
                text10: 'verde',
              ),
              //TODO: 25
              AromasBuscador(
                title: 'CK One - Calvin Klein',
                description: '''
CK One de Calvin Klein es una fragancia
de la familia olfativa Cítrica Aromática
para Hombres y Mujeres. CK One se lanzó
en 1994. Su longevidad y su estela son
moderadas. Es un aroma Unisex.
''',
                imageLocion: 'assets/images/ck_one_calvin_klein.jpeg',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: 'Limón',
                imageNotaSalida2: 'assets/images/piña.jpg',
                textNotaSalida2: 'Piña',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageNotaSalida4: 'assets/images/mandarina.jpg',
                textNotaSalida4: 'Mandarina',
                imageNotaSalida5: 'assets/images/papaya.jpg',
                textNotaSalida5: 'Papaya',
                imageNotaSalida6: 'assets/images/cardamomo.jpg',
                textNotaSalida6: 'Cardamomo',
                imageNotaSalida7: 'assets/images/notas_verdes.jpg',
                textNotaSalida7: '''Notas
Verdes''',
                imageCorazon: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon: '''Lirio de
los Valles''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/violeta.jpg',
                textCorazon3: 'Violeta',
                imageCorazon4: 'assets/images/rosa.jpg',
                textCorazon4: 'Rosa',
                imageCorazon5: 'assets/images/nuez_moscada.jpg',
                textCorazon5: '''Nuez
Moscada''',
                imageCorazon6: 'assets/images/raiz_de_lirio.jpg',
                textCorazon6: '''Raíz de
Lirio''',
                imageCorazon7: 'assets/images/fresia.jpg',
                textCorazon7: 'Fresia',
                imageBase: 'assets/images/notas_verdes.jpg',
                textBase: '''Acordes
Verdes''',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/cedro.jpg',
                textBase3: 'Cedro',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/musgo_de_roble.jpg',
                textBase5: '''Musgo de
Roble''',
                imageBase6: 'assets/images/te_verde.jpg',
                textBase6: 'Té Verde',
                imageBase7: 'assets/images/ambar.jpg',
                textBase7: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(74, 168, 85, 1),
                colorText2: Colors.white,
                text2: 'verde',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(168, 136, 105, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 140,
                containerColor4: Color.fromRGBO(243, 233, 222, 1),
                colorText4: Colors.black54,
                text4: 'atalcado',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(243, 246, 252, 1),
                colorText5: Colors.black54,
                text5: 'floral blanco',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(194, 238, 243, 1),
                colorText6: Colors.black54,
                text6: 'fresco',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(134, 197, 183, 1),
                colorText7: Colors.black54,
                text7: 'aromático',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(185, 224, 134, 1),
                colorText8: Colors.black45,
                text8: 'fresco especiado',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(254, 167, 192, 1),
                colorText9: Colors.black45,
                text9: 'florales',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(241, 233, 243, 1),
                colorText10: Colors.black45,
                text10: 'almizclado',
              ),
              //TODO: 26
              AromasBuscador(
                title: '360° for Men - Perry Ellis',
                description: '''
360° for Men de Perry Ellis es una fragancia
de la familia olfativa Aromática para Hombres.
360° for Men se lanzó en 1995. Tiene longevidad
y estela moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/360_for_men_perry_ellis.jpg',
                imageNotaSalida: 'assets/images/bayas_de_enebro.jpg',
                textNotaSalida: '''Bayas de
Enebro''',
                imageNotaSalida2: 'assets/images/limon.jpg',
                textNotaSalida2: 'Limón',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageCorazon: 'assets/images/lavanda.jpg',
                textCorazon: 'Lavanda',
                imageCorazon2: 'assets/images/salvia.jpg',
                textCorazon2: 'Salvia',
                imageCorazon3: 'assets/images/cardamomo.jpg',
                textCorazon3: 'Cardamomo',
                imageCorazon4: 'assets/images/fresia.jpg',
                textCorazon4: 'Fresia',
                imageBase: 'assets/images/notas_amaderadas.jpg',
                textBase: '''Notas
Amaderadas''',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 140,
                containerColor2: Color.fromRGBO(158, 122, 88, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(168, 217, 105, 1),
                colorText3: Colors.black87,
                text3: 'fresco especiado',
                containerWidth4: 125,
                containerColor4: Color.fromRGBO(250, 254, 142, 1),
                colorText4: Colors.black54,
                text4: 'cítrico',
                containerWidth5: 110,
                containerColor5: Color.fromRGBO(240, 226, 243, 1),
                colorText5: Colors.black45,
                text5: 'lavanda',
              ),
              //TODO: 27
              AromasBuscador(
                title: 'Nautica Voyage - Nautica',
                description: '''
Nautica Voyage de Nautica es una fragancia
de la familia olfativa Amaderada Acuática
para Hombres. Nautica Voyage se lanzó en 2006.
Su longevidad y su estela son moderadas.
Es un aroma Masculino.
''',
                imageLocion: 'assets/images/nautica_voyage_nautica.jpg',
                imageNotaSalida: 'assets/images/notas_verdes.jpg',
                textNotaSalida: '''Hojas
Verdes''',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageCorazon: 'assets/images/flor_de_loto.jpg',
                textCorazon: '''Flor de
Loto''',
                imageCorazon2: 'assets/images/mimosa.jpg',
                textCorazon2: 'Mimosa',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo de
Roble''',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(14, 140, 29, 1),
                colorText: Colors.white,
                text: 'verde',
                containerWidth2: 150,
                containerColor2: Color.fromRGBO(252, 126, 101, 1),
                colorText2: Colors.black87,
                text2: 'afrutados',
                containerWidth3: 135,
                containerColor3: Color.fromRGBO(254, 149, 179, 1),
                colorText3: Colors.black87,
                text3: 'florales',
                containerWidth4: 120,
                containerColor4: Color.fromRGBO(194, 239, 243, 1),
                colorText4: Colors.black54,
                text4: 'fresco',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(244, 234, 224, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 115,
                containerColor6: Color.fromRGBO(165, 225, 238, 1),
                colorText6: Colors.black54,
                text6: 'acuático',
                containerWidth7: 110,
                containerColor7: Color.fromRGBO(241, 233, 242, 1),
                colorText7: Colors.black54,
                text7: 'almizclado',
                containerWidth8: 105,
                containerColor8: Color.fromRGBO(181, 154, 128, 1),
                colorText8: Colors.white70,
                text8: 'amaderado',
                containerWidth9: 100,
                containerColor9: Color.fromRGBO(254, 236, 128, 1),
                colorText9: Colors.black45,
                text9: 'floral amarillo',
              ),
              //TODO: 28
              AromasBuscador(
                title: 'Toy Boy - Moschino',
                description: '''
Toy Boy de Moschino es una fragancia de la
familia olfativa Amaderada Especiada para
Hombres. Toy Boy se lanzó en 2019. Su
longevidad es duradera y su estela es pesada.
Es un aroma Unisex.
''',
                imageLocion: 'assets/images/toy_boy_moschino.webp',
                imageNotaSalida: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida: '''Pimienta
Rosa''',
                imageNotaSalida2: 'assets/images/pera.jpg',
                textNotaSalida2: 'Pera',
                imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                textNotaSalida3: '''Nuez 
Moscada''',
                imageNotaSalida4: 'assets/images/elemi.jpg',
                textNotaSalida4: 'Elemí',
                imageNotaSalida5: 'assets/images/bergamota.jpg',
                textNotaSalida5: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/clavos_de_olor.jpg',
                textCorazon2: '''Clavos
de Olor''',
                imageCorazon3: 'assets/images/magnolia.jpg',
                textCorazon3: 'Magnolia',
                imageCorazon4: 'assets/images/lino.jpg',
                textCorazon4: 'Lino',
                imageBase: 'assets/images/cachemira.jpg',
                textBase: 'Cachemira',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: '''Vetiver
de Haití''',
                imageBase3: 'assets/images/sylkolide.jpg',
                textBase3: 'Sylkolide',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(254, 1, 107, 1),
                colorText: Colors.white,
                text: 'rosas',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(254, 128, 164, 1),
                colorText2: Colors.black87,
                text2: 'florales',
                containerWidth3: 160,
                containerColor3: Color.fromRGBO(236, 225, 239, 1),
                colorText3: Colors.black87,
                text3: 'almizclado',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(154, 117, 82, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(233, 156, 130, 1),
                colorText5: Colors.black87,
                text5: 'especiado suave',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(209, 135, 95, 1),
                colorText6: Colors.white70,
                text6: 'ámbar',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(172, 218, 111, 1),
                colorText7: Colors.black54,
                text7: 'fresco especiado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(123, 192, 177, 1),
                colorText8: Colors.black54,
                text8: 'aromático',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(244, 130, 133, 1),
                colorText9: Colors.white70,
                text9: 'dulce',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(223, 131, 101, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 29
              AromasBuscador(
                title: 'Red - Lacoste',
                description: '''
Red de Lacoste Fragrances es una fragancia
de la familia olfativa Aromática Fougère
para Hombres. Red se lanzó en 2004. Tiene
una longevidad y estela moderadas.
Es un aroma Masculino.
''',
                imageLocion: 'assets/images/red_lacoste.webp',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: '''Manzana
Verde''',
                imageCorazon: 'assets/images/pino.jpg',
                textCorazon: 'Pino',
                imageBase: 'assets/images/pachuli.jpg',
                textBase: 'Pachulí',
                imageBase2: 'assets/images/vetiver.jpg',
                textBase2: 'Vetiver',
                containerWidth: 230,
                containerColor: Color.fromRGBO(119, 68, 20, 1),
                colorText: Colors.white,
                text: 'amaderado',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(252, 98, 69, 1),
                colorText2: Colors.black,
                text2: 'afrutados',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(70, 166, 81, 1),
                colorText3: Colors.white,
                text3: 'verde',
                containerWidth4: 175,
                containerColor4: Color.fromRGBO(106, 184, 167, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(185, 237, 242, 1),
                colorText5: Colors.black54,
                text5: 'fresco',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(152, 154, 118, 1),
                colorText6: Colors.white,
                text6: 'pachulí',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(153, 146, 136, 1),
                colorText7: Colors.white,
                text7: 'terrosos',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(125, 147, 136, 1),
                colorText8: Colors.white,
                text8: 'conífera',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(210, 187, 164, 1),
                colorText9: Colors.black45,
                text9: 'balsámico',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(228, 147, 121, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 30
              AromasBuscador(
                title:
                    'L\'Eau d\'Issey Pour Homme - Issey Miyake',
                description: '''
L'Eau d'Issey Pour Homme de Issey Miyake es una
fragancia de la familia olfativa Amaderada
Aromática para Hombres. L'Eau d'Issey Pour Homme
se lanzó en 1994. Su longevidad es moderada y su
estela es moderada. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/leau_dissey_pour_homme_issey_miyake.webp',
                imageNotaSalida: 'assets/images/yuzu.jpg',
                textNotaSalida: 'Yuzu',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/limon.jpg',
                textNotaSalida3: 'Limón',
                imageCorazon: 'assets/images/nuez_moscada.jpg',
                textCorazon: '''Nuez
Moscada''',
                imageCorazon2: 'assets/images/nenufar.jpg',
                textCorazon2: 'Nenúfar',
                imageCorazon3: 'assets/images/canela.jpg',
                textCorazon3: 'Canela',
                imageCorazon4: 'assets/images/geranio.jpg',
                textCorazon4: 'Geranio',
                imageBase: 'assets/images/cedro.jpg',
                textBase: 'Cedro',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vetiver.jpg',
                textBase3: 'Vetíver',
                imageBase4: 'assets/images/almizcle.jpg',
                textBase4: 'Almizcle',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                imageBase6: 'assets/images/tabaco.jpg',
                textBase6: 'Tabaco',
                containerWidth: 230,
                containerColor: Color.fromRGBO(255, 254, 60, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(100, 245, 130, 1),
                colorText2: Colors.black,
                text2: 'fresco especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(119, 68, 20, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 170,
                containerColor4: Color.fromRGBO(55, 160, 137, 1),
                colorText4: Colors.black87,
                text4: 'aromático',
                containerWidth5: 170,
                containerColor5: Color.fromRGBO(95, 178, 105, 1),
                colorText5: Colors.black87,
                text5: 'verde',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(151, 221, 235, 1),
                colorText6: Colors.black54,
                text6: 'acuático',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(202, 114, 66, 1),
                colorText7: Colors.black54,
                text7: 'ámbar',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(255, 166, 191, 1),
                colorText8: Colors.black54,
                text8: 'florales',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(239, 229, 241, 1),
                colorText9: Colors.black45,
                text9: 'almizclado',
                containerWidth10: 120,
                containerColor10: Color.fromRGBO(221, 253, 252, 1),
                colorText10: Colors.black45,
                text10: 'ozónico',
              ),
              //TODO: 31
              AromasBuscador(
                title: 'Hugo - Hugo Boss',
                description: '''
Hugo de Hugo Boss es una fragancia de la
familia olfativa Aromática Verde para Hombres.
Hugo se lanzó en 1995. Su longevidad y su
estela son moderadas. Es un aroma Masculino.
''',
                imageLocion: 'assets/images/hugo_hugo_boss.webp',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: '''Manzana
Verde''',
                imageNotaSalida2: 'assets/images/lavanda.jpg',
                textNotaSalida2: 'Lavanda',
                imageNotaSalida3: 'assets/images/menta.jpg',
                textNotaSalida3: 'Menta',
                imageNotaSalida4: 'assets/images/toronja.jpg',
                textNotaSalida4: 'Toronja',
                imageNotaSalida5: 'assets/images/albahaca.jpg',
                textNotaSalida5: 'Albahaca',
                imageCorazon: 'assets/images/salvia.jpg',
                textCorazon: 'Salvia',
                imageCorazon2: 'assets/images/geranio.jpg',
                textCorazon2: 'Geranio',
                imageCorazon3: 'assets/images/clavel.jpg',
                textCorazon3: 'Clavel',
                imageCorazon4: 'assets/images/jazmin.jpg',
                textCorazon4: 'Jazmín',
                imageBase: 'assets/images/abeto.jpg',
                textBase: 'Abeto',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                containerWidth: 230,
                containerColor: Color.fromRGBO(55, 160, 137, 1),
                colorText: Colors.black,
                text: 'aromático',
                containerWidth2: 215,
                containerColor2: Color.fromRGBO(137, 204, 51, 1),
                colorText2: Colors.black,
                text2: 'freso especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(61, 162, 73, 1),
                colorText3: Colors.white,
                text3: 'verde',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(158, 121, 87, 1),
                colorText4: Colors.white,
                text4: 'amaderado',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(189, 238, 243, 1),
                colorText5: Colors.black87,
                text5: 'fresco',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(253, 143, 122, 1),
                colorText6: Colors.black54,
                text6: 'afrutados',
                containerWidth7: 140,
                containerColor7: Color.fromRGBO(240, 225, 243, 1),
                colorText7: Colors.black54,
                text7: 'lavanda',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(170, 203, 181, 1),
                colorText8: Colors.black45,
                text8: 'herbal',
                containerWidth9: 120,
                containerColor9: Color.fromRGBO(251, 255, 162, 1),
                colorText9: Colors.black45,
                text9: 'cítrico',
              ),
              //TODO: 32
              AromasBuscador(
                title: 'Acqua di Gio - Giorgio Armani',
                description: '''
Acqua di Gio de Giorgio Armani es una fragancia
de la familia olfativa Aromática Acuática para
Hombres. Acqua di Gio se lanzó en 1996. Su
longevidad y su estela son moderadas. Es un
aroma Masculino.
''',
                imageLocion: 'assets/images/acqua_di_gio_giorgio_armani.webp',
                imageNotaSalida: 'assets/images/lima.jpg',
                textNotaSalida: 'Lima',
                imageNotaSalida2: 'assets/images/limon.jpg',
                textNotaSalida2: 'Limón',
                imageNotaSalida3: 'assets/images/bergamota.jpg',
                textNotaSalida3: 'Bergamota',
                imageNotaSalida4: 'assets/images/jazmin.jpg',
                textNotaSalida4: 'Jazmín',
                imageNotaSalida5: 'assets/images/naranja.jpg',
                textNotaSalida5: 'Naranja',
                imageNotaSalida6: 'assets/images/mandarina.jpg',
                textNotaSalida6: 'Mandarina',
                imageNotaSalida7: 'assets/images/neroli.jpg',
                textNotaSalida7: 'Neroli',
                imageCorazon: 'assets/images/notas_marinas.jpg',
                textCorazon: '''Notas
Marinas''',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/calone.jpg',
                textCorazon3: 'Calone',
                imageCorazon4: 'assets/images/romero.jpg',
                textCorazon4: 'Romero',
                imageCorazon5: 'assets/images/durazno.jpg',
                textCorazon5: 'Durazno',
                imageCorazon6: 'assets/images/fresia.jpg',
                textCorazon6: 'Fresia',
                imageCorazon7: 'assets/images/jacinto.jpg',
                textCorazon7: 'Jacinto',
                imageCorazon8: 'assets/images/ciclamen.jpg',
                textCorazon8: 'Ciclamen',
                imageCorazon9: 'assets/images/violeta.jpg',
                textCorazon9: 'Violeta',
                imageCorazon10: 'assets/images/cilantro.jpg',
                textCorazon10: 'Cilantro',
                imageCorazon11: 'assets/images/nuez_moscada.jpg',
                textCorazon11: '''Nuez
Moscada''',
                imageCorazon12: 'assets/images/rosa.jpg',
                textCorazon12: 'Rosa',
                imageCorazon13: 'assets/images/reseda.jpg',
                textCorazon13: 'Reseda',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: '''Almizcle
Blanco''',
                imageBase2: 'assets/images/cedro.jpg',
                textBase2: 'Cedro',
                imageBase3: 'assets/images/musgo_de_roble.jpg',
                textBase3: '''Musgo de
Roble''',
                imageBase4: 'assets/images/pachuli.jpg',
                textBase4: 'Pachulí',
                imageBase5: 'assets/images/ambar.jpg',
                textBase5: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(112, 187, 171, 1),
                colorText2: Colors.black87,
                text2: 'aromático',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(98, 142, 190, 1),
                colorText3: Colors.white70,
                text3: 'marino',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(183, 224, 131, 1),
                colorText4: Colors.black54,
                text4: 'fresco especiado',
                containerWidth5: 125,
                containerColor5: Color.fromRGBO(255, 166, 191, 1),
                colorText5: Colors.black45,
                text5: 'florales',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(182, 155, 129, 1),
                colorText6: Colors.white70,
                text6: 'amaderado',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(202, 241, 245, 1),
                colorText7: Colors.black45,
                text7: 'fresco',
              ),
              //TODO: 33
              AromasBuscador(
                title: 'Polo Blue - Ralph Lauren',
                description: '''
Polo Blue de Ralph Lauren es una fragancia de
la familia olfativa Aromática Fougère para
Hombres. Polo Blue se lanzó en 2003. Su
longevidad y su estela son moderadas. Es un
aroma Masculino.
''',
                imageLocion: 'assets/images/polo_blue_ralph_lauren.jpg',
                imageNotaSalida: 'assets/images/pepino.jpg',
                textNotaSalida: 'Pepino',
                imageNotaSalida2: 'assets/images/melon.jpg',
                textNotaSalida2: 'Melón',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/albahaca.jpg',
                textCorazon: 'Albahaca',
                imageCorazon2: 'assets/images/salvia.jpg',
                textCorazon2: 'Salvia',
                imageCorazon3: 'assets/images/geranio.jpg',
                textCorazon3: 'Geranio',
                imageBase: 'assets/images/gamuza.jpg',
                textBase: 'Gamuza',
                imageBase2: 'assets/images/notas_amaderadas.jpg',
                textBase2: '''Notas
Amaderadas''',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(201, 253, 251, 1),
                colorText: Colors.black,
                text: 'ozónico',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(111, 208, 228, 1),
                colorText2: Colors.black,
                text2: 'acuático',
                containerWidth3: 170,
                containerColor3: Color.fromRGBO(110, 186, 170, 1),
                colorText3: Colors.black87,
                text3: 'aromático',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(169, 217, 106, 1),
                colorText4: Colors.black87,
                text4: 'fresco especiado',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(89, 176, 100, 1),
                colorText5: Colors.white,
                text5: 'verde',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(239, 229, 241, 1),
                colorText6: Colors.black87,
                text6: 'almizclado',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(165, 199, 177, 1),
                colorText7: Colors.black54,
                text7: 'herbal',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(197, 240, 244, 1),
                colorText8: Colors.black54,
                text8: 'fresco',
                containerWidth9: 125,
                containerColor9: Color.fromRGBO(179, 150, 124, 1),
                colorText9: Colors.white70,
                text9: 'amaderado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(251, 255, 160, 1),
                colorText10: Colors.black45,
                text10: 'cítrico',
              ),
              //TODO: 34
              AromasBuscador(
                title: 'Carolina Herrera - Carolina Herrera',
                description: '''
Carolina Herrera de Carolina Herrera es una
fragancia de la familia olfativa Floral para
Hombres y Mujeres. Carolina Herrera se lanzó
en 2016. Su longevidad es muy duradera y su
estela es pesada. Es un aroma Femenino.
''',
                imageLocion:
                    'assets/images/carolina_herrera_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/notas_verdes.jpg',
                textNotaSalida: '''Notas
Verdes''',
                imageNotaSalida2: 'assets/images/citricos.jpg',
                textNotaSalida2: 'Cítricos',
                imageCorazon: 'assets/images/nardos.jpg',
                textCorazon: 'Nardos',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageBase: 'assets/images/notas_amaderadas.jpg',
                textBase: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 180,
                containerColor2: Color.fromRGBO(239, 251, 246, 1),
                colorText2: Colors.black87,
                text2: 'nardos',
                containerWidth3: 165,
                containerColor3: Color.fromRGBO(84, 173, 94, 1),
                colorText3: Colors.white,
                text3: 'verdes',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(251, 255, 144, 1),
                colorText4: Colors.black54,
                text4: 'cítrico',
                containerWidth5: 135,
                containerColor5: Color.fromRGBO(172, 140, 111, 1),
                colorText5: Colors.white70,
                text5: 'amaderado',
                containerWidth6: 120,
                containerColor6: Color.fromRGBO(200, 240, 245, 1),
                colorText6: Colors.black45,
                text6: 'fresco',
                containerWidth7: 115,
                containerColor7: Color.fromRGBO(195, 160, 131, 1),
                colorText7: Colors.white60,
                text7: 'animálico',
              ),
              //TODO: 35
              AromasBuscador(
                title: 'CH (2015) - Carolina Herrera',
                description: '''
CH (2015) de Carolina Herrera es una fragancia
de la familia olfativa Ámbar Floral para Mujeres.
CH (2015) se lanzó en 2015. Su longevidad y su
estela son moderadas. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/ch_2015_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/toronja.jpg',
                textNotaSalida: 'Toronja',
                imageNotaSalida2: 'assets/images/bergamota.jpg',
                textNotaSalida2: 'Bergamota',
                imageNotaSalida3: 'assets/images/limon.jpg',
                textNotaSalida3: 'Limón',
                imageCorazon: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon: '''Flor del
Naranjo''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: 'Rosa',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageBase: 'assets/images/cuero.jpg',
                textBase: 'Cuero',
                imageBase2: 'assets/images/praline.jpg',
                textBase2: 'Praliné',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                imageBase5: 'assets/images/cedro.jpg',
                textBase5: 'Cedro',
                imageBase6: 'assets/images/almizcle.jpg',
                textBase6: 'Almizcle',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(153, 115, 79, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(243, 246, 252, 1),
                colorText3: Colors.black87,
                text3: 'floral blanco',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(168, 137, 128, 1),
                colorText4: Colors.white,
                text4: 'cuero',
                containerWidth5: 145,
                containerColor5: Color.fromRGBO(244, 128, 132, 1),
                colorText5: Colors.white,
                text5: 'dulce',
                containerWidth6: 130,
                containerColor6: Color.fromRGBO(190, 152, 120, 1),
                colorText6: Colors.white,
                text6: 'animálico',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(167, 168, 137, 1),
                colorText7: Colors.white,
                text7: 'pachulí',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(142, 201, 188, 1),
                colorText8: Colors.black45,
                text8: 'aromático',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(245, 236, 226, 1),
                colorText9: Colors.black45,
                text9: 'atalcado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(187, 225, 138, 1),
                colorText10: Colors.black45,
                text10: 'fresco especiado',
              ),
              //TODO: 36
              AromasBuscador(
                title: '212 VIP Rosé - Carolina Herrera',
                description: '''
212 VIP Rosé de Carolina Herrera es una fragancia
de la familia olfativa Floral Frutal para Mujeres.
212 VIP Rosé se lanzó en 2014. Su longevidad y
su estela son moderadas. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/212_vip_rose_carolina_herrera.jpg',
                imageNotaSalida: 'assets/images/champagne_rose.jpg',
                textNotaSalida: '''Champagne
Rosa''',
                imageNotaSalida2: 'assets/images/pimienta_rosa.jpg',
                textNotaSalida2: '''Pimienta
Rosa''',
                imageCorazon: 'assets/images/flor_del_duraznero.jpg',
                textCorazon: '''Flor del
Duraznero''',
                imageCorazon2: 'assets/images/rosa.jpg',
                textCorazon2: 'Rosa',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: '''Almizcle
Blanco''',
                imageBase2: 'assets/images/notas_amaderadas.jpg',
                textBase2: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(255, 95, 141, 1),
                colorText: Colors.black,
                text: 'florales',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(236, 224, 238, 1),
                colorText2: Colors.black87,
                text2: 'almizclado',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(159, 123, 89, 1),
                colorText3: Colors.white,
                text3: 'amaderado',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(253, 128, 105, 1),
                colorText4: Colors.black54,
                text4: 'afrutados',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(245, 235, 225, 1),
                colorText5: Colors.black45,
                text5: 'atalcado',
              ),
              //TODO: 37
              AromasBuscador(
                title: '360° - Perry Ellis',
                description: '''
360° de Perry Ellis es una fragancia de la 
familia olfativa Floral para Mujeres. 360°
se lanzó en 1992. Su longevidad y su estela
son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/360_perry_ellis.jpg',
                imageNotaSalida: 'assets/images/melon.jpg',
                textNotaSalida: 'Melón',
                imageNotaSalida2: 'assets/images/azucena.jpg',
                textNotaSalida2: 'Azucena',
                imageNotaSalida3: 'assets/images/osmanto.jpg',
                textNotaSalida3: 'Osmanto',
                imageNotaSalida4: 'assets/images/naranja_tangerina.jpg',
                textNotaSalida4: '''Naranja
Tangerina''',
                imageNotaSalida5: 'assets/images/rosa.jpg',
                textNotaSalida5: 'Rosa',
                imageCorazon: 'assets/images/nenufar.jpg',
                textCorazon: 'Nenúfar',
                imageCorazon2: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon2: '''Lirio de
los Valles''',
                imageCorazon3: 'assets/images/salvia.jpg',
                textCorazon3: 'Salvia',
                imageCorazon4: 'assets/images/lavanda.jpg',
                textCorazon4: 'Lavanda',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vetiver.jpg',
                textBase3: 'Vetiver',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/vainilla.jpg',
                textBase5: 'Vainilla',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(255, 112, 153, 1),
                colorText2: Colors.black,
                text2: 'florales',
                containerWidth3: 185,
                containerColor3: Color.fromRGBO(171, 233, 240, 1),
                colorText3: Colors.black,
                text3: 'fresco',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(133, 215, 232, 1),
                colorText4: Colors.black87,
                text4: 'acuático',
                containerWidth5: 150,
                containerColor5: Color.fromRGBO(110, 186, 169, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(253, 127, 103, 1),
                colorText6: Colors.black54,
                text6: 'afrutados',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(235, 162, 137, 1),
                colorText7: Colors.black54,
                text7: 'especiado suave',
                containerWidth8: 130,
                containerColor8: Color.fromRGBO(239, 229, 241, 1),
                colorText8: Colors.black54,
                text8: 'almizclado',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(166, 132, 101, 1),
                colorText9: Colors.white70,
                text9: 'amaderado',
                containerWidth10: 125,
                containerColor10: Color.fromRGBO(221, 253, 252, 1),
                colorText10: Colors.black45,
                text10: 'ozónico',
              ),
              //TODO: 38
              AromasBuscador(
                title: 'Paris Hilton - Paris Hilton',
                description: '''
Paris Hilton de Paris Hilton es una fragancia
de la familia olfativa Floral Frutal para Mujeres.
Paris Hilton se lanzó en 2005. Su longevidad y su
estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/paris_hilton_paris_hilton.jpg',
                imageNotaSalida: 'assets/images/melon.jpg',
                textNotaSalida: 'Melón',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageNotaSalida3: 'assets/images/durazno.jpg',
                textNotaSalida3: 'Durazno',
                imageCorazon: 'assets/images/fresia.jpg',
                textCorazon: 'Fresia',
                imageCorazon2: 'assets/images/mimosa.jpg',
                textCorazon2: 'Mimosa',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon4: '''Lirio de
los Valles''',
                imageCorazon5: 'assets/images/azucena.jpg',
                textCorazon5: 'Azucena',
                imageCorazon6: 'assets/images/nardos.jpg',
                textCorazon6: 'Nardos',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/ylang_ylang.jpg',
                textBase2: 'Ylang-Ylang',
                imageBase3: 'assets/images/sandalo.jpg',
                textBase3: 'Sándalo',
                imageBase4: 'assets/images/musgo_de_roble.jpg',
                textBase4: '''Musgo de
Roble''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(239, 244, 252, 1),
                colorText2: Colors.black87,
                text2: 'floral blanco',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(172, 233, 240, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 150,
                containerColor4: Color.fromRGBO(255, 139, 172, 1),
                colorText4: Colors.black54,
                text4: 'florales',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(243, 232, 220, 1),
                colorText5: Colors.black54,
                text5: 'atalcado',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(243, 118, 121, 1),
                colorText6: Colors.white,
                text6: 'dulce',
                containerWidth7: 135,
                containerColor7: Color.fromRGBO(219, 253, 252, 1),
                colorText7: Colors.black54,
                text7: 'ozónico',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(151, 221, 235, 1),
                colorText8: Colors.black54,
                text8: 'acuático',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(95, 178, 105, 1),
                colorText9: Colors.white,
                text9: 'verde',
                containerWidth10: 135,
                containerColor10: Color.fromRGBO(255, 232, 98, 1),
                colorText10: Colors.black54,
                text10: 'floral amarillo',
              ),
              //TODO: 39
              AromasBuscador(
                title: 'Can Can - Paris Hilton',
                description: '''
Can Can de Paris Hilton es una fragancia de la
familia olfativa Floral Frutal para Mujeres.
Can Can se lanzó en 2007. Su longevidad y su
estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/can_can_paris_hilton.webp',
                imageNotaSalida: 'assets/images/nectarina.jpg',
                textNotaSalida: 'Nectarina',
                imageNotaSalida2: 'assets/images/grosellas_negras.jpg',
                textNotaSalida2: '''Grosellas
Negras''',
                imageNotaSalida3: 'assets/images/clementina.jpg',
                textNotaSalida3: 'Clementina',
                imageCorazon: 'assets/images/orquidea.jpg',
                textCorazon: '''Orquídea
Silvestre''',
                imageCorazon2: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon2: '''Flor del
Naranjo''',
                imageBase: 'assets/images/ambar.jpg',
                textBase: 'Ámbar',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almzicle',
                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(241, 86, 90, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(202, 114, 66, 1),
                colorText3: Colors.white,
                text3: 'ámbar',
                containerWidth4: 165,
                containerColor4: Color.fromRGBO(242, 230, 218, 1),
                colorText4: Colors.black87,
                text4: 'atalcado',
                containerWidth5: 165,
                containerColor5: Color.fromRGBO(250, 255, 132, 1),
                colorText5: Colors.black87,
                text5: 'cítrico',
                containerWidth6: 155,
                containerColor6: Color.fromRGBO(255, 148, 179, 1),
                colorText6: Colors.black54,
                text6: 'florales',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(169, 137, 106, 1),
                colorText7: Colors.white,
                text7: 'amaderado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(189, 149, 117, 1),
                colorText8: Colors.white70,
                text8: 'animálico',
                containerWidth9: 130,
                containerColor9: Color.fromRGBO(238, 176, 155, 1),
                colorText9: Colors.black45,
                text9: 'especiado suave',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(241, 232, 243, 1),
                colorText10: Colors.black45,
                text10: 'almizclado',
              ),
              //TODO: 40
              AromasBuscador(
                title: 'Heiress - Paris Hilton',
                description: '''
Heiress de Paris Hilton es una fragancia de la
familia olfativa Floral Frutal para Mujeres.
Heiress se lanzó en 2006. Su longevidad y su
estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/heiress_paris_hilton.jpg',
                imageNotaSalida: 'assets/images/champaña.jpg',
                textNotaSalida: 'Champaña',
                imageNotaSalida2: 'assets/images/maracuya.jpg',
                textNotaSalida2: 'Maracuyá',
                imageNotaSalida3: 'assets/images/durazno.jpg',
                textNotaSalida3: 'Durazno',
                imageNotaSalida4: 'assets/images/naranja.jpg',
                textNotaSalida4: 'Naranja',
                imageNotaSalida5: 'assets/images/mimosa.jpg',
                textNotaSalida5: 'Mimosa',
                imageCorazon: 'assets/images/granadina.jpg',
                textCorazon: 'Granadina',
                imageCorazon2: 'assets/images/flor_de_tiare.jpg',
                textCorazon2: '''Flor de
Tiaré''',
                imageCorazon3: 'assets/images/ylang_ylang.jpg',
                textCorazon3: '''Ylang-
Ylang''',
                imageCorazon4: 'assets/images/madreselva.jpg',
                textCorazon4: '''Madre
Selva''',
                imageCorazon5: 'assets/images/jazmin.jpg',
                textCorazon5: '''Jazmín de
Estrella''',
                imageBase: 'assets/images/cumarina.jpg',
                textBase: 'Haba Tonka',
                imageBase2: 'assets/images/hojas_de_violeta.jpg',
                textBase2: '''Hojas de
Violeta''',
                imageBase3: 'assets/images/notas_amaderadas.jpg',
                textBase3: '''Maderas
Blancas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 200,
                containerColor2: Color.fromRGBO(239, 73, 77, 1),
                colorText2: Colors.white,
                text2: 'dulce',
                containerWidth3: 150,
                containerColor3: Color.fromRGBO(238, 222, 242, 1),
                colorText3: Colors.black87,
                text3: 'champán',
                containerWidth4: 140,
                containerColor4: Color.fromRGBO(249, 205, 101, 1),
                colorText4: Colors.black54,
                text4: 'tropical',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(251, 255, 147, 1),
                colorText5: Colors.black54,
                text5: 'cítrico',
                containerWidth6: 135,
                containerColor6: Color.fromRGBO(231, 241, 249, 1),
                colorText6: Colors.black54,
                text6: 'aldehídico',
                containerWidth7: 130,
                containerColor7: Color.fromRGBO(244, 247, 252, 1),
                colorText7: Colors.black54,
                text7: 'floral blanco',
                containerWidth8: 125,
                containerColor8: Color.fromRGBO(255, 234, 117, 1),
                colorText8: Colors.black54,
                text8: 'floral amarillo',
                containerWidth9: 115,
                containerColor9: Color.fromRGBO(201, 241, 245, 1),
                colorText9: Colors.black45,
                text9: 'fresco',
              ),
              //TODO: 41
              AromasBuscador(
                title: 'Toy 2 - Moschino',
                description: '''
Toy 2 de Moschino es una fragancia de la familia
olfativa Almizcle Floral Amaderado para Mujeres.
Toy 2 se lanzó en 2018. Su longevidad y su
estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/toy_2_moschino.jpg',
                imageNotaSalida: 'assets/images/manzana.jpg',
                textNotaSalida: 'Manzana',
                imageNotaSalida2: 'assets/images/mandarina.jpg',
                textNotaSalida2: 'Mandarina',
                imageNotaSalida3: 'assets/images/magnolia.jpg',
                textNotaSalida3: 'Magnolia',
                imageCorazon: 'assets/images/grosella_blanca.jpg',
                textCorazon: '''Grosella
Blanca''',
                imageCorazon2: 'assets/images/peonia.jpg',
                textCorazon2: 'Peonía',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageBase: 'assets/images/almizcle.jpg',
                textBase: 'Almizcle',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/amberwood.jpg',
                textBase3: 'Amberwood',
                containerWidth: 230,
                containerColor: Color.fromRGBO(252, 75, 41, 1),
                colorText: Colors.black,
                text: 'afrutados',
                containerWidth2: 160,
                containerColor2: Color.fromRGBO(255, 138, 171, 1),
                colorText2: Colors.black87,
                text2: 'florales',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(185, 237, 242, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 145,
                containerColor4: Color.fromRGBO(243, 122, 126, 1),
                colorText4: Colors.white,
                text4: 'dulce',
                containerWidth5: 140,
                containerColor5: Color.fromRGBO(251, 255, 143, 1),
                colorText5: Colors.black54,
                text5: 'cítrico',
                containerWidth6: 140,
                containerColor6: Color.fromRGBO(239, 230, 241, 1),
                colorText6: Colors.black54,
                text6: 'almizclado',
                containerWidth7: 120,
                containerColor7: Color.fromRGBO(120, 191, 129, 1),
                colorText7: Colors.white70,
                text7: 'verde',
                containerWidth8: 120,
                containerColor8: Color.fromRGBO(245, 236, 226, 1),
                colorText8: Colors.black45,
                text8: 'atalcado',
                containerWidth9: 115,
                containerColor9: Color.fromRGBO(239, 183, 164, 1),
                colorText9: Colors.black45,
                text9: 'especiado suave',
                containerWidth10: 115,
                containerColor10: Color.fromRGBO(245, 248, 252, 1),
                colorText10: Colors.black45,
                text10: 'floral blanco',
              ),
              //TODO: 42
              AromasBuscador(
                title: 'Amor Amor - Cacharel',
                description: '''
Amor Amor de Cacharel es una fragancia de la
familia olfativa Floral Frutal para Mujeres.
Amor Amor se lanzó en 2003. Su longevidad y
su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/amor_amor_cacharel.webp',
                imageNotaSalida: 'assets/images/grosellas_negras.jpg',
                textNotaSalida: '''Grosellas
Negras''',
                imageNotaSalida2: 'assets/images/naranja.jpg',
                textNotaSalida2: 'Naranja',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageNotaSalida4: 'assets/images/toronja.jpg',
                textNotaSalida4: 'Toronja',
                imageNotaSalida5: 'assets/images/casia.jpg',
                textNotaSalida5: 'Casia',
                imageNotaSalida6: 'assets/images/bergamota.jpg',
                textNotaSalida6: 'Bergamota',
                imageCorazon: 'assets/images/rosa.jpg',
                textCorazon: 'Rosa',
                imageCorazon2: 'assets/images/albaricoque.jpg',
                textCorazon2: 'Chabacano',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/azucena.jpg',
                textCorazon4: 'Azucena',
                imageCorazon5: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon5: '''Lirio de
Valle''',
                imageBase: 'assets/images/vainilla.jpg',
                textBase: 'Vainilla',
                imageBase2: 'assets/images/cumarina.jpg',
                textBase2: '''Haba
Tonka''',
                imageBase3: 'assets/images/almizcle.jpg',
                textBase3: 'Almizcle',
                imageBase4: 'assets/images/ambar.jpg',
                textBase4: 'Ámbar',
                imageBase5: 'assets/images/cedro.jpg',
                textBase5: 'Cedro',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 210,
                containerColor2: Color.fromRGBO(252, 90, 59, 1),
                colorText2: Colors.black,
                text2: 'afrutados',
                containerWidth3: 190,
                containerColor3: Color.fromRGBO(255, 254, 204, 1),
                colorText3: Colors.black87,
                text3: 'avainillado',
                containerWidth4: 160,
                containerColor4: Color.fromRGBO(236, 168, 145, 1),
                colorText4: Colors.black54,
                text4: 'especiado suave',
                containerWidth5: 160,
                containerColor5: Color.fromRGBO(128, 195, 180, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 160,
                containerColor6: Color.fromRGBO(244, 128, 131, 1),
                colorText6: Colors.white,
                text6: 'dulce',
                containerWidth7: 155,
                containerColor7: Color.fromRGBO(244, 234, 223, 1),
                colorText7: Colors.black54,
                text7: 'atalcado',
                containerWidth8: 155,
                containerColor8: Color.fromRGBO(244, 247, 252, 1),
                colorText8: Colors.black54,
                text8: 'floral blanco',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(254, 104, 167, 1),
                colorText9: Colors.white,
                text9: 'rosas',
                containerWidth10: 140,
                containerColor10: Color.fromRGBO(175, 145, 117, 1),
                colorText10: Colors.white,
                text10: 'amaderado',
              ),
              //TODO: 43
              AromasBuscador(
                title: 'La Vie Est Belle - Lancôme',
                description: '''
La Vie Est Belle de Lancôme es una fragancia de
la familia olfativa Floral Frutal Gourmand para
Mujeres. La Vie Est Belle se lanzó en 2012. Su
longevidad es duradera y su estela es pesada.
Es un aroma Femenino.
''',
                imageLocion: 'assets/images/la_vie_est_belle_lancome.jpg',
                imageNotaSalida: 'assets/images/grosellas_negras.jpg',
                textNotaSalida: '''Grosellas
Negras''',
                imageNotaSalida2: 'assets/images/pera.jpg',
                textNotaSalida2: 'Pera',
                imageCorazon: 'assets/images/iris.jpg',
                textCorazon: 'Iris',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/flor_de_azahar_del_naranjo.jpg',
                textCorazon3: '''Flor del
Naranjo''',
                imageBase: 'assets/images/praline.jpg',
                textBase: 'Praliné',
                imageBase2: 'assets/images/vainilla.jpg',
                textBase2: 'Vainilla',
                imageBase3: 'assets/images/pachuli.jpg',
                textBase3: 'Pachulí',
                imageBase4: 'assets/images/cumarina.jpg',
                textBase4: '''Haba
Tonka''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(255, 254, 202, 1),
                colorText2: Colors.black,
                text2: 'avainillado',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(253, 128, 105, 1),
                colorText3: Colors.black87,
                text3: 'afrutados',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(156, 157, 122, 1),
                colorText4: Colors.white,
                text4: 'pachulí',
                containerWidth5: 155,
                containerColor5: Color.fromRGBO(169, 137, 106, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 145,
                containerColor6: Color.fromRGBO(244, 247, 252, 1),
                colorText6: Colors.black54,
                text6: 'floral blanco',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(245, 235, 224, 1),
                colorText7: Colors.black54,
                text7: 'atalcado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(159, 153, 144, 1),
                colorText8: Colors.white70,
                text8: 'terrosos',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(214, 206, 232, 1),
                colorText9: Colors.black45,
                text9: 'iris',
                containerWidth10: 135,
                containerColor10: Color.fromRGBO(226, 142, 114, 1),
                colorText10: Colors.white70,
                text10: 'cálido especiado',
              ),
              //TODO: 44
              AromasBuscador(
                title: 'Light Blue - Dolce&Gabbana',
                description: '''
Light Blue de Dolce&Gabbana es una fragancia de
la familia olfativa Floral Frutal para Mujeres.
Light Blue se lanzó en 2001. Su longevidad es
duradera y su estela es pesada. Es un aroma
Femenino.
''',
                imageLocion: 'assets/images/light_blue_dolce_gabbana.jpg',
                imageNotaSalida: 'assets/images/limon.jpg',
                textNotaSalida: '''Limón
Siciliano''',
                imageNotaSalida2: 'assets/images/manzana.jpg',
                textNotaSalida2: 'Manzana',
                imageNotaSalida3: 'assets/images/cedro.jpg',
                textNotaSalida3: 'Cedro',
                imageNotaSalida4: 'assets/images/campanilla.jpg',
                textNotaSalida4: 'Campanilla',
                imageCorazon: 'assets/images/bambu.jpg',
                textCorazon: 'Bambú',
                imageCorazon2: 'assets/images/jazmin.jpg',
                textCorazon2: 'Jazmín',
                imageCorazon3: 'assets/images/rosa.jpg',
                textCorazon3: '''Rosa
Blanca''',
                imageBase: 'assets/images/cedro.jpg',
                textBase: 'Cedro',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/ambar.jpg',
                textBase3: 'Ámbar',
                containerWidth: 230,
                containerColor: Color.fromRGBO(249, 255, 82, 1),
                colorText: Colors.black,
                text: 'cítrico',
                containerWidth2: 170,
                containerColor2: Color.fromRGBO(147, 107, 69, 1),
                colorText2: Colors.white,
                text2: 'amaderado',
                containerWidth3: 140,
                containerColor3: Color.fromRGBO(186, 237, 242, 1),
                colorText3: Colors.black87,
                text3: 'fresco',
                containerWidth4: 130,
                containerColor4: Color.fromRGBO(253, 139, 117, 1),
                colorText4: Colors.black54,
                text4: 'afrutados',
                containerWidth5: 120,
                containerColor5: Color.fromRGBO(133, 197, 183, 1),
                colorText5: Colors.black54,
                text5: 'aromático',
                containerWidth6: 110,
                containerColor6: Color.fromRGBO(241, 233, 243, 1),
                colorText6: Colors.black45,
                text6: 'almizclado',
                containerWidth7: 105,
                containerColor7: Color.fromRGBO(245, 236, 227, 1),
                colorText7: Colors.black45,
                text7: 'atalcado',
                containerWidth8: 100,
                containerColor8: Color.fromRGBO(129, 195, 137, 1),
                colorText8: Colors.white70,
                text8: 'verde',
              ),
              //TODO: 45
              AromasBuscador(
                title: 'Kim Kardashian - Kim Kardashian',
                description: '''
Kim Kardashian de Kim Kardashian es una
fragancia de la familia olfativa Ámbar Floral
para Mujeres. Kim Kardashian se lanzó en 2009.
Su longevidad es duradera y su estela es pesada.
Es un aroma Femenino.
''',
                imageLocion: 'assets/images/kim_kardashian_kim_kardashian.jpg',
                imageNotaSalida: 'assets/images/madreselva.jpg',
                textNotaSalida: 'Madreselva',
                imageNotaSalida2:
                    'assets/images/flor_de_azahar_del_naranjo.jpg',
                textNotaSalida2: '''Flor del
Naranjo''',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageCorazon: 'assets/images/nardos.jpg',
                textCorazon: 'Nardos',
                imageCorazon2: 'assets/images/gardenia.jpg',
                textCorazon2: 'Gardenia',
                imageCorazon3: 'assets/images/jazmin.jpg',
                textCorazon3: 'Jazmín',
                imageCorazon4: 'assets/images/especias.jpg',
                textCorazon4: 'Especias',
                imageBase: 'assets/images/cumarina.jpg',
                textBase: '''Haba
Tonka''',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/sandalo.jpg',
                textBase3: 'Sándalo',
                imageBase4: 'assets/images/orquidea.jpg',
                textBase4: 'Orquídea',
                imageBase5: 'assets/images/notas_amaderadas.jpg',
                textBase5: '''Notas
Amaderadas''',
                containerWidth: 230,
                containerColor: Color.fromRGBO(237, 242, 251, 1),
                colorText: Colors.black,
                text: 'floral blanco',
                containerWidth2: 130,
                containerColor2: Color.fromRGBO(243, 252, 248, 1),
                colorText2: Colors.black45,
                text2: 'nardos',
                containerWidth3: 120,
                containerColor3: Color.fromRGBO(195, 159, 130, 1),
                colorText3: Colors.white70,
                text3: 'animálico',
              ),
              //TODO: 46
              AromasBuscador(
                title: 'Angel - Mugler',
                description: '''
Angel de Mugler es una fragancia de la familia
olfativa Ámbar Vainilla para Mujeres. Angel se
lanzó en 1992. Su longevidad es muy duradera
y su estela es enorme. Es un aroma Femenino.
''',
                imageLocion: 'assets/images/angel_mugler.webp',
                imageNotaSalida: 'assets/images/algodon_de_azucar.jpg',
                textNotaSalida: '''Algodón de
Azúcar''',
                imageNotaSalida2: 'assets/images/coco.jpg',
                textNotaSalida2: 'Coco',
                imageNotaSalida3: 'assets/images/casia.jpg',
                textNotaSalida3: 'Casis',
                imageNotaSalida4: 'assets/images/melon.jpg',
                textNotaSalida4: 'Melón',
                imageNotaSalida5: 'assets/images/jazmin.jpg',
                textNotaSalida5: 'Jazmín',
                imageNotaSalida6: 'assets/images/bergamota.jpg',
                textNotaSalida6: 'Bergamota',
                imageNotaSalida7: 'assets/images/piña.jpg',
                textNotaSalida7: 'Piña',
                imageNotaSalida8: 'assets/images/mandarina.jpg',
                textNotaSalida8: 'Mandarina',
                imageCorazon: 'assets/images/miel.jpg',
                textCorazon: 'Miel',
                imageCorazon2: 'assets/images/bayas_rojas.jpg',
                textCorazon2: '''Bayas
Rojas''',
                imageCorazon3: 'assets/images/zarzamora.jpg',
                textCorazon3: 'Zarzamora',
                imageCorazon4: 'assets/images/ciruela.jpg',
                textCorazon4: 'Ciruela',
                imageCorazon5: 'assets/images/rosa.jpg',
                textCorazon5: 'Rosa',
                imageCorazon6: 'assets/images/durazno.jpg',
                textCorazon6: 'Durazno',
                imageCorazon7: 'assets/images/jazmin.jpg',
                textCorazon7: 'Jazmín',
                imageCorazon8: 'assets/images/nuez_moscada.jpg',
                textCorazon8: '''Nuez
Moscada''',
                imageCorazon9: 'assets/images/orquidea.jpg',
                textCorazon9: 'Orquídea',
                imageCorazon10: 'assets/images/alcaravea.jpg',
                textCorazon10: 'Alcaravea',
                imageCorazon11: 'assets/images/albaricoque.jpg',
                textCorazon11: 'Chabacano',
                imageCorazon12: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon12: '''Lirio de
los Valles''',
                imageBase: 'assets/images/pachuli.jpg',
                textBase: 'Pachulí',
                imageBase2: 'assets/images/chocolate.jpg',
                textBase2: 'Chocolate',
                imageBase3: 'assets/images/caramelo.jpg',
                textBase3: 'Caramelo',
                imageBase4: 'assets/images/vainilla.jpg',
                textBase4: 'Vainilla',
                imageBase5: 'assets/images/cumarina.jpg',
                textBase5: '''Haba
Tonka''',
                imageBase6: 'assets/images/ambar.jpg',
                textBase6: 'Ámbar',
                imageBase7: 'assets/images/almizcle.jpg',
                textBase7: 'Almizcle',
                imageBase8: 'assets/images/sandalo.jpg',
                textBase8: 'Sándalo',
                containerWidth: 230,
                containerColor: Color.fromRGBO(238, 54, 59, 1),
                colorText: Colors.white,
                text: 'dulce',
                containerWidth2: 160,
                containerColor2: Color.fromRGBO(150, 151, 115, 1),
                colorText2: Colors.white,
                text2: 'pachulí',
                containerWidth3: 155,
                containerColor3: Color.fromRGBO(253, 135, 113, 1),
                colorText3: Colors.black87,
                text3: 'afrutados',
                containerWidth4: 155,
                containerColor4: Color.fromRGBO(221, 120, 87, 1),
                colorText4: Colors.white,
                text4: 'cálido especiado',
                containerWidth5: 155,
                containerColor5: Color.fromRGBO(232, 194, 144, 1),
                colorText5: Colors.black87,
                text5: 'caramelo',
                containerWidth6: 150,
                containerColor6: Color.fromRGBO(255, 254, 215, 1),
                colorText6: Colors.black87,
                text6: 'avainillado',
                containerWidth7: 145,
                containerColor7: Color.fromRGBO(173, 142, 113, 1),
                colorText7: Colors.white,
                text7: 'amaderado',
                containerWidth8: 135,
                containerColor8: Color.fromRGBO(252, 205, 112, 1),
                colorText8: Colors.black54,
                text8: 'amielado',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(245, 235, 226, 1),
                colorText9: Colors.black54,
                text9: 'atalcado',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(166, 139, 113, 1),
                colorText10: Colors.white70,
                text10: 'chocolate',
              ),
              //TODO: 47
              AromasBuscador(
                title: 'Halloween - Halloween',
                description: '''
Halloween de Halloween es una fragancia de la
familia olfativa Ámbar Floral para Mujeres.
Halloween se lanzó en 1997. Su longevidad y
su estela son moderadas. Es una aroma Femenino.
''',
                imageLocion: 'assets/images/halloween_halloween.jpg',
                imageNotaSalida: 'assets/images/violeta.jpg',
                textNotaSalida: 'Violeta',
                imageNotaSalida2: 'assets/images/notas_marinas.jpg',
                textNotaSalida2: '''Notas
Marinas''',
                imageNotaSalida3: 'assets/images/hojas_de_platano.jpg',
                textNotaSalida3: '''Hojas de
Plátano''',
                imageNotaSalida4: 'assets/images/petit_grain.jpg',
                textNotaSalida4: '''Petit
Grain''',
                imageCorazon: 'assets/images/violeta.jpg',
                textCorazon: 'Violeta',
                imageCorazon2: 'assets/images/magnolia.jpg',
                textCorazon2: 'Magnolia',
                imageCorazon3: 'assets/images/lirio_de_los_valles.jpg',
                textCorazon3: '''Lirio de
los Valles''',
                imageCorazon4: 'assets/images/nardos.jpg',
                textCorazon4: 'Nardos',
                imageCorazon5: 'assets/images/pimienta.jpg',
                textCorazon5: 'Pimienta',
                imageBase: 'assets/images/incienso.jpg',
                textBase: 'Incienso',
                imageBase2: 'assets/images/sandalo.jpg',
                textBase2: 'Sándalo',
                imageBase3: 'assets/images/vainilla.jpg',
                textBase3: 'Vainilla',
                imageBase4: 'assets/images/mirra.jpg',
                textBase4: 'Mirra',
                containerWidth: 230,
                containerColor: Color.fromRGBO(156, 29, 255, 1),
                colorText: Colors.white,
                text: 'violeta',
                containerWidth2: 212,
                containerColor2: Color.fromRGBO(239, 224, 208, 1),
                colorText2: Colors.black,
                text2: 'atalcado',
                containerWidth3: 210,
                containerColor3: Color.fromRGBO(37, 98, 164, 1),
                colorText3: Colors.white,
                text3: 'marino',
                containerWidth4: 208,
                containerColor4: Color.fromRGBO(255, 112, 153, 1),
                colorText4: Colors.black,
                text4: 'florales',
                containerWidth5: 206,
                containerColor5: Color.fromRGBO(41, 153, 55, 1),
                colorText5: Colors.white,
                text5: 'verde',
                containerWidth6: 185,
                containerColor6: Color.fromRGBO(95, 179, 160, 1),
                colorText6: Colors.black87,
                text6: 'aromático',
                containerWidth7: 185,
                containerColor7: Color.fromRGBO(175, 234, 240, 1),
                colorText7: Colors.black87,
                text7: 'fresco',
                containerWidth8: 165,
                containerColor8: Color.fromRGBO(242, 245, 252, 1),
                colorText8: Colors.black54,
                text8: 'floral blanco',
                containerWidth9: 145,
                containerColor9: Color.fromRGBO(167, 134, 103, 1),
                colorText9: Colors.white,
                text9: 'amaderado',
                containerWidth10: 143,
                containerColor10: Color.fromRGBO(213, 143, 105, 1),
                colorText10: Colors.white,
                text10: 'ámbar',
              ),
              //TODO: 48
              AromasBuscador(
                title: 'CK2 - Calvin Klein',
                description: '''
CK2 de Calvin Klein es una fragancia de la
familia olfativa Amaderada Aromática para
Hombres y Mujeres. CK2 se lanzó en 2016.
Tiene una longevidad y estela moderadas.
Es un aroma Unisex.
''',
                imageLocion: 'assets/images/ck2_calvin_klein.webp',
                imageNotaSalida: 'assets/images/wasabi.jpg',
                textNotaSalida: 'Wasabi',
                imageNotaSalida2: 'assets/images/hojas_de_violeta.jpg',
                textNotaSalida2: '''Hojas de
Violeta''',
                imageNotaSalida3: 'assets/images/mandarina.jpg',
                textNotaSalida3: 'Mandarina',
                imageNotaSalida4: 'assets/images/pera.jpg',
                textNotaSalida4: 'Pera',
                imageCorazon: 'assets/images/piedrecillas.jpg',
                textCorazon: 'Piedrecillas',
                imageCorazon2: 'assets/images/hediona.jpg',
                textCorazon2: 'Hediona',
                imageCorazon3: 'assets/images/raiz_de_lirio.jpg',
                textCorazon3: '''Raíz de
Lirio''',
                imageCorazon4: 'assets/images/peonia.jpg',
                textCorazon4: 'Peonía',
                imageCorazon5: 'assets/images/rosa.jpg',
                textCorazon5: 'Rosa',
                imageBase: 'assets/images/vetiver.jpg',
                textBase: 'Vetiver',
                imageBase2: 'assets/images/almizcle.jpg',
                textBase2: 'Almizcle',
                imageBase3: 'assets/images/incienso.jpg',
                textBase3: 'Incienso',
                imageBase4: 'assets/images/sandalo.jpg',
                textBase4: 'Sándalo',
                containerWidth: 230,
                containerColor: Color.fromRGBO(113, 187, 191, 1),
                colorText: Colors.black,
                text: 'mineral',
                containerWidth2: 190,
                containerColor2: Color.fromRGBO(150, 209, 73, 1),
                colorText2: Colors.black87,
                text2: 'fresco especiado',
                containerWidth3: 180,
                containerColor3: Color.fromRGBO(211, 253, 252, 1),
                colorText3: Colors.black87,
                text3: 'ozónico',
                containerWidth4: 180,
                containerColor4: Color.fromRGBO(129, 214, 231, 1),
                colorText4: Colors.black87,
                text4: 'acuático',
                containerWidth5: 170,
                containerColor5: Color.fromRGBO(148, 107, 70, 1),
                colorText5: Colors.white,
                text5: 'amaderado',
                containerWidth6: 165,
                containerColor6: Color.fromRGBO(255, 131, 166, 1),
                colorText6: Colors.black87,
                text6: 'florales',
                containerWidth7: 155,
                containerColor7: Color.fromRGBO(76, 170, 87, 1),
                colorText7: Colors.white,
                text7: 'verde',
                containerWidth8: 145,
                containerColor8: Color.fromRGBO(183, 236, 242, 1),
                colorText8: Colors.black54,
                text8: 'fresco',
                containerWidth9: 135,
                containerColor9: Color.fromRGBO(243, 232, 221, 1),
                colorText9: Colors.black45,
                text9: 'atalcado',
                containerWidth10: 130,
                containerColor10: Color.fromRGBO(145, 137, 127, 1),
                colorText10: Colors.white70,
                text10: 'terrosos',
              ),
              //TODO: 49
            ],
          ),
        ),
      ],
    );
  }
}


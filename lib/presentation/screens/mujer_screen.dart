import 'package:marking_web/exports.dart';

class ImageOnHover extends StatefulWidget {

  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;

  // ignore: use_super_parameters
  const ImageOnHover({
    Key? key, 
    required this.imagePath, 
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight, 
  }) : super(key: key);

  @override
  State<ImageOnHover> createState() => _ImageOnHoverState();
}

class _ImageOnHoverState extends State<ImageOnHover> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _changeImage(true),
      onExit: (_) => _changeImage(false),
      child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      currentImage = hover ? widget.hoverImagePath : widget.imagePath;
    });
  }
}

//TODO:

class ImageOnHover2 extends StatefulWidget {
  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;
  final String dialogText;

  // ignore: use_super_parameters
  const ImageOnHover2({
    Key? key,
    required this.imagePath,
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight,
    required this.dialogText,
  }) : super(key: key);

  @override
  State<ImageOnHover2> createState() => _ImageOnHover2State();
}

class _ImageOnHover2State extends State<ImageOnHover2> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath; // Inicializar currentImage con la primera imagen
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showImageDialog(context),
      child: MouseRegion(
        onEnter: (_) => _changeImage(true),
        onExit: (_) => _changeImage(false),
        child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
      ),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      if (hover) {
        currentImage = widget.hoverImagePath;
      } else {
        currentImage = widget.imagePath;
      }
    });
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.imagePath, width: widget.imageWidth, height: widget.imageHeight), // Siempre muestra la primera imagen
                const SizedBox(width: 20),
                SizedBox(
                  width: 440,
                  child: Text(widget.dialogText, style: styleTextLocion)
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//TODO:

class MujerScreen extends StatelessWidget {

  // ignore: use_super_parameters
  const MujerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Mujer', style: styleText3),
                          const SizedBox(height: 20),
                          Text('''
Bienvenidos a nuestra sección dedicada a las mujeres sofisticadas y con estilo.
En Aromas Selectos, te ofrecemos una exquisita variedad de fragancias
que reflejan tu esencia única.

Descubre tus aromas favoritos desde tan solo \$15.000.
Elige el tamaño de tu loción en fl oz y luego la cantidad.
Nuestros precios se manejan así:
1 fl oz = \$15.000
2 fl oz = \$29.000
3 fl oz = \$40.000

¡No te pierdas esta maravillosa oportunidad de disfrutar de fragancias de
primera calidad a un precio increíblemente asequible!
                          ''', style: texto),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/aromas_selectos_1.jpg', width: 300, height: 300, fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
              const SectionMujer(),              
            ],
          ),
        ),
      ),
    );
  }
}

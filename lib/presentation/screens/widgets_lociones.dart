import 'package:marking_web/exports.dart';


class WidgetLocion extends StatefulWidget {

  final String imageLocion;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String priceOriginal;
  final String priceDescuento;
  final Widget promotion;

  // ignore: use_super_parameters
  const WidgetLocion({
    Key? key,
    required this.imageLocion,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.priceOriginal,
    required this.priceDescuento,
    required this.promotion
  }) : super(key: key);

  @override
  State<WidgetLocion> createState() => _WidgetLocionState();
}

class _WidgetLocionState extends State<WidgetLocion> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Image.asset(widget.imageLocion, width: widget.imageWidth, height: widget.imageHeight),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 390,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextSale),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 420,
              left: 90,
              child: widget.promotion,
            ),
            const Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}

class WidgetBolsos extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String priceOriginal;

  // ignore: use_super_parameters
  const WidgetBolsos({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.priceOriginal,
  }) : super(key: key);

  @override
  State<WidgetBolsos> createState() => _WidgetBolsosState();
}

class _WidgetBolsosState extends State<WidgetBolsos> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageBolso,
                hoverImagePath: widget.imageBolso2,
                imageWidth: widget.imageWidth, 
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextPrice),
            ),
            const Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}

class WidgetCamisetas extends StatefulWidget {

  final String imageCamiseta;
  final String imageCamiseta2;
  final double imageWidth;
  final double imageHeight;
  final String nameCamiseta;
  final String priceOriginal;
  final Widget size;
  final Widget size2;
  final Widget size3;
  final Widget size4;
  final Widget size5;
  final Widget size6;

  // ignore: use_super_parameters
  const WidgetCamisetas({
    Key? key, 
    required this.imageCamiseta, 
    required this.imageCamiseta2, 
    required this.imageWidth, 
    required this.imageHeight, 
    required this.nameCamiseta, 
    required this.priceOriginal, 
    required this.size, 
    required this.size2, 
    required this.size3, 
    required this.size4,
    required this.size5,
    required this.size6,
  }) : super(key: key);

  @override
  State<WidgetCamisetas> createState() => _WidgetCamisetasState();
}

class _WidgetCamisetasState extends State<WidgetCamisetas> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 530,
        width: 265,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageCamiseta,
                hoverImagePath: widget.imageCamiseta2,
                imageWidth: widget.imageWidth, 
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameCamiseta, style: styleTextLocion),
            ),
            Positioned(
              top: 390,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextPrice),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 450),
              child: widget.size,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 47),
              child: widget.size2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 89),
              child: widget.size3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 131),
              child: widget.size4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 173),
              child: widget.size5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 215.5),
              child: widget.size6,
            ),
            const Positioned(
              top: 490,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}

class ShirtSize extends StatefulWidget {

  final String size;
  // ignore: use_super_parameters
  const ShirtSize({
    Key? key, 
    required this.size
  }) : super(key: key);

  @override
  State<ShirtSize> createState() => _ShirtSizeState();
}

class _ShirtSizeState extends State<ShirtSize> {

  bool isHovering = false;
  Color? textColor = Colors.grey[700];
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          color: isHovering ? Colors.black : Colors.white
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(widget.size, style: TextStyle(fontSize: 13, color: textColor),
            ),
          ),
        ),
      ),
    );
  }

  void _setHovering(bool hovering) {
    setState(() {
      isHovering = hovering;
      textColor = isHovering ? Colors.white : Colors.grey[700];
    });
  }
}
/*
class ButtonTextBar extends StatefulWidget {

  final String buttonText;
  final VoidCallback onPressed;

  // ignore: use_super_parameters
  const ButtonTextBar({
    Key? key, 
    required this.buttonText, 
    required this.onPressed
  }) : super(key: key);

  @override
  State<ButtonTextBar> createState() => _ButtonTextBarState();
}

class _ButtonTextBarState extends State<ButtonTextBar> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Tooltip(
          message: '',
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: _isHovered ? Colors.grey[700] : Colors.black,
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
*/
//  bool _isHovered = false;

/*GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Tooltip(
          message: '',
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: _isHovered ? Colors.grey[700] : Colors.black,
              ),
            ),
          ),
        ),
      ) ,
    );

    */



class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 23,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: InkWell(
        onTap: () {},
        child: const Center(
          child: Text(
            '23%',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CarShop extends StatelessWidget {
  const CarShop({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 17),
      onPressed: () {}, 
      label: Text('AGREGAR AL CARRITO', style: styleTextCar),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder()
      ),
    );
  }
}
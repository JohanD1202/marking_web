import 'package:marking_web/exports.dart';


class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price
  });
}

class Cart {
  final List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct(int productId) {
    products.removeWhere((product) => product.id == productId);
  }

  double getTotalPrice() {
    return products.fold(0, (total, product) => total + product.price);
  }
}

class ShoppingCart extends StatefulWidget {

  final Cart cart;

  // ignore: use_super_parameters
  const ShoppingCart({Key? key, required this.cart}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.cart.products.length,
      itemBuilder: (BuildContext context, int index) {
        Product product = widget.cart.products[index];
        return ListTile(
          title: Text(product.name),
          subtitle: Text('\$${product.price.toString()}'),
        );
      },
    );
  }
}
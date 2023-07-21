import 'package:db_shop/presentation/state_management/product_provider.dart';
import 'package:db_shop/presentation/widgets/appbar.dart';
import 'package:db_shop/presentation/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // load products, when the app starts
    Provider.of<ProductProvider>(context, listen: false).fetchAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: CustomAppbar(), // APP BAR
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          color: Colors.grey.shade300,

          // list of products
          child: Consumer<ProductProvider>(
            builder: (context, state, _) {
              if (state.productList.isNotEmpty) {
                return ListView.builder(
                  itemCount: state.productList.length,
                  itemBuilder: (context, index) => ProductTile(
                    title: state.productList[index].title,
                    imagePath: state.productList[index].imagePath,
                    price: state.productList[index].price,
                    index:
                        index, //used to identify the current tapped Product from state
                  ),
                );
              } else {
                return const Center(child: Text("NO PRODUCT FOR YOU"));
              }
            },
          ),
        ),
      ),
    );
  }
}

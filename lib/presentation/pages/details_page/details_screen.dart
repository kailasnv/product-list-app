import 'package:db_shop/presentation/state_management/product_provider.dart';
import 'package:db_shop/presentation/widgets/box_button.dart';
import 'package:db_shop/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      // Main contents of screen..
      body: Consumer<ProductProvider>(builder: (context, state, _) {
        return Stack(
          children: [
            // actual page
            _buildBody(state),

            // Product image - is like floating above the page, thats why stack is used
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Hero(
                  tag: index,
                  child: Image.asset(
                    state.productList[index].imagePath,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Column _buildBody(ProductProvider state) {
    return Column(
      children: [
        const Spacer(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.pink.shade100,
            ),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 10),

            //  About the product,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.productList[index].title, // title
                    style: boldStyle(25).copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    state.productList[index].description, // description
                    style: boldStyle(12).copyWith(color: Colors.black),
                  ),
                  const Spacer(),

                  // add to cart button
                  BoxButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price ${state.productList[index].price.toString()} /-",
                            style:
                                whiteText.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Add to cart",
                            style:
                                whiteText.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios_new, color: kBlack),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border, color: Colors.red),
        ),
      ],
    );
  }
}

import 'package:db_shop/presentation/pages/details_page/details_screen.dart';
import 'package:db_shop/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.index,
  });

  final String title;
  final String imagePath;
  final int price;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
      child: GestureDetector(
        // Navigate to the Detailed page of product
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(index: index),
          ));
        },
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              // image stack
              _showProductImage(),
              const SizedBox(width: 10),

              // product Title and price
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: boldStyle(15),
                  ),
                  Text("price  ${price.toString()}/-", style: boldStyle(11)),
                ],
              ),

              const Spacer(),
              // arrow button
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _showProductImage() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const SizedBox(width: 100),
        CircleAvatar(
          backgroundColor: Colors.pink.withOpacity(0.3),
          radius: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Hero(
            tag: index,
            child: Image.asset(
              imagePath,
              height: 55,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}

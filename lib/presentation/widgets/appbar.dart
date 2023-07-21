import 'package:db_shop/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // menu , appName , search  - ROW
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.workspaces_outline, color: kBlack),
                ),
                const Text(
                  "Deep byte",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: kBlack),
                ),
              ],
            ),
          ),
          // our products section
          Row(
            children: [
              const SizedBox(width: 15),
              Text(
                "Our Products",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

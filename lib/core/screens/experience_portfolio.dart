// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:portfolio/core/constants/app_constant.dart';
import 'package:portfolio/core/model/product.dart';

class ExperiencePortfolio extends StatelessWidget {
  ExperiencePortfolio({Key? key}) : super(key: key);

  final List<String> tabs = [
    'All',
    'Tool',
    'Game',
    'Education',
    'Crypto',
    'Personalize',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            CategoryTab(tabs: tabs),
            const CategoryShowCases(),
          ],
        ),
      ),
    );
  }
}

class CategoryShowCases extends StatefulWidget {
  const CategoryShowCases({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryShowCases> createState() => _CategoryShowCasesState();
}

class _CategoryShowCasesState extends State<CategoryShowCases> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: AppConstant.products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = AppConstant.products[index];
            return ShowCaseItem(product: product);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 50,
            mainAxisSpacing: 50,
          ),
        ),
      ),
    );
  }
}

class ShowCaseItem extends StatelessWidget {
  const ShowCaseItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.blueGrey.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            child: Image.asset(
              product.thumbnail,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              product.name,
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              product.createdAt,
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                product.description,
                maxLines: 5,
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  height: 1.5,
                  textStyle: const TextStyle(),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Technologies',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ...product.technologies
                    .map((technology) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          technology,
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            height: 1.5,
                            textStyle: const TextStyle(
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )))
                    .toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: ((context, index) {
          return TextButton(
            onPressed: () {
              /// TODO : Handle Tab Click Later
            },
            child: Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                tabs[index],
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.primaries[Random().nextInt(tabs.length)],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

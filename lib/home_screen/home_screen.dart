import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phase_2_implementation/constantns/app_colors.dart';
import 'package:phase_2_implementation/categories_screen/categories_screen.dart';
import 'package:phase_2_implementation/donate_screen/donate_screen.dart';
import 'package:phase_2_implementation/events_page/events_page.dart';
import 'package:phase_2_implementation/my_cart/my_cart.dart'; // Import the MyCart screen
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Row(
                        children: [
                          Text(
                            "214",
                            style: Get.theme.textTheme.titleLarge
                                ?.copyWith(color: AppColors.mainColor),
                          ),
                          Image.asset(
                            "assets/money.png",
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Hi: ${FirebaseAuth.instance.currentUser?.displayName ?? ""}",
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Events",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: Get.height * .25,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffBBA4E8),
                                    Color(0xffffffff),
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(1.0, 0.0),
                                  tileMode: TileMode.clamp),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: InkWell(
                              onTap: () {
                                // Navigate to the EventsPage
                                Get.to(() => const EventsPage());
                              },
                              child: Text(
                                "View\nEvents",
                                style: Get.theme.textTheme.displaySmall
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 28,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/promotion.png",
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              height: Get.height * .4,
              width: Get.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200),
                  ),
                  color: Color(0xFFF5F2FD)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 60, left: Get.width * .25, right: Get.width * .25),
                    child: InkWell(
                      onTap: () {
                        // Navigate to CategoriesScreen
                        Get.to(() => const CategoriesScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add Item",
                            style: Get.theme.textTheme.displaySmall?.copyWith(
                              fontSize: 31,
                            ),
                          ),
                          const Icon(Icons.add_circle_outline,
                              size: 40, color: AppColors.mainColor),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: Get.width * .25, right: Get.width * .18),
                    child: InkWell(
                      onTap: () {
                        Get.to(const Donate());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Donate",
                            style: Get.theme.textTheme.displaySmall?.copyWith(
                              fontSize: 31,
                            ),
                          ),
                          const Icon(Icons.monetization_on,
                              size: 40, color: AppColors.mainColor),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: Get.width * .25, right: Get.width * .18),
                    child: InkWell(
                      onTap: () {
                        // Navigate to MyCart screen
                        Get.to(const ShoppingCartPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Cart",
                            style: Get.theme.textTheme.displaySmall?.copyWith(
                              fontSize: 31,
                            ),
                          ),
                          const Icon(Icons.shopping_cart,
                              size: 40, color: AppColors.mainColor),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

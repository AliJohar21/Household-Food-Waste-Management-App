import 'package:flutter/material.dart';
import 'package:phase_2_implementation/constantns/app_colors.dart';
import 'package:get/get.dart';
import 'package:phase_2_implementation/main_screenF/main_navigation.dart';
import 'package:phase_2_implementation/payment/payment.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Events",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                      fontSize: 31,
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
                            child: Text(
                              "View\nEvents",
                              style: Get.theme.textTheme.displaySmall?.copyWith(
                                  color: Colors.white,
                                  fontSize: 28,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white),
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
            const SizedBox(height: 15),
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
                        MainNavigation.of(context)?.setIndex(1);
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
                          Image.asset(
                            "assets/right.png",
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: Get.width * .25, right: Get.width * .18),
                    child: InkWell(
                      onTap: () {
                        Get.to(const PaymentMethodPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Donate Money",
                            style: Get.theme.textTheme.displaySmall?.copyWith(
                              fontSize: 31,
                            ),
                          ),
                          Image.asset(
                            "assets/right.png",
                            height: 40,
                          )
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

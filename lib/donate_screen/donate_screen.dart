import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              const Text(
                "Donate",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 5),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 220,
                      child: Stack(
                        children: [
                          const DonationOption(
                            label: 'food',
                            icon: Icons.attach_money,
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                "images/Picsart_24-03-19_00-23-24-161.png",
                                height: 100,
                              )),
                        ],
                      ),
                    )),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: SizedBox(
                      height: 220,
                      child: Stack(
                        children: [
                          const DonationOption(
                            color: Colors.deepPurple,
                            label: 'mone',
                            fontColor: Colors.white,
                            icon: Icons.attach_money,
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "images/Picsart_24-03-19_01-27-05-307.png",
                                height: 110,
                              )),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Expanded(
                          flex: 10,
                          child: Text(
                            'Find nearest Food  Bank Branch',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 4,
                              wordSpacing: 9,
                              color: Colors.black,
                              fontSize: 24,
                            ),
                            maxLines: 2,
                          )),
                      Flexible(
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 28,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 28,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DonationOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color fontColor;

  const DonationOption({
    super.key,
    required this.label,
    required this.icon,
    this.color = Colors.white,
    this.fontColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tapping on the donation option
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
            decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: Colors.black54,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: fontColor,
                  fontFamily: "Odisseia",
                ),
              ),
            )),
      ),
    );
  }
}

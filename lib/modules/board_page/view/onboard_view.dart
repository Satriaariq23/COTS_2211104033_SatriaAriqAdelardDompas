import 'package:cots_2211104033/modules/board_page/view/home_view.dart';
import 'package:cots_2211104033/modules/board_page/controller/onboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardView extends StatelessWidget {
  final OnboardController controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header dengan logo dan icon bahasa
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/Gojek_Logo.png', height: 30),
                  Image.asset('assets/images/Language.png', height: 30),
                ],
              ),
              SizedBox(height: 24),

              // Carousel menggunakan PageView
              Expanded(
                flex: 3,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  children: [
                    _buildCarouselItem(
                      imagePath: 'assets/images/onboardi1.png',
                      title: 'Selamat datang di Gojek!',
                      description:
                          'Memberikan Pelayanan yang terbaik untuk anda semua!',
                    ),
                    _buildCarouselItem(
                      imagePath: 'assets/images/onboardi1.png',
                      title: 'Mudah Digunakan',
                      description:
                          'Aplikasi yang dirancang agar mudah digunakan kapan saja.',
                    ),
                    _buildCarouselItem(
                      imagePath: 'assets/images/onboardi1.png',
                      title: 'Aman dan Terpercaya',
                      description:
                          'Kami menjaga keamanan dan kepercayaan Anda setiap saat.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Indikator Carousel
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: index == controller.currentPage.value
                              ? Colors.green
                              : Colors.grey,
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 32),

              // Tombol Masuk
              ElevatedButton(
                onPressed: () {
                  Get.to(HomeView());
                },
                child: Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 16),

              // Tombol Daftar
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Belum ada akun?, Daftar dulu',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Spacer dan Ketentuan Layanan
              Spacer(),
              Text(
                'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselItem({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(imagePath, height: 200),
        ),
        SizedBox(height: 24),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

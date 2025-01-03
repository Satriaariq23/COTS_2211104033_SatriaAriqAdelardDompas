import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  // PageController untuk mengelola carousel
  final PageController pageController = PageController();

  // Variabel untuk melacak halaman aktif
  var currentPage = 0.obs;

  // Pindah ke halaman berikutnya
  void nextPage() {
    if (currentPage.value < 2) {
      // Jumlah halaman carousel (0, 1, 2)
      pageController.animateToPage(
        currentPage.value + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Pindah ke halaman sebelumnya
  void previousPage() {
    if (currentPage.value > 0) {
      pageController.animateToPage(
        currentPage.value - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Update currentPage berdasarkan perubahan di PageView
  void onPageChanged(int index) {
    currentPage.value = index;
  }

  @override
  void onClose() {
    pageController.dispose(); // Membersihkan controller ketika tidak digunakan
    super.onClose();
  }
}

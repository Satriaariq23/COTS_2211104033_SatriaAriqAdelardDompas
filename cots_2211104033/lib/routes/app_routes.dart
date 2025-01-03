class AppPages {
  static final routes = [
    GetPage(name: Routes.ONBOARDING, page: () => OnboardingPage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.MAIN, page: () => MainPage()),
  ];
}

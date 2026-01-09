import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BeautisApp());
}

class BeautisApp extends StatelessWidget {
  const BeautisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beautis',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFFFF5F5),
      ),
      routes: {
        AppRoutes.onboarding: (_) => const OnboardingFlowPage(),
        AppRoutes.createAccount: (_) => const CreateAccountPage(),
        AppRoutes.verification: (_) => const VerificationPage(),
        AppRoutes.completeProfile: (_) => const CompleteProfilePage(),
        AppRoutes.home: (_) => const HomePage(),
        AppRoutes.notifications: (_) => const NotificationsPage(),
        AppRoutes.search: (_) => const SearchPage(),
      },
      home: const SplashPage(),
    );
  }
}

class AppRoutes {
  static const onboarding = '/onboarding';
  static const createAccount = '/create-account';
  static const verification = '/verification';
  static const completeProfile = '/complete-profile';
  static const home = '/home';
  static const notifications = '/notifications';
  static const search = '/search';
}

class AppColors {
  static const background = Color(0xFFFFF5F5);
  static const accent = Color(0xFFB08C77);
  static const accentLight = Color(0xFFF0E2D9);
  static const textPrimary = Color(0xFF2E2320);
  static const textSecondary = Color(0xFF7C6B62);
  static const border = Color(0xFFE7D8D0);
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboarding);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'assets/splash/splash.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class OnboardingFlowPage extends StatefulWidget {
  const OnboardingFlowPage({super.key});

  @override
  State<OnboardingFlowPage> createState() => _OnboardingFlowPageState();
}

class _OnboardingFlowPageState extends State<OnboardingFlowPage> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<_OnboardingPageData> _pages = const [
    _OnboardingPageData(
      title: 'Your Beauty Journey\nStarts Here',
      subtitle:
          'Book for yourself or send joy to someone\nspecial, anytime, anywhere in the UAE.',
      backdropAsset: 'assets/onboarding/onb1_backdrop.png',
      backAsset: 'assets/onboarding/onb1_back.png',
      frontAsset: 'assets/onboarding/onb1_front.png',
    ),
    _OnboardingPageData(
      title: 'Simple Payments & Wallet',
      subtitle:
          'Secure payments with cards, Apple Pay,\nGoogle Pay, or bank transfer. Gifts and\nrefunds go straight to your wallet.',
      backdropAsset: 'assets/onboarding/onb2_backdrop.png',
      backAsset: 'assets/onboarding/onb2_back.png',
      frontAsset: 'assets/onboarding/onb2_front.png',
    ),
    _OnboardingPageData(
      title: 'Book Beauty, Your Way',
      subtitle:
          'Find trusted salons for in-salon visits or\nhome services.',
      backdropAsset: 'assets/onboarding/onb3_backdrop.png',
      backAsset: 'assets/onboarding/onb3_back.png',
      frontAsset: 'assets/onboarding/onb3_front.png',
    ),
    _OnboardingPageData(
      title: 'Beauty sent with Love',
      subtitle:
          'Book salon services or send beauty\nexperiences as gifts, all in one app.',
      backdropAsset: 'assets/onboarding/onb4_backdrop.png',
      backAsset: 'assets/onboarding/onb4_back.png',
      frontAsset: 'assets/onboarding/onb4_front.png',
    ),
    _OnboardingPageData(
      title: 'Send Beauty as a Gift',
      subtitle:
          'Surprise someone with a salon appointment or\nsend wallet credit they can use anytime. Perfect\nfor special days.',
      backdropAsset: 'assets/onboarding/onb5_backdrop.png',
      backAsset: 'assets/onboarding/onb5_back.png',
      frontAsset: 'assets/onboarding/onb5_front.png',
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goNext() {
    if (_currentIndex < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      return;
    }
    Navigator.of(context).pushReplacementNamed(AppRoutes.createAccount);
  }

  void _skip() {
    _controller.animateToPage(
      _pages.length - 1,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: _pages.length,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          itemBuilder: (context, index) {
            final data = _pages[index];
            final showSkip = index > 0;
            return _OnboardingPage(
              data: data,
              currentIndex: index,
              total: _pages.length,
              showSkip: showSkip,
              onContinue: _goNext,
              onSkip: _skip,
            );
          },
        ),
      ),
    );
  }
}

class _OnboardingPageData {
  const _OnboardingPageData({
    required this.title,
    required this.subtitle,
    required this.backdropAsset,
    required this.backAsset,
    required this.frontAsset,
  });

  final String title;
  final String subtitle;
  final String backdropAsset;
  final String backAsset;
  final String frontAsset;
}

class _OnboardingPage extends StatelessWidget {
  const _OnboardingPage({
    required this.data,
    required this.currentIndex,
    required this.total,
    required this.showSkip,
    required this.onContinue,
    required this.onSkip,
  });

  final _OnboardingPageData data;
  final int currentIndex;
  final int total;
  final bool showSkip;
  final VoidCallback onContinue;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: _ImageStack(
              backdropAsset: data.backdropAsset,
              backAsset: data.backAsset,
              frontAsset: data.frontAsset,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  data.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: AppColors.accent,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data.subtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    height: 1.4,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 18),
                _DotsIndicator(current: currentIndex, total: total),
                const SizedBox(height: 18),
                _PrimaryButton(label: 'Continue', onPressed: onContinue),
                if (showSkip) ...[
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: onSkip,
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFF5B514B),
                    ),
                    child: Text(
                      'Skip',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageStack extends StatelessWidget {
  const _ImageStack({
    required this.backdropAsset,
    required this.backAsset,
    required this.frontAsset,
  });

  final String backdropAsset;
  final String backAsset;
  final String frontAsset;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final cardSize = width * 0.62;
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: height * 0.04,
              child: Image.asset(
                backdropAsset,
                width: width * 0.6,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: height * 0.18,
              left: width * 0.05,
              child: _RotatedCard(
                asset: backAsset,
                size: cardSize,
                angle: -0.13,
              ),
            ),
            Positioned(
              top: height * 0.24,
              right: width * 0.02,
              child: _RotatedCard(
                asset: frontAsset,
                size: cardSize,
                angle: 0.1,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _RotatedCard extends StatelessWidget {
  const _RotatedCard({
    required this.asset,
    required this.size,
    required this.angle,
  });

  final String asset;
  final double size;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 16,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(asset, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class _DotsIndicator extends StatelessWidget {
  const _DotsIndicator({required this.current, required this.total});

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(total, (index) {
        final isActive = index == current;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 18 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isActive ? AppColors.accent : AppColors.border,
            borderRadius: BorderRadius.circular(6),
          ),
        );
      }),
    );
  }
}

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _usePhone = true;

  @override
  Widget build(BuildContext context) {
    final label = _usePhone ? 'Mobile Number' : 'Email Address';
    final hint = _usePhone ? '555 000-0000' : 'example@email.com';
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 18),
              Text(
                'Create Account',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Join us to discover and book the\nbest beauty services near you.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 24),
              _SegmentedPicker(
                leftLabel: 'Phone Number',
                rightLabel: 'Email Address',
                leftSelected: _usePhone,
                onSelectLeft: () => setState(() => _usePhone = true),
                onSelectRight: () => setState(() => _usePhone = false),
              ),
              const SizedBox(height: 18),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _TextFieldBox(
                prefixText: _usePhone ? '+1 ' : null,
                hintText: hint,
                keyboardType:
                    _usePhone ? TextInputType.phone : TextInputType.emailAddress,
              ),
              const SizedBox(height: 18),
              _PrimaryButton(
                label: 'Send Verification',
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.verification),
              ),
              const SizedBox(height: 18),
              Text(
                'Or',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 16),
              _OutlineButton(
                label: 'Google',
                icon: const _LetterIcon('G'),
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              _OutlineButton(
                label: 'Apple',
                icon: const Icon(Icons.apple, color: Colors.black),
                onPressed: () {},
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                    children: [
                      const TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: AppColors.accent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  static const int _totalSeconds = 30;
  late int _secondsLeft;
  Timer? _timer;
  final List<String> _digits = ['', '', '', ''];

  @override
  void initState() {
    super.initState();
    _secondsLeft = _totalSeconds;
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsLeft == 0) {
        timer.cancel();
        return;
      }
      setState(() {
        _secondsLeft -= 1;
      });
    });
  }

  void _enterDigit(String digit) {
    final index = _digits.indexWhere((value) => value.isEmpty);
    if (index == -1) return;
    setState(() {
      _digits[index] = digit;
    });
  }

  void _backspace() {
    final index = _digits.lastIndexWhere((value) => value.isNotEmpty);
    if (index == -1) return;
    setState(() {
      _digits[index] = '';
    });
  }

  String _formatTimer(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final timeText = _formatTimer(_secondsLeft);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Verification',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Enter the 4-digit code sent to\n+1 555 000-0000',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  final value = _digits[index];
                  return Padding(
                    padding: EdgeInsets.only(right: index == 3 ? 0 : 12),
                    child: _OtpBox(
                      text: value,
                      isActive: value.isNotEmpty,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 14),
              Text(
                'Resend code in $timeText',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 22),
              _PrimaryButton(
                label: 'Verify',
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.completeProfile),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: _NumberPad(
                  onNumber: _enterDigit,
                  onBackspace: _backspace,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  bool _isFemale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Complete Profile',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Help us get to know you better.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 18),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 86,
                    width: 86,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.camera_alt_outlined,
                        color: AppColors.textSecondary, size: 30),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.accent,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Name',
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  Expanded(
                    child: _TextFieldBox(hintText: 'Sarah'),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _TextFieldBox(hintText: 'Johnson'),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: _SelectableChip(
                      label: 'Female',
                      selected: _isFemale,
                      onTap: () => setState(() => _isFemale = true),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _SelectableChip(
                      label: 'Male',
                      selected: !_isFemale,
                      onTap: () => setState(() => _isFemale = false),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              _PrimaryButton(
                label: 'Create Account',
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.home),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  bool _showLanguageMenu = false;
  String _language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: GoogleFonts.poppins(
                            fontSize: 11.5,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Home • 5th Avenue, NY',
                              style: GoogleFonts.poppins(
                                fontSize: 13.5,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(Icons.keyboard_arrow_down,
                                size: 18, color: AppColors.textSecondary),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _IconButton(
                    asset: 'assets/home/icon_globe.png',
                    onTap: () => setState(
                      () => _showLanguageMenu = !_showLanguageMenu,
                    ),
                  ),
                  const SizedBox(width: 8),
                  _IconButton(
                    asset: 'assets/home/icon_bell.png',
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.notifications),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  _SearchField(
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.search),
                  ),
                  if (_showLanguageMenu)
                    Positioned(
                      right: 12,
                      top: -64,
                      child: _LanguageDropdown(
                        selected: _language,
                        onSelect: (value) => setState(() {
                          _language = value;
                          _showLanguageMenu = false;
                        }),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _CategoryItem(
                    label: 'Home\nService',
                    asset: 'assets/home/icon_house.png',
                  ),
                  _CategoryItem(
                    label: 'In-Salon\nService',
                    asset: 'assets/home/icon_store.png',
                  ),
                  _CategoryItem(
                    label: 'Offers &\nDeals',
                    asset: 'assets/home/icon_tag.png',
                  ),
                ],
              ),
              const SizedBox(height: 18),
              _OfferCard(
                title: '20% OFF First Booking',
                subtitle: 'Use code: BEAUTY20',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _ActionCard(
                title: 'Send a Beauty Gift',
                subtitle: 'Surprise friends with spa days or\ncustom cards',
                leading: Icons.favorite_border,
                onTap: () {},
              ),
              const SizedBox(height: 18),
              _SectionHeader(
                title: 'Trending Salons',
                action: 'See All',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _SalonCard(
                    title: index == 0 ? 'Luxe Beauty Spa' : 'Glow Haven',
                    rating: index == 0 ? '4.8' : '4.5',
                    distance: index == 0 ? '1.2 km' : '2.1 km',
                    price: r'$$$',
                  ),
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemCount: 2,
                ),
              ),
              const SizedBox(height: 18),
              _SectionHeader(
                title: 'Your Favorites',
                action: 'See All',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 140,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _FavoriteCard(
                    title: index == 0 ? 'Zen Garden' : 'Glamour Spot',
                    subtitle: index == 0 ? 'Spa & Massage' : 'Makeup Artist',
                  ),
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemCount: 2,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: _currentTab,
        onTap: (index) => setState(() => _currentTab = index),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Notifications',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Mark all read',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    'Clear all',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
                children: const [
                  _NotificationSection(title: 'Today'),
                  SizedBox(height: 10),
                  _NotificationCard(
                    iconAsset: 'assets/notifications/icon_calendar.png',
                    title: 'Booking confirmed',
                    subtitle:
                        'Your appointment at Glow & Polish\nStudio is confirmed for today at 6:00 PM.',
                    meta: 'Booking • View details',
                    time: '2 min ago',
                    highlighted: true,
                  ),
                  SizedBox(height: 12),
                  _NotificationCard(
                    iconAsset: 'assets/notifications/icon_gift.png',
                    title: 'You received a beauty gift',
                    subtitle:
                        'Amira sent you a spa day at Bliss\nLounge. Tap to view and schedule.',
                    meta: 'Gift • Valid for 6 months',
                    time: '30 min ago',
                    highlighted: true,
                  ),
                  SizedBox(height: 18),
                  _NotificationSection(title: 'Earlier'),
                  SizedBox(height: 10),
                  _NotificationCard(
                    iconAsset: 'assets/notifications/icon_percent.png',
                    title: '20% off your first booking',
                    subtitle:
                        'Use code BEAUTY20 at checkout\nand enjoy your first visit for less.',
                    meta: 'Offer • Expires in 3 days',
                    time: 'Yesterday',
                  ),
                  SizedBox(height: 12),
                  _NotificationCard(
                    iconAsset: 'assets/notifications/icon_wallet.png',
                    title: 'Wallet funded',
                    subtitle:
                        'You added \$50.00 to your Beautis\nwallet. Happy pampering.',
                    meta: 'Wallet • Receipt in wallet',
                    time: '22-12-2025',
                  ),
                  SizedBox(height: 12),
                  _NotificationCard(
                    iconAsset: 'assets/notifications/icon_bell.png',
                    title: 'Appointment reminder',
                    subtitle:
                        'Don’t forget: your gel manicure at\nGlow & Polish Studio is tomorrow at\n5:30 PM.',
                    meta: 'Reminder • 2 hours before',
                    time: '21-12-2025',
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: AppColors.border),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _FilterChip(label: 'All', selected: true),
                  _FilterChip(label: 'Bookings'),
                  _FilterChip(label: 'Gifts'),
                  _FilterChip(label: 'Offers'),
                ],
              ),
            ),
            _BottomNavBar(
              currentIndex: 0,
              onTap: (_) => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.home),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller =
      TextEditingController(text: 'Manicure');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search,
                              color: AppColors.textSecondary, size: 18),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: GoogleFonts.poppins(
                                fontSize: 13.5,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _controller.clear(),
                            child: const Icon(Icons.close,
                                size: 16, color: AppColors.textSecondary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/home/icon_filter.png',
                    height: 18,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          _FilterChip(label: 'All', selected: true),
                          SizedBox(width: 8),
                          _FilterChip(label: 'Near Me'),
                          SizedBox(width: 8),
                          _FilterChip(label: 'Ratings'),
                          SizedBox(width: 8),
                          _FilterChip(label: 'Open Now'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '12 results found',
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                children: const [
                  _SearchResultCard(
                    title: 'Glow & Polish Studio',
                    subtitle: 'Downtown Area • Open until 9 PM',
                    tags: ['Nails', 'Spa'],
                    priceLabel: '\$25.00',
                    rating: '4.9',
                    distance: '1.2 km',
                    promoted: true,
                  ),
                  SizedBox(height: 16),
                  _SearchResultCard(
                    title: 'Bella Vita Salon',
                    subtitle: 'West Avenue • Open until 8 PM',
                    tags: ['Hair', 'Makeup', 'Home Service'],
                    rating: '4.7',
                    distance: '0.8 km',
                  ),
                  SizedBox(height: 16),
                  _SearchResultCard(
                    title: 'Pinky Promise Nails',
                    subtitle: 'Mall District • Closes Soon',
                    tags: ['Nails', 'Spa'],
                    priceLabel: '\$15.00',
                    rating: '4.5',
                    distance: '2.5 km',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 1,
        onTap: (_) => Navigator.of(context)
            .pushReplacementNamed(AppRoutes.home),
      ),
    );
  }
}

class _NotificationSection extends StatelessWidget {
  const _NotificationSection({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 12.5,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({
    required this.iconAsset,
    required this.title,
    required this.subtitle,
    required this.meta,
    required this.time,
    this.highlighted = false,
  });

  final String iconAsset;
  final String title;
  final String subtitle;
  final String meta;
  final String time;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: highlighted ? const Color(0xFFF5E6DD) : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF0E2D9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                iconAsset,
                color: AppColors.accent,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  meta,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({required this.label, this.selected = false});

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF1E4DB) : Colors.transparent,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 12.5,
          fontWeight: FontWeight.w600,
          color: selected ? AppColors.textPrimary : AppColors.textSecondary,
        ),
      ),
    );
  }
}

class _SearchResultCard extends StatelessWidget {
  const _SearchResultCard({
    required this.title,
    required this.subtitle,
    required this.tags,
    required this.rating,
    required this.distance,
    this.priceLabel,
    this.promoted = false,
  });

  final String title;
  final String subtitle;
  final List<String> tags;
  final String rating;
  final String distance;
  final String? priceLabel;
  final bool promoted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFFEDE2DC),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
              ),
              if (promoted)
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.accent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Promoted',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 18,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 12,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    distance,
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 14.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: tags
                      .map((tag) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3E7DF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              tag,
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: AppColors.accent,
                              ),
                            ),
                          ))
                      .toList(),
                ),
                if (priceLabel != null) ...[
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      priceLabel!,
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.action,
    required this.onTap,
  });

  final String title;
  final String action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text(
            action,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              color: AppColors.accent,
            ),
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: AppColors.textSecondary, size: 18),
            const SizedBox(width: 8),
            Text(
              'Find salons, services...',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({required this.label, required this.asset});

  final String label;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 54,
          width: 54,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF6EAE2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset(asset, color: AppColors.accent),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 11.5,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

class _OfferCard extends StatelessWidget {
  const _OfferCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData leading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF1E9E5),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(leading, color: AppColors.accent),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }
}

class _SalonCard extends StatelessWidget {
  const _SalonCard({
    required this.title,
    required this.rating,
    required this.distance,
    required this.price,
  });

  final String title;
  final String rating;
  final String distance;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFF2E8E3),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 12, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      distance,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FavoriteCard extends StatelessWidget {
  const _FavoriteCard({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFF2E8E3),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NavItem(
            label: 'Home',
            asset: 'assets/home/icon_home.png',
            selected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          _NavItem(
            label: 'Explore',
            asset: 'assets/home/icon_explore.png',
            selected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          _NavItem(
            label: 'Bookings',
            asset: 'assets/home/icon_store.png',
            selected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          _NavItem(
            label: 'Wallet',
            asset: 'assets/home/icon_wallet.png',
            selected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
          _NavItem(
            label: 'Profile',
            asset: 'assets/home/icon_profile.png',
            selected: currentIndex == 4,
            onTap: () => onTap(4),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.label,
    required this.asset,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final String asset;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.accent : AppColors.textSecondary;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(asset, height: 20, color: color),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 10.5,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({required this.asset, required this.onTap});

  final String asset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(asset, color: AppColors.accent),
        ),
      ),
    );
  }
}

class _LanguageDropdown extends StatelessWidget {
  const _LanguageDropdown({required this.selected, required this.onSelect});

  final String selected;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          children: [
            _LanguageOption(
              label: 'English',
              selected: selected == 'English',
              onTap: () => onSelect('English'),
            ),
            const SizedBox(height: 8),
            _LanguageOption(
              label: 'عربي',
              selected: selected == 'عربي',
              onTap: () => onSelect('عربي'),
            ),
          ],
        ),
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? AppColors.accentLight : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? AppColors.accent : AppColors.border,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: selected ? AppColors.accent : AppColors.textPrimary,
                ),
              ),
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.border),
                color: selected ? AppColors.accent : Colors.white,
              ),
              child: selected
                  ? Center(
                      child: Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _SegmentedPicker extends StatelessWidget {
  const _SegmentedPicker({
    required this.leftLabel,
    required this.rightLabel,
    required this.leftSelected,
    required this.onSelectLeft,
    required this.onSelectRight,
  });

  final String leftLabel;
  final String rightLabel;
  final bool leftSelected;
  final VoidCallback onSelectLeft;
  final VoidCallback onSelectRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E7DF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onSelectLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: leftSelected ? const Color(0xFFE8D4C8) : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    leftLabel,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onSelectRight,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: leftSelected ? Colors.transparent : const Color(0xFFE8D4C8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    rightLabel,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextFieldBox extends StatelessWidget {
  const _TextFieldBox({
    this.hintText = '',
    this.prefixText,
    this.keyboardType,
  });

  final String hintText;
  final String? prefixText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 13,
          color: AppColors.textSecondary,
        ),
        prefixText: prefixText,
        prefixStyle: GoogleFonts.poppins(
          fontSize: 13,
          color: AppColors.textPrimary,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: GoogleFonts.poppins(
        fontSize: 13,
        color: AppColors.textPrimary,
      ),
    );
  }
}

class _SelectableChip extends StatelessWidget {
  const _SelectableChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFF4E3D8) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? AppColors.accent : Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
              color: selected ? AppColors.accent : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

class _OtpBox extends StatelessWidget {
  const _OtpBox({required this.text, this.isActive = false});

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isActive ? AppColors.accent : Colors.transparent,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _NumberPad extends StatelessWidget {
  const _NumberPad({required this.onNumber, required this.onBackspace});

  final ValueChanged<String> onNumber;
  final VoidCallback onBackspace;

  @override
  Widget build(BuildContext context) {
    final numbers = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '',
      '0',
      'back',
    ];
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: numbers.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.4,
      ),
      itemBuilder: (context, index) {
        final value = numbers[index];
        if (value.isEmpty) return const SizedBox.shrink();
        if (value == 'back') {
          return IconButton(
            onPressed: onBackspace,
            icon: const Icon(Icons.backspace_outlined),
          );
        }
        return InkWell(
          onTap: () => onNumber(value),
          borderRadius: BorderRadius.circular(12),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  const _OutlineButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.textPrimary,
          side: const BorderSide(color: AppColors.border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LetterIcon extends StatelessWidget {
  const _LetterIcon(this.letter);

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          letter,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF4285F4),
          ),
        ),
      ),
    );
  }
}

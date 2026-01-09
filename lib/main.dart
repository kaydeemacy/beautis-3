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
        AppRoutes.joinBeauties: (_) => const JoinBeautiesPage(),
        AppRoutes.home: (_) => const HomePage(),
        AppRoutes.notifications: (_) => const NotificationsPage(),
        AppRoutes.search: (_) => const SearchPage(),
        AppRoutes.filters: (_) => const FiltersPage(),
        AppRoutes.homeServices: (_) => const HomeServicesPage(),
        AppRoutes.inSalon: (_) => const InSalonPage(),
        AppRoutes.offersDeals: (_) => const OffersDealsPage(),
        AppRoutes.specialOffer: (_) => const SpecialOfferPage(),
        AppRoutes.sendGift: (_) => const SendGiftPage(),
        AppRoutes.contactAccess: (_) => const ContactAccessPage(),
        AppRoutes.salonDetail: (_) => const SalonDetailPage(),
        AppRoutes.salonAbout: (_) => const SalonAboutPage(),
        AppRoutes.salonReviews: (_) => const SalonReviewsPage(),
        AppRoutes.salonPortfolio: (_) => const SalonPortfolioPage(),
        AppRoutes.portfolioDetail: (_) => const PortfolioDetailPage(),
        AppRoutes.booking: (_) => const BookingPage(),
        AppRoutes.reviewBooking: (_) => const ReviewBookingPage(),
        AppRoutes.bookingRecipient: (_) => const BookingRecipientPage(),
        AppRoutes.bookingConfirmed: (_) => const BookingConfirmedPage(),
        AppRoutes.addedToCalendar: (_) => const AddedToCalendarPage(),
        AppRoutes.calendarView: (_) => const CalendarViewPage(),
        AppRoutes.selectOccasion: (_) => const SelectOccasionPage(),
        AppRoutes.giftCard: (_) => const GiftCardPage(),
        AppRoutes.giftReviewPay: (_) => const GiftReviewPayPage(),
        AppRoutes.giftPaymentConfirmed: (_) => const GiftPaymentConfirmedPage(),
        AppRoutes.redeemCode: (_) => const RedeemCodePage(),
        AppRoutes.wallet: (_) => const WalletPage(),
        AppRoutes.addMoney: (_) => const AddMoneyPage(),
        AppRoutes.addNewCard: (_) => const AddNewCardPage(),
        AppRoutes.myBookings: (_) => const MyBookingsPage(),
        AppRoutes.profile: (_) => const ProfilePage(),
        AppRoutes.explore: (_) => const ExplorePage(),
        AppRoutes.partnerDiscover: (_) => const PartnerDiscoverPage(),
        AppRoutes.partnerVerification: (_) => const PartnerVerificationPage(),
        AppRoutes.partnerCompleteProfile: (_) =>
            const PartnerCompleteProfilePage(),
        AppRoutes.partnerWorkingHours: (_) => const PartnerWorkingHoursPage(),
        AppRoutes.partnerServices: (_) => const PartnerServicesPage(),
        AppRoutes.partnerHome: (_) => const PartnerHomePage(),
        AppRoutes.partnerCalendar: (_) => const PartnerCalendarPage(),
        AppRoutes.partnerAppointmentPending: (_) =>
            const AppointmentPendingPage(),
        AppRoutes.partnerAppointmentAccepted: (_) =>
            const AppointmentAcceptedPage(),
        AppRoutes.partnerAppointmentCanceled: (_) =>
            const AppointmentCanceledPage(),
        AppRoutes.partnerReviews: (_) => const PartnerReviewsPage(),
        AppRoutes.partnerServicesList: (_) => const PartnerServicesListPage(),
        AppRoutes.partnerEditService: (_) => const PartnerEditServicePage(),
        AppRoutes.partnerWallet: (_) => const PartnerWalletPage(),
        AppRoutes.partnerWithdraw: (_) => const PartnerWithdrawPage(),
        AppRoutes.partnerWithdrawMethod: (_) => const PartnerWithdrawMethodPage(
              showSuccessBanner: false,
            ),
        AppRoutes.partnerWithdrawMethodSuccess: (_) =>
            const PartnerWithdrawMethodPage(showSuccessBanner: true),
        AppRoutes.partnerAddBankAccount: (_) => const PartnerAddBankAccountPage(),
        AppRoutes.partnerWithdrawSuccess: (_) =>
            const PartnerWithdrawSuccessPage(),
        AppRoutes.partnerPending: (_) => const PartnerPendingBookingsPage(),
        AppRoutes.partnerAccepted: (_) => const PartnerAcceptedBookingsPage(),
        AppRoutes.partnerRescheduled: (_) =>
            const PartnerRescheduledBookingsPage(),
        AppRoutes.partnerCanceled: (_) => const PartnerCanceledBookingsPage(),
        AppRoutes.partnerNotifications: (_) => const PartnerNotificationsPage(),
        AppRoutes.partnerProfile: (_) => const PartnerProfilePage(),
        AppRoutes.partnerAboutInfo: (_) => const PartnerAboutInfoPage(),
        AppRoutes.partnerStaffMembers: (_) => const PartnerStaffMembersPage(),
        AppRoutes.partnerPortfolio: (_) => const PartnerPortfolioPage(),
        AppRoutes.partnerPortfolioDetail: (_) =>
            const PartnerPortfolioDetailPage(),
        AppRoutes.addService: (_) => const AddServicePage(),
        AppRoutes.selectCategory: (_) => const SelectCategoryPage(),
        AppRoutes.selectTechnician: (_) => const SelectTechnicianPage(),
        AppRoutes.addStaff: (_) => const AddStaffMemberPage(),
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
  static const joinBeauties = '/join-beauties';
  static const home = '/home';
  static const notifications = '/notifications';
  static const search = '/search';
  static const filters = '/filters';
  static const homeServices = '/home-services';
  static const inSalon = '/in-salon';
  static const offersDeals = '/offers-deals';
  static const specialOffer = '/special-offer';
  static const sendGift = '/send-gift';
  static const contactAccess = '/contact-access';
  static const salonDetail = '/salon-detail';
  static const salonAbout = '/salon-about';
  static const salonReviews = '/salon-reviews';
  static const salonPortfolio = '/salon-portfolio';
  static const portfolioDetail = '/portfolio-detail';
  static const booking = '/booking';
  static const reviewBooking = '/review-booking';
  static const bookingRecipient = '/booking-recipient';
  static const bookingConfirmed = '/booking-confirmed';
  static const addedToCalendar = '/added-to-calendar';
  static const calendarView = '/calendar-view';
  static const selectOccasion = '/select-occasion';
  static const giftCard = '/gift-card';
  static const giftReviewPay = '/gift-review-pay';
  static const giftPaymentConfirmed = '/gift-payment-confirmed';
  static const redeemCode = '/redeem-code';
  static const wallet = '/wallet';
  static const addMoney = '/add-money';
  static const addNewCard = '/add-new-card';
  static const myBookings = '/my-bookings';
  static const profile = '/profile';
  static const explore = '/explore';
  static const partnerDiscover = '/partner-discover';
  static const partnerVerification = '/partner-verification';
  static const partnerCompleteProfile = '/partner-complete-profile';
  static const partnerWorkingHours = '/partner-working-hours';
  static const partnerServices = '/partner-services';
  static const partnerHome = '/partner-home';
  static const partnerCalendar = '/partner-calendar';
  static const partnerAppointmentPending = '/partner-appointment-pending';
  static const partnerAppointmentAccepted = '/partner-appointment-accepted';
  static const partnerAppointmentCanceled = '/partner-appointment-canceled';
  static const partnerReviews = '/partner-reviews';
  static const partnerServicesList = '/partner-services-list';
  static const partnerEditService = '/partner-edit-service';
  static const partnerWallet = '/partner-wallet';
  static const partnerWithdraw = '/partner-withdraw';
  static const partnerWithdrawMethod = '/partner-withdraw-method';
  static const partnerWithdrawMethodSuccess =
      '/partner-withdraw-method-success';
  static const partnerAddBankAccount = '/partner-add-bank-account';
  static const partnerWithdrawSuccess = '/partner-withdraw-success';
  static const partnerPending = '/partner-pending';
  static const partnerAccepted = '/partner-accepted';
  static const partnerRescheduled = '/partner-rescheduled';
  static const partnerCanceled = '/partner-canceled';
  static const partnerNotifications = '/partner-notifications';
  static const partnerProfile = '/partner-profile';
  static const partnerAboutInfo = '/partner-about-info';
  static const partnerStaffMembers = '/partner-staff-members';
  static const partnerPortfolio = '/partner-portfolio';
  static const partnerPortfolioDetail = '/partner-portfolio-detail';
  static const addService = '/add-service';
  static const selectCategory = '/select-category';
  static const selectTechnician = '/select-technician';
  static const addStaff = '/add-staff';
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
    Navigator.of(context).pushReplacementNamed(AppRoutes.joinBeauties);
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

class JoinBeautiesPage extends StatelessWidget {
  const JoinBeautiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                'Join Beauties',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Choose how you want to use the app to\nget started.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 24),
              _JoinOptionCard(
                title: 'Customer',
                subtitle:
                    'Book beauty services, buy\ngifts, and explore salons near\nyou.',
                icon: Icons.person_outline,
                onTap: () =>
                    Navigator.of(context).pushNamed(AppRoutes.createAccount),
              ),
              const SizedBox(height: 16),
              _JoinOptionCard(
                title: 'Salon Partner',
                subtitle:
                    'Manage appointments,\nshowcase your portfolio, and\ngrow business.',
                icon: Icons.storefront_outlined,
                onTap: () =>
                    Navigator.of(context).pushNamed(AppRoutes.partnerDiscover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _JoinOptionCard extends StatelessWidget {
  const _JoinOptionCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: AppColors.accentLight,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppColors.accent),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.textSecondary,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerDiscoverPage extends StatefulWidget {
  const PartnerDiscoverPage({super.key});

  @override
  State<PartnerDiscoverPage> createState() => _PartnerDiscoverPageState();
}

class _PartnerDiscoverPageState extends State<PartnerDiscoverPage> {
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
                'Get Discovered & Booked',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Reach nearby clients searching for trusted\nbeauty professionals. Accept in-salon and\nhome-service bookings without stress.',
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
                    .pushNamed(AppRoutes.partnerVerification),
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

class PartnerVerificationPage extends StatelessWidget {
  const PartnerVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return VerificationPage(
      onVerified: () => Navigator.of(context)
          .pushReplacementNamed(AppRoutes.partnerCompleteProfile),
    );
  }
}

class PartnerCompleteProfilePage extends StatelessWidget {
  const PartnerCompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Complete Profile',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              'Help us get to know you better.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Step 1 of 3',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const Spacer(),
                Text(
                  'Basic Details',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _LabeledField(label: 'Salon Name', hint: 'Luxury Glow Studio'),
            _LabeledField(label: 'Business Phone', hint: '+1 234 567 890'),
            _LabeledField(
              label: 'Business Email',
              hint: 'info@luxuryglowstudio.com',
            ),
            _LabeledField(
              label: 'Business Address',
              hint: 'Select on map',
              trailing: const Icon(Icons.location_on_outlined,
                  size: 18, color: AppColors.textSecondary),
            ),
            _LabeledField(
              label: 'Service Type',
              hint: 'Home Service Only',
              trailing: const Icon(Icons.keyboard_arrow_down,
                  size: 18, color: AppColors.textSecondary),
            ),
            const SizedBox(height: 8),
            _UploadCard(label: 'Owner/Manager ID'),
            const SizedBox(height: 12),
            _UploadCard(label: 'Business License'),
            const SizedBox(height: 12),
            _LabeledField(
              label: 'Bank account details (for payouts)',
              hint: 'Bank Name\nAccount Number\nAccount holder Name',
              trailing: const Icon(Icons.location_on_outlined,
                  size: 18, color: AppColors.textSecondary),
              multiLine: true,
            ),
            const SizedBox(height: 12),
            Text(
              'I agree that the above information are correct\nand there are no impersonation.',
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Continue',
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerWorkingHours),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerWorkingHoursPage extends StatelessWidget {
  const PartnerWorkingHoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Working Hours',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Step 2 of 3',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const Spacer(),
                Text(
                  'Availability',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Quick Sets',
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: const [
                _ChoiceChip(label: 'Every Day', selected: true),
                _ChoiceChip(label: 'Mon–Fri, 9–6', selected: false),
                _ChoiceChip(label: 'Weekends Only', selected: false),
              ],
            ),
            const SizedBox(height: 16),
            ...[
              'Monday',
              'Tuesday',
              'Wednesday',
              'Thursday',
              'Friday',
              'Saturday',
              'Sunday'
            ].map(
              (day) => _WorkingHourRow(day: day),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Continue',
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerServices),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerServicesPage extends StatelessWidget {
  const PartnerServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add Service',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Step 3 of 3',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const Spacer(),
                Text(
                  'Services',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 240,
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Added Services',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            _ServiceSummaryCard(
              title: 'Classic Manicure',
              duration: '45 mins',
              price: '\$35.00',
              staff: 'Sarah J.',
            ),
            const SizedBox(height: 12),
            _ServiceSummaryCard(
              title: 'Haircut & Blowdry',
              duration: '60 mins',
              price: '\$65.00',
              staff: 'Mike R.',
            ),
            const SizedBox(height: 14),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.addService),
              icon: const Icon(Icons.add, color: AppColors.accent),
              label: Text(
                'Add New Service',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.accent,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size(double.infinity, 52),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'By submitting, you agree to our Terms & Conditions\nfor Salon Partners.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 12),
            _PrimaryButton(
              label: 'Submit Application',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.partnerHome),
            ),
          ],
        ),
      ),
    );
  }
}

class AddServicePage extends StatelessWidget {
  const AddServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add Service',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 16),
            _LabeledField(label: 'Service Name', hint: 'e.g. Gel Manicure'),
            _LabeledField(
              label: 'Category',
              hint: 'Select Category',
              trailing: const Icon(Icons.keyboard_arrow_down,
                  size: 18, color: AppColors.textSecondary),
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.selectCategory),
            ),
            Row(
              children: [
                Expanded(
                  child: _LabeledField(label: 'Price (\$)', hint: '0.00'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _LabeledField(
                    label: 'Duration',
                    hint: '30 min',
                    trailing: const Icon(Icons.access_time,
                        size: 18, color: AppColors.textSecondary),
                    onTap: () => showDialog<void>(
                      context: context,
                      builder: (_) => const ServiceDurationDialog(),
                    ),
                  ),
                ),
              ],
            ),
            _LabeledField(
              label: 'Assigned Staff (Optional)',
              hint: 'Select Technician',
              trailing: const Icon(Icons.person_outline,
                  size: 18, color: AppColors.textSecondary),
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.selectTechnician),
            ),
            _LabeledField(
              label: 'Description',
              hint: 'Describe the service details...',
              multiLine: true,
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Service',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectCategoryPage extends StatelessWidget {
  const SelectCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Hair Styling',
      'Nails',
      'Makeup',
      'Facial & Skincare',
      'Pedicure',
      'Manicure',
      'Massage & Spa',
      'Waxing',
      'Men\'s Grooming',
    ];
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Select Category',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            ...categories.map(
              (category) => Container(
                margin: const EdgeInsets.only(bottom: 14),
                child: Row(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF3E7DF),
                      ),
                      child: const Icon(Icons.star_outline,
                          color: AppColors.accent, size: 16),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        category,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    if (category == 'Nails')
                      const Icon(Icons.check,
                          color: AppColors.accent, size: 18),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectTechnicianPage extends StatelessWidget {
  const SelectTechnicianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Select Technician',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Your Technicians will be displayed here. Click “+ \nAdd Staff” to add a new Technician.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.addStaff),
              icon: const Icon(Icons.add, color: AppColors.accent),
              label: Text(
                'Add Staff',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.accent,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size(double.infinity, 52),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddStaffMemberPage extends StatelessWidget {
  const AddStaffMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add Staff Member',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 18),
            Column(
              children: [
                Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.border,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: const Icon(Icons.camera_alt_outlined,
                      color: AppColors.textSecondary),
                ),
                const SizedBox(height: 8),
                Text(
                  'Upload Photo',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            _LabeledField(label: 'Full Name', hint: 'e.g. Sarah Jenkins'),
            _LabeledField(label: 'Role / Title', hint: 'e.g. Senior Stylist'),
          ],
        ),
      ),
    );
  }
}

class PartnerHomePage extends StatefulWidget {
  const PartnerHomePage({super.key});

  @override
  State<PartnerHomePage> createState() => _PartnerHomePageState();
}

class _PartnerHomePageState extends State<PartnerHomePage> {
  bool _showLanguageMenu = false;
  String _language = 'English';
  int _currentTab = 0;

  void _handleBottomNav(int index) {
    setState(() => _currentTab = index);
    switch (index) {
      case 1:
        Navigator.of(context).pushNamed(AppRoutes.partnerCalendar);
        break;
      case 2:
        Navigator.of(context).pushNamed(AppRoutes.partnerServicesList);
        break;
      case 3:
        Navigator.of(context).pushNamed(AppRoutes.partnerWallet);
        break;
      case 4:
        Navigator.of(context).pushNamed(AppRoutes.profile);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: _currentTab,
        onTap: _handleBottomNav,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Glow Studio',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Tue, 24 Oct',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          setState(() => _showLanguageMenu = !_showLanguageMenu),
                      icon: const Icon(Icons.public, color: AppColors.accent),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerNotifications),
                      icon:
                          const Icon(Icons.notifications_none_outlined),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Balance',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '\$1,250.50',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '+ \$120.00 today',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _PartnerStatCard(
                      count: '4',
                      label: 'Pending',
                      color: const Color(0xFFF4A146),
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerPending),
                    ),
                    _PartnerStatCard(
                      count: '12',
                      label: 'Accepted',
                      color: const Color(0xFF26B075),
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerAccepted),
                    ),
                    _PartnerStatCard(
                      count: '12',
                      label: 'Rescheduled',
                      color: const Color(0xFF7B89FF),
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerRescheduled),
                    ),
                    _PartnerStatCard(
                      count: '2',
                      label: 'Canceled',
                      color: const Color(0xFFE05A5A),
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerCanceled),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Bookings',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerCalendar),
                      child: Text(
                        'See Calendar',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.accent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerAppointmentAccepted),
                  child: _PartnerBookingRow(
                    time: '10:00',
                    period: 'AM',
                    name: 'Sarah Jenkins',
                    service: 'Gel Manicure • 45m',
                    status: 'ACCEPTED',
                    statusColor: const Color(0xFF26B075),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerAppointmentPending),
                  child: _PartnerBookingRow(
                    time: '01:30',
                    period: 'PM',
                    name: 'Emily Rose',
                    service: 'Haircut & Style • 60m',
                    status: 'PENDING',
                    statusColor: const Color(0xFFF4A146),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Reviews',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.partnerReviews),
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          fontSize: 11.5,
                          color: AppColors.accent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: _ReviewCard(
                        name: 'Maria K.',
                        rating: '5.0',
                        text:
                            'Absolutely loved the service! The staff was friendly and the result...',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _ReviewCard(
                        name: 'Layla',
                        rating: '4.4',
                        text:
                            'Great atmosphere and professional team.',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (_showLanguageMenu)
              Positioned(
                right: 20,
                top: 60,
                child: _LanguageDropdown(
                  current: _language,
                  onSelect: (value) => setState(() {
                    _language = value;
                    _showLanguageMenu = false;
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _PartnerBottomNav extends StatelessWidget {
  const _PartnerBottomNav({
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final items = [
      _BottomNavItem(icon: Icons.home_outlined, label: 'Home'),
      _BottomNavItem(icon: Icons.calendar_today_outlined, label: 'Calendar'),
      _BottomNavItem(icon: Icons.content_cut, label: 'Services'),
      _BottomNavItem(icon: Icons.account_balance_wallet_outlined, label: 'Wallet'),
      _BottomNavItem(icon: Icons.person_outline, label: 'Profile'),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index) {
          final selected = currentIndex == index;
          final item = items[index];
          return GestureDetector(
            onTap: () => onTap(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  item.icon,
                  color: selected ? AppColors.accent : AppColors.textSecondary,
                  size: 20,
                ),
                const SizedBox(height: 4),
                Text(
                  item.label,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color:
                        selected ? AppColors.accent : AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _BottomNavItem {
  const _BottomNavItem({required this.icon, required this.label});

  final IconData icon;
  final String label;
}

void _handlePartnerNavTap(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).pushNamed(AppRoutes.partnerHome);
      break;
    case 1:
      Navigator.of(context).pushNamed(AppRoutes.partnerCalendar);
      break;
    case 2:
      Navigator.of(context).pushNamed(AppRoutes.partnerServicesList);
      break;
    case 3:
      Navigator.of(context).pushNamed(AppRoutes.partnerWallet);
      break;
    case 4:
      Navigator.of(context).pushNamed(AppRoutes.partnerProfile);
      break;
    default:
      break;
  }
}

class _PartnerStatCard extends StatelessWidget {
  const _PartnerStatCard({
    required this.count,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final String count;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: 74,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          children: [
            Text(
              count,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PartnerBookingRow extends StatelessWidget {
  const _PartnerBookingRow({
    required this.time,
    required this.period,
    required this.name,
    required this.service,
    required this.status,
    required this.statusColor,
  });

  final String time;
  final String period;
  final String name;
  final String service;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                time,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                period,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  service,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            status,
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: statusColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    required this.name,
    required this.rating,
    required this.text,
  });

  final String name;
  final String rating;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xFFF1B760), size: 14),
              const SizedBox(width: 4),
              Text(
                rating,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
              const Spacer(),
              Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageDropdown extends StatelessWidget {
  const _LanguageDropdown({
    required this.current,
    required this.onSelect,
  });

  final String current;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    final options = ['English', 'عربي'];
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 160,
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
          children: options.map((option) {
            final selected = option == current;
            return InkWell(
              onTap: () => onSelect(option),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        option,
                        style: GoogleFonts.poppins(
                          fontSize: 12.5,
                          fontWeight:
                              selected ? FontWeight.w600 : FontWeight.w500,
                          color:
                              selected ? AppColors.accent : AppColors.textPrimary,
                        ),
                      ),
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color:
                              selected ? AppColors.accent : AppColors.border,
                        ),
                      ),
                      child: selected
                          ? Center(
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.accent,
                                ),
                              ),
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _ServiceSummaryCard extends StatelessWidget {
  const _ServiceSummaryCard({
    required this.title,
    required this.duration,
    required this.price,
    required this.staff,
  });

  final String title;
  final String duration;
  final String price;
  final String staff;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              Icon(Icons.edit_outlined,
                  color: AppColors.textSecondary, size: 18),
              const SizedBox(width: 8),
              Icon(Icons.delete_outline,
                  color: AppColors.textSecondary, size: 18),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            '$duration • $price',
            style: GoogleFonts.poppins(
              fontSize: 11.5,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.person_outline,
                  size: 14, color: AppColors.textSecondary),
              const SizedBox(width: 4),
              Text(
                staff,
                style: GoogleFonts.poppins(
                  fontSize: 11.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PartnerPendingBookingsPage extends StatelessWidget {
  const PartnerPendingBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _PartnerBookingListPage(
      title: 'Pending Bookings (4)',
      badgeLabel: 'Action Required',
      badgeColor: const Color(0xFFFFB15C),
      detailRoute: AppRoutes.partnerAppointmentPending,
    );
  }
}

class PartnerAcceptedBookingsPage extends StatelessWidget {
  const PartnerAcceptedBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _PartnerBookingListPage(
      title: 'Accepted Bookings (12)',
      badgeLabel: 'Accepted',
      badgeColor: const Color(0xFF5ED39A),
      detailRoute: AppRoutes.partnerAppointmentAccepted,
    );
  }
}

class PartnerRescheduledBookingsPage extends StatelessWidget {
  const PartnerRescheduledBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _PartnerBookingListPage(
      title: 'Rescheduled Bookings (2)',
      badgeLabel: 'Rescheduled Bookings',
      badgeColor: const Color(0xFF9AA4FF),
      detailRoute: AppRoutes.partnerAppointmentAccepted,
    );
  }
}

class PartnerCanceledBookingsPage extends StatelessWidget {
  const PartnerCanceledBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _PartnerBookingListPage(
      title: 'Canceled Bookings (2)',
      badgeLabel: 'Canceled Bookings',
      badgeColor: const Color(0xFFFF6E6E),
      detailRoute: AppRoutes.partnerAppointmentCanceled,
    );
  }
}

class PartnerNotificationsPage extends StatelessWidget {
  const PartnerNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: 0,
        onTap: (index) => _handlePartnerNavTap(context, index),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Notifications',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                Text(
                  'Mark all read',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Clear all',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Today',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 10),
            _PartnerNotificationCard(
              title: 'Booking confirmed',
              subtitle:
                  'Your appointment at Glow & Polish Studio is confirmed for today at 6:00 PM.',
              time: '2 min ago',
              icon: Icons.calendar_today_outlined,
            ),
            const SizedBox(height: 12),
            _PartnerNotificationCard(
              title: 'You received a beauty gift',
              subtitle:
                  'Amira sent you a spa day at Bliss Lounge. Tap to view and schedule.',
              time: '30 min ago',
              icon: Icons.card_giftcard_outlined,
            ),
            const SizedBox(height: 14),
            Text(
              'Earlier',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 10),
            _PartnerNotificationCard(
              title: '20% off your first booking',
              subtitle:
                  'Use code BEAUTY20 at checkout and enjoy your first visit for less.',
              time: 'Yesterday',
              icon: Icons.percent,
            ),
            const SizedBox(height: 12),
            _PartnerNotificationCard(
              title: 'Wallet funded',
              subtitle:
                  'You added \$50.00 to your Beautis wallet. Happy pampering.',
              time: '22-12-2025',
              icon: Icons.account_balance_wallet_outlined,
            ),
            const SizedBox(height: 12),
            _PartnerNotificationCard(
              title: 'Appointment reminder',
              subtitle:
                  'Don’t forget: your gel manicure at Glow & Polish Studio is tomorrow at 5:30 PM.',
              time: '21-12-2025',
              icon: Icons.notifications_outlined,
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFF7EFEA),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _FilterChip(label: 'All', selected: true),
                  _FilterChip(label: 'Bookings', selected: false),
                  _FilterChip(label: 'Gifts', selected: false),
                  _FilterChip(label: 'Offers', selected: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerCalendarPage extends StatelessWidget {
  const PartnerCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: 1,
        onTap: (index) => _handlePartnerNavTap(context, index),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Row(
                children: [
                  Text(
                    'Calendar',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.search, size: 18),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.accent,
                    child: const Icon(Icons.add, size: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
              child: Row(
                children: [
                  Text(
                    'October 2023',
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: List.generate(5, (index) {
                  final labels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
                  final dates = ['23', '24', '25', '26', '27'];
                  final selected = index == 1;
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: index == 4 ? 0 : 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color:
                              selected ? AppColors.accent : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: Column(
                          children: [
                            Text(
                              labels[index],
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: selected
                                    ? Colors.white
                                    : AppColors.textSecondary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              dates[index],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: selected
                                    ? Colors.white
                                    : AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 8),
            const Divider(height: 1),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
                children: [
                  _CalendarHourRow(label: '09:00'),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.partnerAppointmentPending),
                    child: _CalendarAppointmentCard(
                      title: 'Sarah Jenkins',
                      subtitle: 'Gel Manicure',
                      time: '10:00 - 10:45',
                      accent: const Color(0xFF3BB273),
                      helper: 'Lisa M.',
                    ),
                  ),
                  const SizedBox(height: 12),
                  _CalendarBreakCard(
                    title: 'Break Time',
                    subtitle: 'Personal',
                    time: '11:00 - 11:30',
                  ),
                  const SizedBox(height: 12),
                  _CalendarHourRow(label: '12:00'),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.partnerAppointmentAccepted),
                    child: _CalendarAppointmentCard(
                      title: 'Emily Rose',
                      subtitle: 'Haircut & Style',
                      time: '01:30 - 02:30',
                      accent: const Color(0xFFF4A146),
                      helper: 'Jessica K.',
                    ),
                  ),
                  const SizedBox(height: 12),
                  _CalendarHourRow(label: '03:00'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CalendarHourRow extends StatelessWidget {
  const _CalendarHourRow({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 56,
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 11.5,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.border.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}

class _CalendarAppointmentCard extends StatelessWidget {
  const _CalendarAppointmentCard({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.accent,
    required this.helper,
  });

  final String title;
  final String subtitle;
  final String time;
  final Color accent;
  final String helper;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4,
            height: 52,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(10),
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
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.accentLight,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        time,
                        style: GoogleFonts.poppins(
                          fontSize: 10.5,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 8,
                      backgroundColor: AppColors.accentLight,
                      child: Icon(Icons.person,
                          size: 10, color: AppColors.accent),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      helper,
                      style: GoogleFonts.poppins(
                        fontSize: 10.5,
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

class _CalendarBreakCard extends StatelessWidget {
  const _CalendarBreakCard({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF7EFEA),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.textSecondary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
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
          Text(
            time,
            style: GoogleFonts.poppins(
              fontSize: 10.5,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class AppointmentPendingPage extends StatelessWidget {
  const AppointmentPendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AppointmentDetailsScaffold(
      statusLabel: 'Pending Confirmation',
      statusColor: const Color(0xFFF4A146),
      showActions: true,
      onAccept: () => Navigator.of(context)
          .pushReplacementNamed(AppRoutes.partnerAppointmentAccepted),
      onDecline: () => Navigator.of(context)
          .pushReplacementNamed(AppRoutes.partnerAppointmentCanceled),
    );
  }
}

class AppointmentAcceptedPage extends StatelessWidget {
  const AppointmentAcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AppointmentDetailsScaffold(
      statusLabel: 'Accepted',
      statusColor: Color(0xFF5ED39A),
      showActions: false,
    );
  }
}

class AppointmentCanceledPage extends StatelessWidget {
  const AppointmentCanceledPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AppointmentDetailsScaffold(
      statusLabel: 'Canceled Bookings',
      statusColor: Color(0xFFFF6E6E),
      showActions: false,
    );
  }
}

class _AppointmentDetailsScaffold extends StatelessWidget {
  const _AppointmentDetailsScaffold({
    required this.statusLabel,
    required this.statusColor,
    required this.showActions,
    this.onAccept,
    this.onDecline,
  });

  final String statusLabel;
  final Color statusColor;
  final bool showActions;
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Appointment Details',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      statusLabel,
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Booking #829310',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _InfoSection(
              title: 'CLIENT DETAILS',
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.accentLight,
                        child: Icon(Icons.person, color: AppColors.accent),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sarah Jenkins',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          Text(
                            'New Client • 1st Visit',
                            style: GoogleFonts.poppins(
                              fontSize: 11.5,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _OutlineButton(
                          label: 'Message',
                          icon: const Icon(Icons.chat_bubble_outline,
                              size: 16),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _OutlineButton(
                          label: 'Call',
                          icon:
                              const Icon(Icons.call_outlined, size: 16),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _InfoSection(
              title: 'APPOINTMENT INFO',
              child: Column(
                children: [
                  _InfoRow(label: 'Date', value: 'Tue, 24 Oct 2023'),
                  _InfoRow(label: 'Time', value: '10:00 AM - 10:45 AM'),
                  _InfoRow(label: 'Duration', value: '45 mins'),
                  _InfoRow(label: 'Technician', value: 'Lisa M.'),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _InfoSection(
              title: 'PAYMENT SUMMARY',
              child: Column(
                children: [
                  _InfoRow(label: 'Gel Manicure', value: '\$45.00'),
                  Text(
                    'Standard Service',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const Divider(height: 20),
                  _InfoRow(label: 'Total', value: '\$45.00'),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.credit_card,
                          size: 14, color: Color(0xFF3BB273)),
                      const SizedBox(width: 6),
                      Text(
                        'Paid via Apple Pay',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: const Color(0xFF3BB273),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (showActions) ...[
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: onDecline,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.border),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(double.infinity, 48),
                      ),
                      child: Text(
                        'Decline',
                        style: GoogleFonts.poppins(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _PrimaryButton(
                      label: 'Accept Booking',
                      onPressed: onAccept,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 11,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w600,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 11.5,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class PartnerReviewsPage extends StatelessWidget {
  const PartnerReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Reviews',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  Text(
                    '4.9',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => const Icon(Icons.star,
                          size: 16, color: Color(0xFFF4B452)),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Based on 128 reviews',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              children: const [
                _FilterChip(label: 'All', selected: true),
                _FilterChip(label: '5 Stars', selected: false),
                _FilterChip(label: '4 Stars', selected: false),
                _FilterChip(label: 'Lowest', selected: false),
              ],
            ),
            const SizedBox(height: 14),
            _ReviewListCard(
              name: 'Sophia M.',
              time: '2 days ago',
              text:
                  'Absolutely loved the service! The technician was so careful and the result is perfect. Will definitely book again.',
              tag: 'Gel Manicure',
            ),
            const SizedBox(height: 12),
            _ReviewListCard(
              name: 'Emma R.',
              time: '1 week ago',
              text:
                  'Great atmosphere and friendly staff. The waiting time was a bit longer than expected, but the haircut was great.',
              tag: 'Haircut & Style',
            ),
            const SizedBox(height: 12),
            _ReviewListCard(
              name: 'Olivia K.',
              time: '2 weeks ago',
              text:
                  'Best salon in town! I\'ve been coming here for months and they never disappoint.',
              tag: 'Full Pedicure',
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewListCard extends StatelessWidget {
  const _ReviewListCard({
    required this.name,
    required this.time,
    required this.text,
    required this.tag,
  });

  final String name;
  final String time;
  final String text;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.accentLight,
                child: Icon(Icons.person, color: AppColors.accent),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
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
              const Spacer(),
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(Icons.star,
                      size: 12, color: Color(0xFFF4B452)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 11.5,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.accentLight,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tag,
              style: GoogleFonts.poppins(
                fontSize: 10.5,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PartnerServicesListPage extends StatelessWidget {
  const PartnerServicesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: 2,
        onTap: (index) => _handlePartnerNavTap(context, index),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            Text(
              'Services',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Nails',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            _ServiceToggleRow(
              title: 'Gel Manicure',
              meta: '45 mins • \$45.00',
              enabled: true,
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerEditService),
            ),
            const SizedBox(height: 10),
            _ServiceToggleRow(
              title: 'Acrylic Full Set',
              meta: '90 mins • \$65.00',
              enabled: true,
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerEditService),
            ),
            const SizedBox(height: 10),
            _ServiceToggleRow(
              title: 'Pedicure Spa',
              meta: '60 mins • \$50.00',
              enabled: false,
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerEditService),
            ),
            const SizedBox(height: 16),
            Text(
              'Hair',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            _ServiceToggleRow(
              title: 'Haircut & Style',
              meta: '60 mins • \$80.00',
              enabled: true,
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerEditService),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceToggleRow extends StatelessWidget {
  const _ServiceToggleRow({
    required this.title,
    required this.meta,
    required this.enabled,
    required this.onTap,
  });

  final String title;
  final String meta;
  final bool enabled;
  final VoidCallback onTap;

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
          border: Border.all(color: AppColors.border),
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
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    meta,
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Switch(
              value: enabled,
              onChanged: (_) {},
              activeColor: AppColors.accent,
            ),
            const Icon(Icons.chevron_right, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }
}

class PartnerEditServicePage extends StatelessWidget {
  const PartnerEditServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Edit Service',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 10),
            _LabeledField(label: 'Service Name', hint: 'Gel Manicure'),
            _LabeledField(
              label: 'Category',
              hint: 'Nails',
              trailing: const Icon(Icons.keyboard_arrow_down,
                  size: 18, color: AppColors.textSecondary),
            ),
            Row(
              children: [
                Expanded(
                  child: _LabeledField(label: 'Price (\$)', hint: '45.00'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _LabeledField(
                    label: 'Duration',
                    hint: '45 mins',
                    trailing: const Icon(Icons.access_time,
                        size: 18, color: AppColors.textSecondary),
                  ),
                ),
              ],
            ),
            _LabeledField(
              label: 'Description (Optional)',
              hint:
                  'Includes nail shaping, cuticle care, and gel polish application with a glossy finish.',
              multiLine: true,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Available for Booking',
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (_) {},
                  activeColor: AppColors.accent,
                ),
              ],
            ),
            Text(
              'Service is visible to clients',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Changes',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerWalletPage extends StatelessWidget {
  const PartnerWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: 3,
        onTap: (index) => _handlePartnerNavTap(context, index),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            Text(
              'Wallet',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  Text(
                    'Available Balance',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$1,245.50',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _PrimaryButton(
                    label: 'Withdraw Funds →',
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.partnerWithdraw),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: _StatTile(
                    title: 'Pending Clearance',
                    value: '\$140.00',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatTile(
                    title: 'Total Withdrawn',
                    value: '\$4,500.00',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _PartnerTransactionRow(
              title: 'Payout to Bank ...8832',
              time: 'Oct 22, 2023 • 09:15 AM',
              amount: '-\$500.00',
              positive: false,
            ),
            const SizedBox(height: 10),
            _PartnerTransactionRow(
              title: 'Booking: Sarah Jenkins',
              time: 'Oct 21, 2023 • 04:30 PM',
              amount: '+\$45.00',
              positive: true,
            ),
            const SizedBox(height: 10),
            _PartnerTransactionRow(
              title: 'Booking: Emily Rose',
              time: 'Oct 21, 2023 • 02:15 PM',
              amount: '+\$65.00',
              positive: true,
            ),
            const SizedBox(height: 10),
            _PartnerTransactionRow(
              title: 'Booking: Michael Brown',
              time: 'Oct 20, 2023 • 11:00 AM',
              amount: '+\$30.00',
              positive: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 10.5,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _PartnerTransactionRow extends StatelessWidget {
  const _PartnerTransactionRow({
    required this.title,
    required this.time,
    required this.amount,
    required this.positive,
  });

  final String title;
  final String time;
  final String amount;
  final bool positive;

  @override
  Widget build(BuildContext context) {
    final icon = positive ? Icons.arrow_downward : Icons.arrow_upward;
    final color = positive ? const Color(0xFF26B075) : AppColors.textPrimary;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: positive
                ? const Color(0xFFE6F7EF)
                : const Color(0xFFE8EDF6),
            child: Icon(icon, size: 14, color: color),
          ),
          const SizedBox(width: 10),
          Expanded(
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
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 10.5,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: positive ? const Color(0xFF26B075) : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class PartnerWithdrawPage extends StatelessWidget {
  const PartnerWithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Withdraw Funds',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Available to withdraw',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '\$1,245.50',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '\$0.00',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFB8C5D3),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              children: const [
                _FilterChip(label: '\$100', selected: false),
                _FilterChip(label: '\$500', selected: false),
                _FilterChip(label: 'Max', selected: true),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Withdraw to',
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerWithdrawMethod),
              borderRadius: BorderRadius.circular(14),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.account_balance, color: AppColors.accent),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chase Bank',
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          Text(
                            '**** 8832',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right,
                        color: AppColors.textSecondary),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4E5),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFF1C68D)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.timer_outlined,
                      size: 16, color: Color(0xFFE0962D)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Funds usually arrive within 1-2 business\ndays depending on your bank.',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: const Color(0xFFE0962D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Withdraw Funds',
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerWithdrawSuccess),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerWithdrawSuccessPage extends StatelessWidget {
  const PartnerWithdrawSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.accentLight,
                ),
                child: const Icon(Icons.check,
                    color: AppColors.accent, size: 32),
              ),
              const SizedBox(height: 16),
              Text(
                'Withdrawal Initiated',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Your funds are being processed and\nwill reach your account in 1-3\nbusiness days.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  children: [
                    _InfoRow(label: 'Amount', value: '\$450.00'),
                    _InfoRow(label: 'To Account', value: 'Chase Bank •••• 8832'),
                    _InfoRow(
                        label: 'Date', value: 'Oct 24, 2023, 10:30 AM'),
                    _InfoRow(label: 'Reference ID', value: '#TRX-89201'),
                  ],
                ),
              ),
              const Spacer(),
              _PrimaryButton(
                label: 'Back to Wallet',
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.partnerWallet),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PartnerWithdrawMethodPage extends StatelessWidget {
  const PartnerWithdrawMethodPage({super.key, required this.showSuccessBanner});

  final bool showSuccessBanner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Withdrawal Method',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            if (showSuccessBanner) ...[
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8FBF3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFA6E9CC)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Color(0xFF26B075), size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Bank account added successfully. It is\nnow available for withdrawals.',
                        style: GoogleFonts.poppins(
                          fontSize: 11.5,
                          color: const Color(0xFF2A7B5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 16),
            Text(
              'LINKED ACCOUNTS',
              style: GoogleFonts.poppins(
                fontSize: 11,
                letterSpacing: 0.6,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 10),
            _BankAccountCard(
              name: 'Chase Bank',
              masked: '**** 8832',
              selected: true,
            ),
            const SizedBox(height: 12),
            _BankAccountCard(
              name: 'Wells Fargo',
              masked: '**** 4510',
              selected: false,
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerAddBankAccount),
              icon: const Icon(Icons.add, color: AppColors.textSecondary),
              label: Text(
                'Add New Bank Account',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 52),
              ),
            ),
            const SizedBox(height: 20),
            _PrimaryButton(
              label: 'Confirm Withdrawal Method',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BankAccountCard extends StatelessWidget {
  const _BankAccountCard({
    required this.name,
    required this.masked,
    required this.selected,
  });

  final String name;
  final String masked;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF9EDEE) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: selected ? AppColors.accent : AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: AppColors.border),
            ),
            child: const Icon(Icons.account_balance,
                size: 18, color: AppColors.textSecondary),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  masked,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            selected ? Icons.check_circle : Icons.radio_button_unchecked,
            color: selected ? AppColors.accent : AppColors.border,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class PartnerAddBankAccountPage extends StatelessWidget {
  const PartnerAddBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add Bank Account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 10),
            _LabeledField(label: 'Account Holder Name', hint: ''),
            _LabeledField(label: 'Bank Name', hint: ''),
            _LabeledField(label: 'Routing Number', hint: ''),
            _LabeledField(label: 'Account Number', hint: ''),
            const SizedBox(height: 6),
            Text(
              'Your account details are encrypted and secure.',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Account',
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerWithdrawMethodSuccess),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerAboutInfoPage extends StatelessWidget {
  const PartnerAboutInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'About & Info',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'About Salon',
              contentTitle: 'Description',
              contentBody:
                  'Glow & Polish Studio is a premier beauty destination in downtown, specializing in organic nail treatments and bespoke nail art. We believe in providing a relaxing atmosphere where you can unwind and leave feeling beautiful.',
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'Amenities',
              contentTitle: 'Available amenities',
              chips: const ['Free Wi-Fi', 'Parking', 'Coffee', 'AC'],
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'Location & Contact',
              contentTitle: 'Street Address',
              contentBody: '124 Market Street',
              secondaryTitle: 'City & Zip Code',
              secondaryBody: 'San Francisco, CA 94103',
              footer: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColors.accentLight,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Icon(Icons.map, color: AppColors.textSecondary),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '+1 (555) 123-4567',
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'contact@glowpolish.com',
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Changes',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _EditableInfoCard extends StatelessWidget {
  const _EditableInfoCard({
    required this.title,
    required this.contentTitle,
    this.contentBody,
    this.secondaryTitle,
    this.secondaryBody,
    this.footer,
    this.chips,
  });

  final String title;
  final String contentTitle;
  final String? contentBody;
  final String? secondaryTitle;
  final String? secondaryBody;
  final Widget? footer;
  final List<String>? chips;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              const Icon(Icons.edit_outlined,
                  size: 16, color: AppColors.textSecondary),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            contentTitle,
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: AppColors.textSecondary,
            ),
          ),
          if (contentBody != null) ...[
            const SizedBox(height: 6),
            Text(
              contentBody!,
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                color: AppColors.textPrimary,
              ),
            ),
          ],
          if (chips != null) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: chips!
                  .map((chip) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.accentLight,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          chip,
                          style: GoogleFonts.poppins(
                            fontSize: 10.5,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
          if (secondaryTitle != null) ...[
            const SizedBox(height: 12),
            Text(
              secondaryTitle!,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
          ],
          if (secondaryBody != null) ...[
            const SizedBox(height: 6),
            Text(
              secondaryBody!,
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                color: AppColors.textPrimary,
              ),
            ),
          ],
          if (footer != null) ...[
            const SizedBox(height: 12),
            footer!,
          ],
        ],
      ),
    );
  }
}

class PartnerStaffMembersPage extends StatelessWidget {
  const PartnerStaffMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Staff Members',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            ...[
              _StaffRow(name: 'Sarah Johnson', role: 'Senior Stylist', selected: true),
              _StaffRow(name: 'Michael Chen', role: 'Color Specialist', selected: false),
              _StaffRow(name: 'Jessica Davis', role: 'Nail Technician', selected: false),
              _StaffRow(name: 'David Wilson', role: 'Barber', selected: false),
              _StaffRow(name: 'Emily White', role: 'Makeup Artist', selected: false),
            ],
            const SizedBox(height: 18),
            OutlinedButton.icon(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.addStaff),
              icon: const Icon(Icons.add, color: AppColors.accent),
              label: Text(
                'Add Staff',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.accent,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size(double.infinity, 52),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StaffRow extends StatelessWidget {
  const _StaffRow({
    required this.name,
    required this.role,
    required this.selected,
  });

  final String name;
  final String role;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.accentLight,
            child: Icon(Icons.person, color: AppColors.accent),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  role,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          if (selected)
            const Icon(Icons.check, color: AppColors.accent),
        ],
      ),
    );
  }
}

class PartnerPortfolioPage extends StatelessWidget {
  const PartnerPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar:
          _PartnerBottomNav(currentIndex: 2, onTap: (index) => _handlePartnerNavTap(context, index)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            Text(
              'Our Portfolio',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: const [
                _FilterChip(label: 'All Works', selected: true),
                _FilterChip(label: 'Nails', selected: false),
                _FilterChip(label: 'Hair Styling', selected: false),
                _FilterChip(label: 'Makeup', selected: false),
              ],
            ),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
              children: List.generate(8, (index) {
                final labels = [
                  'Abstract Gel Art',
                  'Blonde Balayage',
                  'Soft Glam Look',
                  'Bridal Updo',
                  'Classic Red',
                  'Textured Waves',
                  'Pink Acrylics',
                  'Hydra Facial',
                ];
                return GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerPortfolioDetail),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.accentLight,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(Icons.image,
                              color: AppColors.textSecondary, size: 32),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        labels[index],
                        style: GoogleFonts.poppins(
                          fontSize: 11.5,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: '+  Add New Item',
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.partnerPortfolioDetail),
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerPortfolioDetailPage extends StatelessWidget {
  const PartnerPortfolioDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Abstract Gel Art',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            _InfoSection(
              title: 'Basic Details',
              child: Column(
                children: const [
                  _InfoRow(label: 'Item Name', value: 'Abstract Gel Art'),
                  _InfoRow(label: 'Category', value: 'Nails'),
                  _InfoRow(label: 'Duration', value: '60 mins'),
                  _InfoRow(label: 'Price', value: '\$65.00'),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'Cover Photo',
              contentTitle: '',
              contentBody: null,
              footer: Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.accentLight,
                ),
                child: const Icon(Icons.image,
                    color: AppColors.textSecondary, size: 40),
              ),
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'Assigned Team',
              contentTitle: '',
              contentBody: null,
              footer: Column(
                children: const [
                  _AssignedStaffRow(name: 'Sarah Jenkins', role: 'Senior Nail Tech'),
                  SizedBox(height: 8),
                  _AssignedStaffRow(name: 'Jessica May', role: 'Nail Artist'),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _EditableInfoCard(
              title: 'Gallery',
              contentTitle: '',
              contentBody: null,
              footer: Row(
                children: List.generate(
                  3,
                  (index) => Expanded(
                    child: Container(
                      height: 72,
                      margin: EdgeInsets.only(right: index == 2 ? 0 : 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.accentLight,
                      ),
                      child: const Icon(Icons.image,
                          color: AppColors.textSecondary, size: 20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Changes',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _AssignedStaffRow extends StatelessWidget {
  const _AssignedStaffRow({required this.name, required this.role});

  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.accentLight,
          child: Icon(Icons.person, color: AppColors.accent),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              role,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PartnerProfilePage extends StatelessWidget {
  const PartnerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar:
          _PartnerBottomNav(currentIndex: 4, onTap: (index) => _handlePartnerNavTap(context, index)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            Text(
              'Profile',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.accentLight,
                    child: Icon(Icons.person, color: AppColors.accent),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Glow & Polish Studio',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    'Downtown • 4.9 | 128 Reviews',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.partnerAboutInfo),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.border),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      'Edit Details',
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _ProfileSection(
              title: 'BUSINESS MANAGEMENT',
              children: [
                _ProfileNavRow(
                  label: 'About',
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.partnerAboutInfo),
                ),
                _ProfileNavRow(
                  label: 'Working Hours',
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerWorkingHours),
                ),
                _ProfileNavRow(
                  label: 'Staff Members',
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerStaffMembers),
                ),
                _ProfileNavRow(
                  label: 'Portfolio',
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerPortfolio),
                ),
                _ProfileNavRow(
                  label: 'Reviews',
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerReviews),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _ProfileSection(
              title: 'APP SETTINGS',
              children: [
                _ProfileNavRow(
                  label: 'Language',
                  trailing: Text(
                    'English',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  onTap: () {},
                ),
                _ProfileNavRow(
                  label: 'Notifications',
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.partnerNotifications),
                ),
                _ProfileNavRow(
                  label: 'Privacy & Terms',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 11,
            letterSpacing: 0.6,
            fontWeight: FontWeight.w600,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }
}

class _ProfileNavRow extends StatelessWidget {
  const _ProfileNavRow({
    required this.label,
    required this.onTap,
    this.trailing,
  });

  final String label;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            const Icon(Icons.circle, size: 18, color: AppColors.accentLight),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            if (trailing != null) trailing!,
            const SizedBox(width: 6),
            const Icon(Icons.chevron_right, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }
}

class _PartnerNotificationCard extends StatelessWidget {
  const _PartnerNotificationCard({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String time;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF3E7DF),
            ),
            child: Icon(icon, size: 16, color: AppColors.accent),
          ),
          const SizedBox(width: 12),
          Expanded(
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
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 10.5,
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

class _PartnerBookingListPage extends StatelessWidget {
  const _PartnerBookingListPage({
    required this.title,
    required this.badgeLabel,
    required this.badgeColor,
    required this.detailRoute,
  });

  final String title;
  final String badgeLabel;
  final Color badgeColor;
  final String detailRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: _PartnerBottomNav(
        currentIndex: 0,
        onTap: (index) => _handlePartnerNavTap(context, index),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            ...[
              _PartnerBookingListCard(
                time: '01:30 PM • 60 min',
                name: 'Emily Rose',
                service: 'Haircut & Style',
                price: '\$65.00',
                badgeLabel: badgeLabel,
                badgeColor: badgeColor,
                dayLabel: 'Today',
                onTap: () => Navigator.of(context).pushNamed(detailRoute),
              ),
              _PartnerBookingListCard(
                time: '03:00 PM • 45 min',
                name: 'Sarah Jenkins',
                service: 'Gel Manicure',
                price: '\$45.00',
                badgeLabel: badgeLabel,
                badgeColor: badgeColor,
                dayLabel: 'Today',
                onTap: () => Navigator.of(context).pushNamed(detailRoute),
              ),
              _PartnerBookingListCard(
                time: '10:00 AM • 30 min',
                name: 'Michael Brown',
                service: 'Beard Trim & Shape',
                price: '\$30.00',
                badgeLabel: badgeLabel,
                badgeColor: badgeColor,
                dayLabel: 'Tomorrow',
                onTap: () => Navigator.of(context).pushNamed(detailRoute),
              ),
              _PartnerBookingListCard(
                time: '11:30 AM • 60 min',
                name: 'Jessica Wu',
                service: 'Hydrating Facial',
                price: '\$85.00',
                badgeLabel: badgeLabel,
                badgeColor: badgeColor,
                dayLabel: 'Tomorrow',
                onTap: () => Navigator.of(context).pushNamed(detailRoute),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _PartnerBookingListCard extends StatelessWidget {
  const _PartnerBookingListCard({
    required this.time,
    required this.name,
    required this.service,
    required this.price,
    required this.badgeLabel,
    required this.badgeColor,
    required this.dayLabel,
    required this.onTap,
  });

  final String time;
  final String name;
  final String service;
  final String price;
  final String badgeLabel;
  final Color badgeColor;
  final String dayLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.schedule,
                    size: 14, color: AppColors.textSecondary),
                const SizedBox(width: 6),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const Spacer(),
                Text(
                  dayLabel,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.accentLight,
                  child: const Icon(Icons.person, color: AppColors.accent),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        service,
                        style: GoogleFonts.poppins(
                          fontSize: 11.5,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: badgeColor.withOpacity(0.18),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                badgeLabel,
                style: GoogleFonts.poppins(
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  color: badgeColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceDurationDialog extends StatelessWidget {
  const ServiceDurationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Service Duration',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF3E7DF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('2',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accent)),
                  SizedBox(width: 8),
                  Text('hr',
                      style: TextStyle(fontSize: 12, color: AppColors.accent)),
                  SizedBox(width: 16),
                  Text('45',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accent)),
                  SizedBox(width: 8),
                  Text('min',
                      style: TextStyle(fontSize: 12, color: AppColors.accent)),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Or enter custom duration',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF6E8DF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text('90',
                        style: TextStyle(
                            fontSize: 14, color: AppColors.textPrimary)),
                  ),
                  Text(
                    'minutes',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Save Duration',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkingHourRow extends StatelessWidget {
  const _WorkingHourRow({required this.day});

  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            day,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TimeButton(label: '09:00 AM'),
              Text('to', style: GoogleFonts.poppins(fontSize: 12)),
              _TimeButton(label: '06:00 PM'),
            ],
          ),
        ],
      ),
    );
  }
}

class _TimeButton extends StatelessWidget {
  const _TimeButton({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog<void>(
        context: context,
        builder: (_) => const SelectTimeDialog(),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 12,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}

class SelectTimeDialog extends StatelessWidget {
  const SelectTimeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Select Time',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF3E7DF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('09',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accent)),
                  SizedBox(width: 8),
                  Text(':',
                      style:
                          TextStyle(fontSize: 18, color: AppColors.accent)),
                  SizedBox(width: 8),
                  Text('00',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accent)),
                  SizedBox(width: 12),
                  Text('AM',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accent)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Confirm Time',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LabeledField extends StatelessWidget {
  const _LabeledField({
    required this.label,
    required this.hint,
    this.trailing,
    this.onTap,
    this.multiLine = false,
  });

  final String label;
  final String hint;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool multiLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 6),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      hint,
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  if (trailing != null) trailing!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UploadCard extends StatelessWidget {
  const _UploadCard({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cloud_upload_outlined,
                  color: AppColors.textSecondary),
              const SizedBox(height: 6),
              Text(
                'Supported: JPG, PNG, PDF',
                style: GoogleFonts.poppins(
                  fontSize: 10.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key, this.onVerified});

  final VoidCallback? onVerified;

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
                onPressed: () {
                  if (widget.onVerified != null) {
                    widget.onVerified!();
                    return;
                  }
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.completeProfile);
                },
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

  void _handleBottomNav(int index) {
    setState(() => _currentTab = index);
    switch (index) {
      case 1:
        Navigator.of(context).pushNamed(AppRoutes.explore);
        break;
      case 2:
        Navigator.of(context).pushNamed(AppRoutes.myBookings);
        break;
      case 3:
        Navigator.of(context).pushNamed(AppRoutes.wallet);
        break;
      case 4:
        Navigator.of(context).pushNamed(AppRoutes.profile);
        break;
      default:
        break;
    }
  }

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
                onTap: () =>
                    Navigator.of(context).pushNamed(AppRoutes.specialOffer),
              ),
              const SizedBox(height: 12),
              _ActionCard(
                title: 'Send a Beauty Gift',
                subtitle: 'Surprise friends with spa days or\ncustom cards',
                leading: Icons.favorite_border,
                onTap: () => Navigator.of(context)
                    .pushNamed(AppRoutes.sendGift),
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
        onTap: _handleBottomNav,
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
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.filters),
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Image.asset(
                        'assets/home/icon_filter.png',
                        height: 18,
                        color: AppColors.textSecondary,
                      ),
                    ),
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
                children: [
                  _SearchResultCard(
                    title: 'Glow & Polish Studio',
                    subtitle: 'Downtown Area • Open until 9 PM',
                    tags: ['Nails', 'Spa'],
                    priceLabel: '\$25.00',
                    rating: '4.9',
                    distance: '1.2 km',
                    promoted: true,
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.salonDetail),
                  ),
                  const SizedBox(height: 16),
                  _SearchResultCard(
                    title: 'Bella Vita Salon',
                    subtitle: 'West Avenue • Open until 8 PM',
                    tags: ['Hair', 'Makeup', 'Home Service'],
                    rating: '4.7',
                    distance: '0.8 km',
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.salonDetail),
                  ),
                  const SizedBox(height: 16),
                  _SearchResultCard(
                    title: 'Pinky Promise Nails',
                    subtitle: 'Mall District • Closes Soon',
                    tags: ['Nails', 'Spa'],
                    priceLabel: '\$15.00',
                    rating: '4.5',
                    distance: '2.5 km',
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.salonDetail),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.home);
          } else if (index == 1) {
            return;
          } else if (index == 2) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.myBookings);
          } else if (index == 3) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.wallet);
          } else if (index == 4) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.profile);
          }
        },
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
    this.onTap,
  });

  final String title;
  final String subtitle;
  final List<String> tags;
  final String rating;
  final String distance;
  final String? priceLabel;
  final bool promoted;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6),
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
      ),
    );
  }
}

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  String _service = 'All';
  String _category = 'All';
  String _sort = 'Recommended';
  double _distance = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      'Filters',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Service Type',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _ChoiceChip(
                    label: 'All',
                    selected: _service == 'All',
                    onTap: () => setState(() => _service = 'All'),
                  ),
                  _ChoiceChip(
                    label: 'Home Service',
                    selected: _service == 'Home Service',
                    onTap: () {
                      setState(() => _service = 'Home Service');
                      Navigator.of(context).pushNamed(AppRoutes.homeServices);
                    },
                  ),
                  _ChoiceChip(
                    label: 'In-Salon',
                    selected: _service == 'In-Salon',
                    onTap: () {
                      setState(() => _service = 'In-Salon');
                      Navigator.of(context).pushNamed(AppRoutes.inSalon);
                    },
                  ),
                  _ChoiceChip(
                    label: 'Offers & Deals',
                    selected: _service == 'Offers & Deals',
                    onTap: () {
                      setState(() => _service = 'Offers & Deals');
                      Navigator.of(context).pushNamed(AppRoutes.offersDeals);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                'Categories',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _ChoiceChip(
                    label: 'All',
                    selected: _category == 'All',
                    onTap: () => setState(() => _category = 'All'),
                  ),
                  _ChoiceChip(
                    label: 'Hair',
                    selected: _category == 'Hair',
                    onTap: () => setState(() => _category = 'Hair'),
                  ),
                  _ChoiceChip(
                    label: 'Nails',
                    selected: _category == 'Nails',
                    onTap: () => setState(() => _category = 'Nails'),
                  ),
                  _ChoiceChip(
                    label: 'Facial',
                    selected: _category == 'Facial',
                    onTap: () => setState(() => _category = 'Facial'),
                  ),
                  _ChoiceChip(
                    label: 'Massage',
                    selected: _category == 'Massage',
                    onTap: () => setState(() => _category = 'Massage'),
                  ),
                  _ChoiceChip(
                    label: 'Makeup',
                    selected: _category == 'Makeup',
                    onTap: () => setState(() => _category = 'Makeup'),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                'Sort By',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _ChoiceChip(
                    label: 'Recommended',
                    selected: _sort == 'Recommended',
                    onTap: () => setState(() => _sort = 'Recommended'),
                  ),
                  _ChoiceChip(
                    label: 'Top Rated',
                    selected: _sort == 'Top Rated',
                    onTap: () => setState(() => _sort = 'Top Rated'),
                  ),
                  _ChoiceChip(
                    label: 'Nearest',
                    selected: _sort == 'Nearest',
                    onTap: () => setState(() => _sort = 'Nearest'),
                  ),
                  _ChoiceChip(
                    label: 'Price: Low to High',
                    selected: _sort == 'Price: Low to High',
                    onTap: () => setState(() => _sort = 'Price: Low to High'),
                  ),
                  _ChoiceChip(
                    label: 'Price: High to Low',
                    selected: _sort == 'Price: High to Low',
                    onTap: () => setState(() => _sort = 'Price: High to Low'),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                'Distance',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: AppColors.accent,
                  inactiveTrackColor: AppColors.border,
                  thumbColor: Colors.white,
                  overlayColor: AppColors.accent.withOpacity(0.12),
                ),
                child: Slider(
                  value: _distance,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  onChanged: (value) => setState(() => _distance = value),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0 km',
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: AppColors.textSecondary)),
                  Text('5 km',
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: AppColors.textSecondary)),
                  Text('10 km+',
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: AppColors.textSecondary)),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _service = 'All';
                        _category = 'All';
                        _sort = 'Recommended';
                        _distance = 5;
                      });
                    },
                    child: Text(
                      'Reset',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _PrimaryButton(
                      label: 'Show Results',
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChoiceChip extends StatelessWidget {
  const _ChoiceChip({
    required this.label,
    required this.selected,
    this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? AppColors.accentLight : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: selected ? AppColors.accent : Colors.transparent,
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12.5,
            color: selected ? AppColors.accent : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}

class HomeServicesPage extends StatelessWidget {
  const HomeServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _ServiceListPage(
      title: 'Home Services',
      onFilterTap: () => Navigator.of(context).pushNamed(AppRoutes.filters),
      cards: const [
        _ServiceCardData(
          title: 'Serenity Mobile Spa',
          rating: '4.9',
          distance: '1.2 km',
          status: 'Available Now',
          tags: ['Massage', 'Facial', 'Manicure'],
        ),
        _ServiceCardData(
          title: 'Glamour at Home',
          rating: '4.7',
          distance: '2.5 km',
          status: 'Next slot: 2 PM',
          tags: ['Hair Styling', 'Makeup'],
        ),
        _ServiceCardData(
          title: 'Polished Mobile Nails',
          rating: '4.8',
          distance: '3.0 km',
          status: 'Fully Booked Today',
          tags: ['Nails', 'Pedicure'],
        ),
      ],
    );
  }
}

class InSalonPage extends StatelessWidget {
  const InSalonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _ServiceListPage(
      title: 'In-Salon Service',
      onFilterTap: () => Navigator.of(context).pushNamed(AppRoutes.filters),
      cards: const [
        _ServiceCardData(
          title: 'Serenity Mobile Spa',
          rating: '4.9',
          distance: '1.2 km',
          status: 'Available Now',
          tags: ['Massage', 'Facial', 'Manicure'],
        ),
        _ServiceCardData(
          title: 'Glamour at Home',
          rating: '4.7',
          distance: '2.5 km',
          status: 'Next slot: 2 PM',
          tags: ['Hair Styling', 'Makeup'],
        ),
        _ServiceCardData(
          title: 'Polished Mobile Nails',
          rating: '4.8',
          distance: '3.0 km',
          status: 'Fully Booked Today',
          tags: ['Nails', 'Pedicure'],
        ),
      ],
    );
  }
}

class _ServiceListPage extends StatelessWidget {
  const _ServiceListPage({
    required this.title,
    required this.onFilterTap,
    required this.cards,
  });

  final String title;
  final VoidCallback onFilterTap;
  final List<_ServiceCardData> cards;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/home/icon_filter.png',
                      height: 18,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: onFilterTap,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Top Rated Near You',
                style: GoogleFonts.poppins(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                itemBuilder: (context, index) =>
                    _ServiceCard(data: cards[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: cards.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceCardData {
  const _ServiceCardData({
    required this.title,
    required this.rating,
    required this.distance,
    required this.status,
    required this.tags,
  });

  final String title;
  final String rating;
  final String distance;
  final String status;
  final List<String> tags;
}

class _ServiceCard extends StatelessWidget {
  const _ServiceCard({required this.data});

  final _ServiceCardData data;

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
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFFE7DED7),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
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
                        data.title,
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
                      data.rating,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        size: 14, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Text(
                      data.distance,
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.access_time,
                        size: 14, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Text(
                      data.status,
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: data.tags
                      .map(
                        (tag) => Container(
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
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OffersDealsPage extends StatelessWidget {
  const OffersDealsPage({super.key});

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
                  Expanded(
                    child: Text(
                      'Offers & Deals',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/home/icon_filter.png',
                      height: 18,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(AppRoutes.filters),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  _ChoiceChip(label: 'All Offers', selected: true, onTap: null),
                  SizedBox(width: 8),
                  _ChoiceChip(label: 'Hair', selected: false, onTap: null),
                  SizedBox(width: 8),
                  _ChoiceChip(label: 'Nails', selected: false, onTap: null),
                  SizedBox(width: 8),
                  _ChoiceChip(label: 'Spa', selected: false, onTap: null),
                  SizedBox(width: 8),
                  _ChoiceChip(label: 'Facial', selected: false, onTap: null),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                itemBuilder: (context, index) {
                  final card = _offerCards[index];
                  return _OfferDealCard(data: card);
                },
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: _offerCards.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const List<_OfferCardData> _offerCards = [
  _OfferCardData(
    badge: '20% OFF',
    title: 'New Client Special: Full Gel Set &\nPedicure',
    subtitle:
        'Valid for first-time customers only. Cannot be\ncombined with other offers.',
    footer: 'Exp: Oct 31',
    action: 'Book Now',
  ),
  _OfferCardData(
    badge: '\$15 OFF',
    title: 'Keratin Smoothing Treatment',
    subtitle: 'Get \$15 off any keratin treatment over \$100.\nWeekdays only.',
    footer: 'Exp: Nov 15',
    action: 'Use Code',
  ),
  _OfferCardData(
    badge: 'FREE GIFT',
    title: 'Free Scalp Massage with 60min\nFacial',
    subtitle:
        'Complimentary 15-min scalp massage add-on\nwith any signature facial.',
    footer: 'Exp: Dec 01',
    action: 'Book Now',
  ),
  _OfferCardData(
    badge: '10% OFF',
    title: 'Student Discount: All Services',
    subtitle: 'Show your valid student ID to receive 10% off\nany service.',
    footer: 'Valid Always',
    action: 'View Salon',
  ),
];

class _OfferCardData {
  const _OfferCardData({
    required this.badge,
    required this.title,
    required this.subtitle,
    required this.footer,
    required this.action,
  });

  final String badge;
  final String title;
  final String subtitle;
  final String footer;
  final String action;
}

class _OfferDealCard extends StatelessWidget {
  const _OfferDealCard({required this.data});

  final _OfferCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFFE7DED7),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
              ),
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
                    data.badge,
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
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
                    const Icon(Icons.location_on_outlined,
                        size: 14, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Text(
                      'Glow & Polish Studio',
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  data.title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  data.subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 10),
                Divider(color: AppColors.border.withOpacity(0.8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.footer,
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.accent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        data.action,
                        style: GoogleFonts.poppins(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
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

class SpecialOfferPage extends StatelessWidget {
  const SpecialOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      'Special Offer',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9E9E8),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.accent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          'assets/offers/icon_offer.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      '20% OFF',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: AppColors.accent,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Enjoy a discount on your very\nfirst salon booking with us.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: AppColors.accent,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'VOUCHER CODE',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              letterSpacing: 1,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'BEAUTY20',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Copy',
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.accent,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.copy, size: 16, color: AppColors.accent),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'How to use',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 10),
              _StepItem(index: 1, text: 'Copy the code above.'),
              _StepItem(
                  index: 2, text: 'Explore salons and select a service.'),
              _StepItem(
                  index: 3,
                  text: 'Paste the code at checkout to apply discount.'),
              const SizedBox(height: 16),
              Text(
                'Terms & Conditions',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Valid for new users only. Maximum discount\\nvalue of \$20. Cannot be combined with other\\noffers. Valid on all salon services booked through\\nthe app. Expired codes cannot be redeemed.',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  height: 1.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StepItem extends StatelessWidget {
  const _StepItem({required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFF3E7DF),
              border: Border.all(color: AppColors.border),
            ),
            child: Center(
              child: Text(
                '$index',
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendGiftPage extends StatelessWidget {
  const SendGiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      'Send a Gift',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Surprise them with the perfect\nglow.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Send a spa day, a fresh haircut, or a gift card to\nuse anytime.',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Choose Gift Type',
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _GiftTypeCard(
                      iconAsset: 'assets/gifts/icon_sparkle.png',
                      title: 'Book a Service',
                      subtitle: 'Pick a specific salon\n& treatment',
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.contactAccess),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _GiftTypeCard(
                      iconAsset: 'assets/gifts/icon_card.png',
                      title: 'Send Gift Card',
                      subtitle: 'Add value to their\nwallet',
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.selectOccasion),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Have a gift code?',
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Redeem it to your wallet\ninstantly',
                            style: GoogleFonts.poppins(
                              fontSize: 11.5,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3E7DF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppRoutes.redeemCode),
                        child: Text(
                          'Redeem',
                          style: GoogleFonts.poppins(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.accent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'My Gifts',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E7DF),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/gifts/icon_gift.png',
                      height: 18,
                      color: AppColors.accent,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'No gifts sent or received yet.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GiftTypeCard extends StatelessWidget {
  const _GiftTypeCard({
    required this.iconAsset,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String iconAsset;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  iconAsset,
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactAccessPage extends StatelessWidget {
  const ContactAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.05),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 16,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF3E7DF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'assets/gifts/icon_contacts.png',
                        color: AppColors.accent,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Quickly send beauty gifts to friends\nand family.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _PrimaryButton(
                    label: 'Allow contacts access',
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Not now',
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactAccessDialog extends StatelessWidget {
  const ContactAccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 52,
              width: 52,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  'assets/gifts/icon_contacts.png',
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Quickly send beauty gifts to friends\nand family.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Allow contacts access',
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Not now',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalonDetailPage extends StatelessWidget {
  const SalonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                color: const Color(0xFFD9D2CC),
              ),
              Positioned(
                top: 42,
                left: 16,
                child: _CircleIconButton(
                  icon: Icons.arrow_back,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
              Positioned(
                top: 42,
                right: 64,
                child: _CircleIconButton(
                  icon: Icons.share_outlined,
                  onTap: () {},
                ),
              ),
              Positioned(
                top: 42,
                right: 16,
                child: _CircleIconButton(
                  icon: Icons.favorite_border,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              transform: Matrix4.translationValues(0, -24, 0),
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Glow & Polish Studio',
                          style: GoogleFonts.poppins(
                            fontSize: 16.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF6E8DF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star,
                                size: 14, color: Colors.amber),
                            const SizedBox(width: 4),
                            Text(
                              '4.9',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined,
                          size: 14, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text(
                        'Downtown Area (1.2 km)',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF57C8A4),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Open',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF57C8A4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '•',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Closes at 9:00 PM',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      _TagChip(label: 'Nails'),
                      _TagChip(label: 'Spa'),
                      _TagChip(label: 'Skincare'),
                      _TagChip(label: 'Promoted'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const _TabLabel(label: 'Services', selected: true),
                      _TabLabel(
                        label: 'About',
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppRoutes.salonAbout),
                      ),
                      _TabLabel(
                        label: 'Reviews',
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppRoutes.salonReviews),
                      ),
                      _TabLabel(
                        label: 'Portfolio',
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppRoutes.salonPortfolio),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        _SectionTitle(text: 'Featured Services'),
                        _ServiceRow(
                          title: 'Classic Manicure',
                          subtitle: '45 mins • Popular',
                          price: '\$26.25',
                          added: true,
                        ),
                        _DividerLine(),
                        _ServiceRow(
                          title: 'Gel Polish Removal',
                          subtitle: '20 mins',
                          price: '\$15.00',
                        ),
                        SizedBox(height: 16),
                        _SectionTitle(text: 'Spa Treatments'),
                        _ServiceRow(
                          title: 'Luxury Pedicure Spa',
                          subtitle: '60 mins • Massage Included',
                          price: '\$55.00',
                        ),
                        _DividerLine(),
                        _ServiceRow(
                          title: 'Hand Mask & Scrub',
                          subtitle: '30 mins',
                          price: '\$35.00',
                        ),
                        SizedBox(height: 16),
                        _SectionTitle(text: 'Packages'),
                        _ServiceRow(
                          title: 'Mani-Pedi Combo',
                          subtitle: '90 mins • Save \$10',
                          price: '\$70.00',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '1 Service selected',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$26.25',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _PrimaryButton(
                label: 'Book Appointment',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  const _CircleIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.85),
      ),
      child: IconButton(
        icon: Icon(icon, size: 18, color: AppColors.textPrimary),
        onPressed: onTap,
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  const _TagChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E7DF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 11,
          color: AppColors.accent,
        ),
      ),
    );
  }
}

class _TabLabel extends StatelessWidget {
  const _TabLabel({
    required this.label,
    this.selected = false,
    this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
              color: selected ? AppColors.accent : AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          if (selected)
            Container(
              height: 2,
              width: 48,
              color: AppColors.accent,
            ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 13.5,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class _ServiceRow extends StatelessWidget {
  const _ServiceRow({
    required this.title,
    required this.subtitle,
    required this.price,
    this.added = false,
  });

  final String title;
  final String subtitle;
  final String price;
  final bool added;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: added ? const Color(0xFFF3E7DF) : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              added ? 'Added' : 'Add',
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                fontWeight: FontWeight.w600,
                color: AppColors.accent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DividerLine extends StatelessWidget {
  const _DividerLine();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 1,
        color: AppColors.border.withOpacity(0.7),
      ),
    );
  }
}

class SalonAboutPage extends StatelessWidget {
  const SalonAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                color: const Color(0xFFD9D2CC),
              ),
              Positioned(
                top: 42,
                left: 16,
                child: _CircleIconButton(
                  icon: Icons.arrow_back,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              transform: Matrix4.translationValues(0, -22, 0),
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Glow & Polish Studio',
                            style: GoogleFonts.poppins(
                              fontSize: 16.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6E8DF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.star,
                                  size: 14, color: Colors.amber),
                              const SizedBox(width: 4),
                              Text(
                                '4.9',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                            size: 14, color: AppColors.textSecondary),
                        const SizedBox(width: 4),
                        Text(
                          'Downtown Area (1.2 km)',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF57C8A4),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Open',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xFF57C8A4),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '•',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Closes at 9:00 PM',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: const [
                        _TagChip(label: 'Nails'),
                        _TagChip(label: 'Spa'),
                        _TagChip(label: 'Skincare'),
                        _TagChip(label: 'Promoted'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _TabLabel(
                          label: 'Services',
                          onTap: () => Navigator.of(context)
                              .pushNamed(AppRoutes.salonDetail),
                        ),
                        const _TabLabel(label: 'About', selected: true),
                        _TabLabel(
                          label: 'Reviews',
                          onTap: () => Navigator.of(context)
                              .pushNamed(AppRoutes.salonReviews),
                        ),
                        _TabLabel(
                          label: 'Portfolio',
                          onTap: () => Navigator.of(context)
                              .pushNamed(AppRoutes.salonPortfolio),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'About Us',
                      style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Welcome to Glow & Polish Studio, where luxury\nmeets relaxation. Our expert team is dedicated\nto providing top-tier nail care, spa treatments,\nand skincare services in a serene environment.\nWe use only premium products to ensure the\nbest results for our clients.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        height: 1.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Location & Contact',
                      style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE7DED7),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '123 Fashion Avenue, Downtown\nDistrict, City Center',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ),
                        Text(
                          '1.2 km away',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        const Icon(Icons.call, size: 16, color: AppColors.accent),
                        const SizedBox(width: 8),
                        Text(
                          'Call Now',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.public,
                            size: 16, color: AppColors.accent),
                        const SizedBox(width: 8),
                        Text(
                          'Website',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Opening Hours',
                      style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _HoursRow(day: 'Monday - Friday', time: '9:00 AM - 9:00 PM'),
                    _HoursRow(day: 'Saturday', time: '10:00 AM - 8:00 PM'),
                    _HoursRow(day: 'Sunday', time: '10:00 AM - 6:00 PM'),
                    const SizedBox(height: 18),
                    Text(
                      'Amenities',
                      style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        _AmenityItem(label: 'Free Wi-Fi', icon: Icons.wifi),
                        SizedBox(width: 18),
                        _AmenityItem(
                            label: 'Coffee & Tea', icon: Icons.coffee),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        _AmenityItem(
                            label: 'Free Parking', icon: Icons.local_parking),
                        SizedBox(width: 18),
                        _AmenityItem(
                            label: 'Card Payment', icon: Icons.credit_card),
                      ],
                    ),
                    const SizedBox(height: 18),
                    _PrimaryButton(
                      label: 'Book Appointment',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HoursRow extends StatelessWidget {
  const _HoursRow({required this.day, required this.time});

  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              day,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          Text(
            time,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _AmenityItem extends StatelessWidget {
  const _AmenityItem({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.accent),
        const SizedBox(width: 6),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class SalonReviewsPage extends StatelessWidget {
  const SalonReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Reviews',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const Divider(height: 1, color: AppColors.border),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4.9',
                        style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(Icons.star,
                              size: 14, color: Colors.pinkAccent),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '128 reviews',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: const [
                        _RatingBarRow(label: '5', value: 0.9),
                        _RatingBarRow(label: '4', value: 0.6),
                        _RatingBarRow(label: '3', value: 0.2),
                        _RatingBarRow(label: '2', value: 0.1),
                        _RatingBarRow(label: '1', value: 0.05),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: AppColors.border),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _FilterChip(label: 'All Reviews', selected: true),
                    SizedBox(width: 8),
                    _FilterChip(label: 'With Photos'),
                    SizedBox(width: 8),
                    _FilterChip(label: 'Latest'),
                    SizedBox(width: 8),
                    _FilterChip(label: 'Lowest'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                children: const [
                  _ReviewCard(
                    name: 'Sarah J.',
                    time: '2 days ago',
                    rating: '5.0',
                    text:
                        'Absolutely loved the gel manicure! The staff was\nsuper friendly and the place is so aesthetic. Highly\nrecommend for a relaxing afternoon.',
                    service: 'Service: Gel Manicure & Pedicure',
                    hasPhotos: true,
                  ),
                  _ReviewCard(
                    name: 'Emily R.',
                    time: '1 week ago',
                    rating: '4.8',
                    text:
                        'Great service but I had to wait about 10 mins past\nmy appointment time. Otherwise, the results were\nfantastic.',
                    service: 'Service: Hair Spa Treatment',
                  ),
                  _ReviewCard(
                    name: 'Jessica M.',
                    time: '2 weeks ago',
                    rating: '5.0',
                    text:
                        'Best facial I’ve ever had! My skin feels glowing.\nThe therapist was very knowledgeable about skin\ntypes.',
                    service: 'Service: Hydrating Facial',
                  ),
                  _ReviewCard(
                    name: 'Monica L.',
                    time: '3 weeks ago',
                    rating: '5.0',
                    text:
                        'Clean, professional, and very reasonably priced\nfor the area. Will definitely be coming back next\nmonth.',
                    service: 'Service: Classic Manicure',
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

class _RatingBarRow extends StatelessWidget {
  const _RatingBarRow({required this.label, required this.value});

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 16,
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: value,
                minHeight: 6,
                backgroundColor: AppColors.border,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppColors.accent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    required this.name,
    required this.time,
    required this.rating,
    required this.text,
    required this.service,
    this.hasPhotos = false,
  });

  final String name;
  final String time;
  final String rating;
  final String text;
  final String service;
  final bool hasPhotos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE7DED7),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
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
              ),
              Text(
                rating,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.star, size: 12, color: Colors.pinkAccent),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 12,
              height: 1.5,
              color: AppColors.textSecondary,
            ),
          ),
          if (hasPhotos) ...[
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 54,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE7DED7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 54,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE7DED7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 8),
          Text(
            service,
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: AppColors.border),
        ],
      ),
    );
  }
}

class SalonPortfolioPage extends StatelessWidget {
  const SalonPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Portfolio',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const Divider(height: 1, color: AppColors.border),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _FilterChip(label: 'All Works', selected: true),
                    SizedBox(width: 8),
                    _FilterChip(label: 'Nails'),
                    SizedBox(width: 8),
                    _FilterChip(label: 'Hair Styling'),
                    SizedBox(width: 8),
                    _FilterChip(label: 'Makeup'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.78,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  final labels = [
                    'Abstract Gel Art',
                    'Blonde Balayage',
                    'Soft Glam Look',
                    'Bridal Updo',
                    'Classic Red',
                    'Textured Waves',
                    'Pink Acrylics',
                    'Hydra Facial',
                  ];
                  return InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.portfolioDetail),
                    borderRadius: BorderRadius.circular(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE7DED7),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          labels[index],
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioDetailPage extends StatelessWidget {
  const PortfolioDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 320,
                width: double.infinity,
                color: const Color(0xFFD9D2CC),
              ),
              Positioned(
                top: 48,
                left: 16,
                child: _CircleIconButton(
                  icon: Icons.arrow_back,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
              Positioned(
                top: 48,
                right: 16,
                child: _CircleIconButton(
                  icon: Icons.share_outlined,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              transform: Matrix4.translationValues(0, -24, 0),
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Abstract Gel Art',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                        Text(
                          r'$45',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.accent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Nails • 60 min',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(height: 1, color: AppColors.border),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE7DED7),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Created by Sarah',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text(
                                'Senior Nail Technician',
                                style: GoogleFonts.poppins(
                                  fontSize: 11.5,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.chevron_right,
                            color: AppColors.textSecondary),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'A unique, hand-painted abstract design using\npremium gel polish. Includes cuticle care,\nshaping, and a hydrating hand massage.\nCustomize colors to match your style.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        height: 1.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: const [
                        _TagChip(label: '#NailArt'),
                        _TagChip(label: '#GelManicure'),
                        _TagChip(label: '#Abstract'),
                        _TagChip(label: '#Trendy'),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Text(
                          'Gallery',
                          style: GoogleFonts.poppins(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '6 looks',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1.1,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7DED7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 18),
                    _PrimaryButton(
                      label: 'Book This Look',
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AppRoutes.booking),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _selectedDay = 1;
  int _selectedSlot = 3;
  bool _bookForMe = true;
  int _selectedStaff = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Select Date & Time',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                children: [
                  Row(
                    children: [
                      Text(
                        'Selected Services',
                        style: GoogleFonts.poppins(
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '+ Add Service',
                        style: GoogleFonts.poppins(
                          fontSize: 12.5,
                          color: AppColors.accent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Classic Manicure',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '45 mins • Gel Polish',
                                style: GoogleFonts.poppins(
                                  fontSize: 11.5,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$26.25',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'October 2023',
                        style: GoogleFonts.poppins(
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.chevron_right,
                          size: 20, color: AppColors.textSecondary),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(5, (index) {
                      final labels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
                      final dates = ['23', '24', '25', '26', '27'];
                      final selected = index == _selectedDay;
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: index == 4 ? 0 : 8),
                          child: GestureDetector(
                            onTap: () => setState(() => _selectedDay = index),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: selected
                                    ? AppColors.accent
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    labels[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      color: selected
                                          ? Colors.white
                                          : AppColors.textSecondary,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    dates[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: selected
                                          ? Colors.white
                                          : AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Available Slots',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(9, (index) {
                      final labels = [
                        '09:00 AM',
                        '09:30 AM',
                        '10:00 AM',
                        '10:30 AM',
                        '11:00 AM',
                        '11:30 AM',
                        '01:00 PM',
                        '01:30 PM',
                        '02:00 PM',
                      ];
                      final disabled = index == 0 || index == 1;
                      final selected = index == _selectedSlot;
                      return GestureDetector(
                        onTap: disabled
                            ? null
                            : () => setState(() => _selectedSlot = index),
                        child: Container(
                          width: 92,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: selected
                                ? const Color(0xFFF6E8DF)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: selected
                                  ? AppColors.accent
                                  : AppColors.border,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              labels[index],
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: disabled
                                    ? AppColors.border
                                    : AppColors.textPrimary,
                                decoration: disabled
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Choose Professional',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) {
                      final names = ['Any Staff', 'Sarah', 'Mike', 'Emma'];
                      final selected = index == _selectedStaff;
                      return GestureDetector(
                        onTap: () => setState(() => _selectedStaff = index),
                        child: Column(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selected
                                    ? const Color(0xFFF6E8DF)
                                    : const Color(0xFFE7DED7),
                                border: Border.all(
                                  color: selected
                                      ? AppColors.accent
                                      : Colors.transparent,
                                ),
                              ),
                              child: index == 0
                                  ? const Icon(Icons.person_outline,
                                      color: AppColors.accent)
                                  : const SizedBox.shrink(),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              names[index],
                              style: GoogleFonts.poppins(
                                fontSize: 11.5,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Recipient',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'This booking is for me.',
                          style: GoogleFonts.poppins(
                            fontSize: 12.5,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                      Switch(
                        value: _bookForMe,
                        activeColor: AppColors.accent,
                        onChanged: (value) {
                          setState(() => _bookForMe = value);
                          if (!value) {
                            showDialog<void>(
                              context: context,
                              barrierDismissible: true,
                              builder: (_) => const ContactAccessDialog(),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                  Text(
                    'Turn off to book for someone else.',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Recipient contact details',
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Expanded(
                        child: _ChoiceChip(
                          label: 'Phone',
                          selected: true,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: _ChoiceChip(label: 'Email', selected: false),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const _TextFieldBox(
                    hintText: 'Enter recipient phone number',
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'We will send the booking details and reminders to this\ncontact.',
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Tue, 24 Oct • 10:30 AM',
                          style: GoogleFonts.poppins(
                            fontSize: 11.5,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '\$26.25',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: _PrimaryButton(
                      label: 'Continue',
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AppRoutes.reviewBooking),
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

class ReviewBookingPage extends StatelessWidget {
  const ReviewBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Review Booking',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7DED7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Glow & Polish Studio',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text(
                                'Downtown Area',
                                style: GoogleFonts.poppins(
                                  fontSize: 11.5,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              const SizedBox(height: 10),
                              _InfoRow(
                                icon: Icons.calendar_today_outlined,
                                text: 'Tue, 24 Oct • 10:30 AM',
                              ),
                              const SizedBox(height: 6),
                              _InfoRow(
                                icon: Icons.spa_outlined,
                                text: 'Classic Manicure • 45 min',
                              ),
                              const SizedBox(height: 6),
                              _InfoRow(
                                icon: Icons.person_outline,
                                text: 'Staff: Sarah',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Booking For',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF3E7DF),
                          ),
                          child: const Icon(Icons.person_outline,
                              color: AppColors.accent, size: 18),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Me (Default)',
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                        Text(
                          'Change',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColors.accent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Notes',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Any special requests for the salon?',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Payment Method',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      children: [
                        _PaymentRow(
                          icon: Icons.credit_card,
                          label: 'Visa ending in 4242',
                          selected: true,
                        ),
                        const Divider(height: 1, color: AppColors.border),
                        _PaymentRow(
                          icon: Icons.account_balance_wallet_outlined,
                          label: 'Wallet (\$0.00)',
                          trailing: 'Top up',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Payment Summary',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      children: [
                        _SummaryRow(label: 'Service Total', value: '\$25.00'),
                        const SizedBox(height: 6),
                        _SummaryRow(label: 'Taxes & Fees', value: '\$1.25'),
                        const Divider(height: 16, color: AppColors.border),
                        _SummaryRow(
                          label: 'Total Amount',
                          value: '\$26.25',
                          bold: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  _PrimaryButton(
                    label: 'Confirm & Pay \$26.25  →',
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.bookingRecipient),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'By confirming, you agree to the booking terms and cancellation\npolicy of Glow & Polish Studio.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 10.5,
                      color: AppColors.textSecondary,
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

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: AppColors.textSecondary),
        const SizedBox(width: 6),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 11.5,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class _PaymentRow extends StatelessWidget {
  const _PaymentRow({
    required this.icon,
    required this.label,
    this.selected = false,
    this.trailing,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: AppColors.textSecondary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          if (trailing != null)
            Text(
              trailing!,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.accent,
              ),
            ),
          if (selected)
            const Icon(Icons.check_circle,
                size: 18, color: AppColors.accent),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    this.bold = false,
  });

  final String label;
  final String value;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: bold ? 13 : 12.5,
              fontWeight: bold ? FontWeight.w600 : FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: bold ? 13 : 12.5,
            fontWeight: bold ? FontWeight.w600 : FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

class BookingRecipientPage extends StatefulWidget {
  const BookingRecipientPage({super.key});

  @override
  State<BookingRecipientPage> createState() => _BookingRecipientPageState();
}

class _BookingRecipientPageState extends State<BookingRecipientPage> {
  bool _forMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Booking Recipient',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const Divider(height: 1, color: AppColors.border),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
                children: [
                  Text(
                    'Who is this appointment for?',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      children: [
                        _RecipientOption(
                          title: 'Myself',
                          subtitle: 'Use my profile details',
                          selected: _forMe,
                          onTap: () => setState(() => _forMe = true),
                          icon: Icons.person_outline,
                        ),
                        const Divider(height: 1, color: AppColors.border),
                        _RecipientOption(
                          title: 'Someone else',
                          subtitle: 'Enter their details',
                          selected: !_forMe,
                          onTap: () => setState(() => _forMe = false),
                          icon: Icons.card_giftcard_outlined,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Guest Details',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'First Name',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const _TextFieldBox(hintText: 'e.g. Alice'),
                  const SizedBox(height: 12),
                  Text(
                    'Last Name',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const _TextFieldBox(hintText: 'e.g. Smith'),
                  const SizedBox(height: 12),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const _TextFieldBox(hintText: 'e.g. +1 234 567 8900'),
                  const SizedBox(height: 12),
                  Text(
                    'Email (Optional)',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const _TextFieldBox(hintText: 'e.g. alice@example.com'),
                  const SizedBox(height: 10),
                  Text(
                    'We will send the booking confirmation and reminders to\nthis email.',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: _PrimaryButton(
                label: 'Save Changes',
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.bookingConfirmed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecipientOption extends StatelessWidget {
  const _RecipientOption({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Icon(icon, color: AppColors.accent, size: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
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

class BookingConfirmedPage extends StatelessWidget {
  const BookingConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
            child: Column(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3CB371),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 34),
                ),
                const SizedBox(height: 18),
                Text(
                  'Booking Confirmed!',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Your appointment has been successfully\nscheduled. We've sent a receipt to your email.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Column(
                    children: [
                      _SummaryLine(
                        label: 'Salon',
                        value: 'Glow & Polish Studio',
                      ),
                      _SummaryLine(
                        label: 'Service',
                        value: 'Classic Manicure',
                      ),
                      const Divider(height: 20, color: AppColors.border),
                      _SummaryLine(
                        label: 'Date',
                        value: 'Oct 24, 2023',
                      ),
                      _SummaryLine(
                        label: 'Time',
                        value: '10:00 AM',
                      ),
                      const Divider(height: 20, color: AppColors.border),
                      _SummaryLine(
                        label: 'Total Paid',
                        value: '\$26.25',
                        valueColor: AppColors.accent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                _PrimaryButton(
                  label: 'Add to Calendar',
                  onPressed: () => Navigator.of(context)
                      .pushNamed(AppRoutes.addedToCalendar),
                ),
                const SizedBox(height: 12),
                OutlinedButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamed(AppRoutes.myBookings),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.accent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    minimumSize: const Size(double.infinity, 52),
                  ),
                  child: Text(
                    'View My Bookings',
                    style: GoogleFonts.poppins(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.accent,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(AppRoutes.home, (_) => false),
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SummaryLine extends StatelessWidget {
  const _SummaryLine({
    required this.label,
    required this.value,
    this.valueColor,
  });

  final String label;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              color: AppColors.textSecondary,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: valueColor ?? AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class AddedToCalendarPage extends StatelessWidget {
  const AddedToCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
            child: Column(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF3E7DF),
                  ),
                  child: const Icon(Icons.calendar_today,
                      color: AppColors.accent, size: 28),
                ),
                const SizedBox(height: 16),
                Text(
                  "This appointment has been\nsuccessfully added to your device\ncalendar. We'll remind you 2 hours\nbefore.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Added to Calendar',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3E7DF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'OCT',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Text(
                              '14',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Glow & Polish Studio',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '10:00 AM - 11:00 AM',
                            style: GoogleFonts.poppins(
                              fontSize: 11.5,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                _PrimaryButton(
                  label: 'Done',
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(AppRoutes.home, (_) => false),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.calendarView),
                  child: Text(
                    'Open Calendar',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarViewPage extends StatelessWidget {
  const CalendarViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'October 2024',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: List.generate(6, (index) {
                  final days = ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu'];
                  final dates = ['12', '13', '14', '15', '16', '17'];
                  final selected = index == 2;
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: index == 5 ? 0 : 6),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: selected
                              ? AppColors.accent
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: Column(
                          children: [
                            Text(
                              days[index],
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: selected
                                    ? Colors.white
                                    : AppColors.textSecondary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              dates[index],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: selected
                                    ? Colors.white
                                    : AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      final hours = ['09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00'];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 52,
                              child: Text(
                                hours[index],
                                style: GoogleFonts.poppins(
                                  fontSize: 11.5,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: AppColors.border.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    left: 76,
                    top: 64,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3E7DF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abstract Gel Art',
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Glow & Polish Studio • 1 hr',
                            style: GoogleFonts.poppins(
                              fontSize: 11.5,
                              color: AppColors.textSecondary,
                            ),
                          ),
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

class SelectOccasionPage extends StatefulWidget {
  const SelectOccasionPage({super.key});

  @override
  State<SelectOccasionPage> createState() => _SelectOccasionPageState();
}

class _SelectOccasionPageState extends State<SelectOccasionPage> {
  String _selected = 'Birthday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Select Occasion',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What are we celebrating?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Choose an occasion to see curated packages\nand special arrangements.',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.05,
                    children: [
                      _OccasionCard(
                        label: 'Birthday',
                        asset: 'assets/occasions/icon_birthday.png',
                        selected: _selected == 'Birthday',
                        onTap: () => setState(() => _selected = 'Birthday'),
                      ),
                      _OccasionCard(
                        label: 'Bridal Party',
                        asset: 'assets/occasions/icon_bridal.png',
                        selected: _selected == 'Bridal Party',
                        onTap: () => setState(() => _selected = 'Bridal Party'),
                      ),
                      _OccasionCard(
                        label: 'Date Night',
                        asset: 'assets/occasions/icon_date_night.png',
                        selected: _selected == 'Date Night',
                        onTap: () => setState(() => _selected = 'Date Night'),
                      ),
                      _OccasionCard(
                        label: 'Anniversary',
                        asset: 'assets/occasions/icon_anniversary.png',
                        selected: _selected == 'Anniversary',
                        onTap: () => setState(() => _selected = 'Anniversary'),
                      ),
                      _OccasionCard(
                        label: 'Just Because',
                        asset: 'assets/occasions/icon_just_because.png',
                        selected: _selected == 'Just Because',
                        onTap: () => setState(() => _selected = 'Just Because'),
                      ),
                      _OccasionCard(
                        label: 'Maternity',
                        asset: 'assets/occasions/icon_maternity.png',
                        selected: _selected == 'Maternity',
                        onTap: () => setState(() => _selected = 'Maternity'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _OccasionCustomCard(
                    asset: 'assets/occasions/icon_custom.png',
                    title: 'Something else?',
                    subtitle: 'Create a custom package',
                  ),
                  const SizedBox(height: 18),
                  _PrimaryButton(
                    label: 'Continue',
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.giftCard),
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

class _OccasionCard extends StatelessWidget {
  const _OccasionCard({
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
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFF9E9E8) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  asset,
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OccasionCustomCard extends StatelessWidget {
  const _OccasionCustomCard({
    required this.asset,
    required this.title,
    required this.subtitle,
  });

  final String asset;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E7DF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                asset,
                color: AppColors.accent,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
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
    );
  }
}

class GiftCardPage extends StatefulWidget {
  const GiftCardPage({super.key});

  @override
  State<GiftCardPage> createState() => _GiftCardPageState();
}

class _GiftCardPageState extends State<GiftCardPage> {
  int _selectedAmount = 1;
  int _selectedColor = 1;

  @override
  Widget build(BuildContext context) {
    final amounts = ['\$50', '\$100', '\$200'];
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Send a Gift',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 140,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFA5B5), Color(0xFFFFC7E1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BEAUTY SEND',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$100',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Happy Birthday!',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'Choose Style',
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                final colors = [
                  const Color(0xFFFFC0CB),
                  const Color(0xFFFF6B8A),
                  const Color(0xFFC8A7E8),
                  const Color(0xFF82E3C6),
                  const Color(0xFF3EC9FF),
                ];
                final selected = _selectedColor == index;
                return GestureDetector(
                  onTap: () => setState(() => _selectedColor = index),
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colors[index],
                      border: Border.all(
                        color: selected ? AppColors.accent : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 18),
            Text(
              'Select Amount',
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                final selected = _selectedAmount == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedAmount = index),
                    child: Container(
                      margin: EdgeInsets.only(right: index == 2 ? 0 : 10),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: selected
                            ? const Color(0xFFF6E8DF)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selected ? AppColors.accent : AppColors.border,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          amounts[index],
                          style: GoogleFonts.poppins(
                            fontSize: 12.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 12),
            const _TextFieldBox(hintText: 'Enter custom amount'),
            const SizedBox(height: 18),
            Text(
              'Recipient Details',
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Name',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 6),
            const _TextFieldBox(hintText: 'Sarah Johnson'),
            const SizedBox(height: 12),
            Text(
              'Mobile Number',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 6),
            const _TextFieldBox(hintText: '+1 234 567 8900'),
            const SizedBox(height: 12),
            Text(
              'Message (Optional)',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 6),
            const _TextFieldBox(
              hintText:
                  'Happy Birthday! Hope you enjoy a relaxing day off.',
            ),
            const SizedBox(height: 18),
            _PrimaryButton(
              label: 'Proceed to Pay \$100',
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (_) => GiftContactDialog(
                    onNotNow: () {
                      Navigator.of(context).pop();
                      Navigator.of(context)
                          .pushNamed(AppRoutes.giftReviewPay);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GiftContactDialog extends StatelessWidget {
  const GiftContactDialog({super.key, required this.onNotNow});

  final VoidCallback onNotNow;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 52,
              width: 52,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  'assets/gifts/icon_contacts.png',
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Quickly send beauty gifts to friends\nand family.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            _PrimaryButton(
              label: 'Allow contacts access',
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: onNotNow,
              child: Text(
                'Not now',
                style: GoogleFonts.poppins(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GiftReviewPayPage extends StatelessWidget {
  const GiftReviewPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Review & Pay',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                children: [
                  Text(
                    'Payment Method',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _PaymentOption(
                    label: 'My Wallet',
                    subtitle: 'Balance: \$120.50',
                    selected: true,
                  ),
                  const SizedBox(height: 10),
                  _PaymentOption(
                    label: 'Credit / Debit Card',
                    subtitle: '**** 4829',
                  ),
                  const SizedBox(height: 10),
                  _PaymentOption(
                    label: 'Apple Pay',
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Payment Summary',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _SummaryRow(label: 'Gift (Happy Birthday)', value: '\$100.00'),
                  const SizedBox(height: 6),
                  _SummaryRow(label: 'Service Fee', value: '\$2.00'),
                  const Divider(height: 20, color: AppColors.border),
                  _SummaryRow(
                    label: 'Total Amount',
                    value: '\$102.00',
                    bold: true,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Add Note (Optional)',
                    style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Any special requests or instructions?',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  _PrimaryButton(
                    label: 'Confirm & Pay \$102.00',
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.giftPaymentConfirmed),
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

class _PaymentOption extends StatelessWidget {
  const _PaymentOption({
    required this.label,
    this.subtitle,
    this.selected = false,
  });

  final String label;
  final String? subtitle;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF3E7DF) : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: const Icon(Icons.account_balance_wallet_outlined,
                size: 16, color: AppColors.textSecondary),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: GoogleFonts.poppins(
                      fontSize: 11.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
              ],
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
    );
  }
}

class GiftPaymentConfirmedPage extends StatelessWidget {
  const GiftPaymentConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
            child: Column(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3CB371),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 34),
                ),
                const SizedBox(height: 18),
                Text(
                  'Payment Confirmed!',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Your gift has been successfully\nplaced. We've sent the details to the recipient.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Column(
                    children: [
                      _SummaryLine(
                        label: 'Recipient Name',
                        value: 'John Doe',
                      ),
                      _SummaryLine(
                        label: 'Gift',
                        value: 'Happy Birthday',
                      ),
                      const Divider(height: 20, color: AppColors.border),
                      _SummaryLine(
                        label: 'Date',
                        value: 'Oct 24, 2023',
                      ),
                      _SummaryLine(
                        label: 'Time',
                        value: '10:00 AM',
                      ),
                      const Divider(height: 20, color: AppColors.border),
                      _SummaryLine(
                        label: 'Total Paid',
                        value: '\$102.00',
                        valueColor: AppColors.accent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                _PrimaryButton(
                  label: 'Back Home',
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(AppRoutes.home, (_) => false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RedeemCodePage extends StatelessWidget {
  const RedeemCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Redeem Code',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E7DF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  'assets/gifts/icon_gift.png',
                  color: AppColors.accent,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'Got a Gift Card?',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Enter your promo code or gift card\nnumber below to add funds to your\nwallet.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'Enter Code',
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'e.g. BEAUTY2023',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12.5,
                          color: AppColors.textSecondary,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3E7DF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'PASTE',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppColors.accent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            _PrimaryButton(
              label: 'Redeem Code',
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(height: 12),
            Text(
              'By redeeming, you agree to the Gift Card\nTerms.\nBalance never expires.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 11.5,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBookingsPage extends StatelessWidget {
  const MyBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              'My Bookings',
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3E7DF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Upcoming',
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'History',
                          style: GoogleFonts.poppins(
                            fontSize: 12.5,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                children: const [
                  _BookingCard(
                    title: 'Pure Bliss Spa & Salon',
                    subtitle: 'Full Body Massage • 60 min',
                    time: 'Tomorrow, 10:00 AM',
                    location: 'In-Salon',
                    status: 'Confirmed',
                  ),
                  _BookingCard(
                    title: 'Nails by Sarah',
                    subtitle: 'Gel Manicure • 45 min',
                    time: 'Oct 24, 2:00 PM',
                    location: 'Home Service',
                    status: 'Pending',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.home);
          } else if (index == 1) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.explore);
          } else if (index == 2) {
            return;
          } else if (index == 3) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.wallet);
          } else if (index == 4) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.profile);
          }
        },
      ),
    );
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.location,
    required this.status,
  });

  final String title;
  final String subtitle;
  final String time;
  final String location;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFE7DED7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
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
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E7DF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  status,
                  style: GoogleFonts.poppins(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.accent,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined,
                  size: 14, color: AppColors.textSecondary),
              const SizedBox(width: 6),
              Text(
                time,
                style: GoogleFonts.poppins(
                  fontSize: 11.5,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(width: 12),
              const Icon(Icons.location_on_outlined,
                  size: 14, color: AppColors.textSecondary),
              const SizedBox(width: 6),
              Text(
                location,
                style: GoogleFonts.poppins(
                  fontSize: 11.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Cancel',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColors.accent,
                ),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.accent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Reschedule',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add Money',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  Text(
                    'ENTER AMOUNT',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      letterSpacing: 1,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$50.00',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.accent,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _AmountChip(label: '\$20'),
                      const SizedBox(width: 8),
                      _AmountChip(label: '\$50', selected: true),
                      const SizedBox(width: 8),
                      _AmountChip(label: '\$100'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Text(
              'Payment Method',
              style: GoogleFonts.poppins(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            _PaymentMethodRow(
              title: 'Mastercard',
              subtitle: '•••• 4829',
              selected: true,
            ),
            const SizedBox(height: 10),
            _PaymentMethodRow(
              title: 'Apple Pay',
              subtitle: 'Default',
            ),
            const SizedBox(height: 10),
            _PaymentMethodRow(
              title: 'Google Pay',
              subtitle: 'Available on this device',
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.addNewCard),
              borderRadius: BorderRadius.circular(14),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.add,
                          size: 16, color: AppColors.textSecondary),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Add New Card',
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AmountChip extends StatelessWidget {
  const _AmountChip({required this.label, this.selected = false});

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF3E7DF) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 12,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class _PaymentMethodRow extends StatelessWidget {
  const _PaymentMethodRow({
    required this.title,
    required this.subtitle,
    this.selected = false,
  });

  final String title;
  final String subtitle;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF3E7DF) : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.credit_card,
                size: 16, color: AppColors.textSecondary),
          ),
          const SizedBox(width: 10),
          Expanded(
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
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.border),
              color: selected ? AppColors.accent : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    'Add New Card',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xFFC7A28A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFB79178),
                      ),
                      child: const Icon(Icons.wifi, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 26,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          '••••  ••••  ••••  ••••',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            letterSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'CARD HOLDER\nYOUR NAME',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              'EXPIRES\nMM/YY',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Text('Card Number',
                style: GoogleFonts.poppins(
                    fontSize: 12.5, color: AppColors.textPrimary)),
            const SizedBox(height: 6),
            const _TextFieldBox(hintText: '0000 0000 0000 0000'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date',
                          style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 6),
                      const _TextFieldBox(hintText: 'MM/YY'),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV / CVC',
                          style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 6),
                      const _TextFieldBox(hintText: '123'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text('Cardholder Name',
                style: GoogleFonts.poppins(
                    fontSize: 12.5, color: AppColors.textPrimary)),
            const SizedBox(height: 6),
            const _TextFieldBox(hintText: 'Name on card'),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.lock, size: 14, color: AppColors.textSecondary),
                const SizedBox(width: 6),
                Text(
                  'Your payment information is secure',
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            _PrimaryButton(
              label: 'Save Card',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          children: [
            Text(
              'Wallet',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    'Available Balance',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$142.50',
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(AppRoutes.addMoney),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text('Add Money'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(AppRoutes.redeemCode),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.25),
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Redeem',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF3E7DF),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Got a gift code? Redeem it now to add\ncredits to your wallet.',
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  const Icon(Icons.chevron_right,
                      color: AppColors.textSecondary),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Text(
                  'Recent Transactions',
                  style: GoogleFonts.poppins(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const _TransactionRow(
              title: 'Added to Wallet',
              time: 'Today, 10:23 AM',
              amount: '+\$50.00',
              positive: true,
            ),
            const _TransactionRow(
              title: 'Pure Bliss Spa',
              time: 'Oct 22, 4:00 PM',
              amount: '-\$85.00',
            ),
            const _TransactionRow(
              title: 'Gift from Sarah',
              time: 'Oct 15, 9:30 AM',
              amount: '+\$90.00',
              positive: true,
            ),
            const _TransactionRow(
              title: 'Cancellation Refund',
              time: 'Oct 10, 1:15 PM',
              amount: '-\$60.00',
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.home);
          } else if (index == 1) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.explore);
          } else if (index == 2) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.myBookings);
          } else if (index == 3) {
            return;
          } else if (index == 4) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.profile);
          }
        },
      ),
    );
  }
}

class _TransactionRow extends StatelessWidget {
  const _TransactionRow({
    required this.title,
    required this.time,
    required this.amount,
    this.positive = false,
  });

  final String title;
  final String time;
  final String amount;
  final bool positive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: positive ? const Color(0xFF3CB371) : const Color(0xFFE7DED7),
            ),
            child: Icon(
              positive ? Icons.arrow_downward : Icons.arrow_upward,
              size: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
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
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.poppins(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: positive ? const Color(0xFF3CB371) : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          children: [
            Text(
              'Profile',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE7DED7),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jessica Miller',
                    style: GoogleFonts.poppins(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    '+1 (555) 123-4567',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3E7DF),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.accent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const _ProfileSectionTitle(title: 'ACCOUNT'),
            _ProfileTile(
              icon: Icons.location_on_outlined,
              label: 'Saved Addresses',
            ),
            _ProfileTile(
              icon: Icons.credit_card,
              label: 'Payment Methods',
            ),
            const SizedBox(height: 8),
            const _ProfileSectionTitle(title: 'ACTIVITY'),
            _ProfileTile(
              icon: Icons.favorite_border,
              label: 'My Favorites',
            ),
            _ProfileTile(
              icon: Icons.card_giftcard_outlined,
              label: 'My Gifts',
              badge: '2 New',
            ),
            const SizedBox(height: 8),
            const _ProfileSectionTitle(title: 'BUSINESS'),
            _ProfileTile(
              icon: Icons.storefront_outlined,
              label: 'Register as Salon',
            ),
            const SizedBox(height: 8),
            const _ProfileSectionTitle(title: 'GENERAL'),
            _ProfileTile(
              icon: Icons.notifications_none,
              label: 'Notifications',
            ),
            _ProfileTile(
              icon: Icons.help_outline,
              label: 'Help & Support',
            ),
            _ProfileTile(
              icon: Icons.language,
              label: 'Select Language',
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: Text(
                'Log Out',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: AppColors.accent,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 4,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.home);
          } else if (index == 1) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.explore);
          } else if (index == 2) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.myBookings);
          } else if (index == 3) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.wallet);
          } else if (index == 4) {
            return;
          }
        },
      ),
    );
  }
}

class _ProfileSectionTitle extends StatelessWidget {
  const _ProfileSectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 1,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({
    required this.icon,
    required this.label,
    this.badge,
  });

  final IconData icon;
  final String label;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF3E7DF),
            ),
            child: Icon(icon, color: AppColors.accent, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          if (badge != null)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                badge!,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          const SizedBox(width: 6),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search,
                      color: AppColors.textSecondary, size: 18),
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
            const SizedBox(height: 12),
            Row(
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
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Recommended for you',
                  style: GoogleFonts.poppins(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Spacer(),
                Text(
                  'Filter',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const _ExploreCard(
              title: 'Glow & Polish Studio',
              subtitle: 'Downtown Area • 1.2 km',
              rating: '4.9',
              tags: ['Nails', 'Spa', 'Facial'],
            ),
            const _ExploreCard(
              title: 'Urban Cuts & Shaves',
              subtitle: 'West Avenue • 2.5 km',
              rating: '4.8',
              tags: ['Haircut', 'Beard Trim'],
            ),
            const _ExploreCard(
              title: 'Serenity Day Spa',
              subtitle: 'Uptown Mall • 0.8 km',
              rating: '5.0',
              tags: ['Massage', 'Therapy', 'Sauna'],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.home);
          } else if (index == 1) {
            return;
          } else if (index == 2) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.myBookings);
          } else if (index == 3) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.wallet);
          } else if (index == 4) {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.profile);
          }
        },
      ),
    );
  }
}

class _ExploreCard extends StatelessWidget {
  const _ExploreCard({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.tags,
  });

  final String title;
  final String subtitle;
  final String rating;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: const Color(0xFFE7DED7),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    const Icon(Icons.star,
                        size: 12, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: tags
                      .map(
                        (tag) => Container(
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
                        ),
                      )
                      .toList(),
                ),
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

import 'package:get/get.dart';
import 'package:candian_cart/app/ChooseScheduleCart/ChooseScheduleCart.dart';
import 'package:candian_cart/app/HelpSupport/Help&Support.dart';
import 'package:candian_cart/app/MyAds/my_ads.dart';
import 'package:candian_cart/app/Notification/Notification.dart';
import 'package:candian_cart/app/Account/account.dart';
import 'package:candian_cart/app/EditProfile/editProfile.dart';
import 'package:candian_cart/app/Profile/profile.dart';
import 'package:candian_cart/app/Coupons/Coupons.dart';
import 'package:candian_cart/app/CreateAd/CreateAd.dart';
import 'package:candian_cart/app/Refer&Earn/ReferEarn.dart';
import 'package:candian_cart/app/SavedCoupons/SavedCoupons.dart';
import 'package:candian_cart/app/view_all_orders/viewAllOrders.dart';
import 'package:candian_cart/app/WishlistDetails/wish_list_detail.dart';
import 'package:candian_cart/app/add_to_cart/add_to_cart.dart';
import 'package:candian_cart/app/all_resturants/all_restaurants_view.dart';
import 'package:candian_cart/app/all_transcation/seeAllTranscations.dart';
import 'package:candian_cart/app/auth/binding/auth_binding.dart';
import 'package:candian_cart/app/auth/views/signUp_screen.dart';
import 'package:candian_cart/app/AllTiffinServices/Alltiffin.dart';
import 'package:candian_cart/app/BasicPackage/BasicPackage.dart';
import 'package:candian_cart/app/ABCateringDetails/CateringDetails.dart';
import 'package:candian_cart/app/CreateRequest/Createrequest.dart';
import 'package:candian_cart/app/CustomizePKGBuy/Customize_package.dart';
import 'package:candian_cart/app/Inventory/Inventory.dart';
import 'package:candian_cart/app/Message/Message.dart';
import 'package:candian_cart/app/Orders/MyOrders.dart';
import 'package:candian_cart/app/rating/rating.dart';
import 'package:candian_cart/app/StudentDiscount/Student_discount.dart';
import 'package:candian_cart/app/StudentVerification/Student_verification.dart';
import 'package:candian_cart/app/TakeawayCart/TakeawayCart.dart';
import 'package:candian_cart/app/TakeawayService/Takeawayservice.dart';
import 'package:candian_cart/app/TiffinMessage/Tiffin_Message.dart';
import 'package:candian_cart/app/Tiffin&Catering/Tiffincatering.dart';
import 'package:candian_cart/app/UploadBanner/UploadBanner.dart';
import 'package:candian_cart/app/Wishlist/Wishlist.dart';
import 'package:candian_cart/app/AddedItems/addeditems.dart';
import 'package:candian_cart/app/ALLCateringService/allCateringServices.dart';
import 'package:candian_cart/app/BannerAd/banner_ad_design.dart';
import 'package:candian_cart/app/BecomePartner/become_partner.dart';
import 'package:candian_cart/app/CateringReviews/cateringReviews.dart';
import 'package:candian_cart/app/CustomizwPKGSave/customize_package_save.dart';
import 'package:candian_cart/app/Flyer/flayer.dart';
import 'package:candian_cart/app/FlyerDetails/flayersDetails.dart';
import 'package:candian_cart/app/PromoteBusiness/promote_business.dart';
import 'package:candian_cart/app/TiffinReviews/tiffinReviews.dart';
import 'package:candian_cart/app/ABTiffinDetail/tiffindetails.dart';
import 'package:candian_cart/app/VisitingCard/visiting_card.dart';
import 'package:candian_cart/app/auth/views/otp_confirm.dart';
import 'package:candian_cart/app/auth/views/otp_verification.dart';
import 'package:candian_cart/app/auth/views/signIn.dart';
import 'package:candian_cart/app/OrderDetails/orderdetails.dart';
import 'package:candian_cart/app/foodDetail/FoodDetail.dart';
import 'package:candian_cart/app/home/home.dart';
import 'package:candian_cart/app/onBoarding_Screens/splashScreen.dart';
import 'package:candian_cart/app/AddUpload/addUpload.dart';
import 'package:candian_cart/app/reels/reels.dart';
import 'package:candian_cart/app/restaurant_details/resturant_detail.dart';
import 'package:candian_cart/app/reviews/reviews.dart';
import 'package:candian_cart/app/reward/reward.dart';
import 'package:candian_cart/app/wallet/wallet.dart';
import 'package:candian_cart/routes/app_pages.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const String INITIAL = Routes.splashScreenRoute;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreenRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.signInScreenRoute,
      page: () => const SignInScreen(),
      binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.signUpScreenRoute,
      page: () => const SignUp(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.otpVerificationRoute,
      page: () => const OTPVerification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.OTPConfirmRoute,
      page: () => const OTPConfirm(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.homeScreenRoute,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.allResturantsRoute,
      page: () => const AllResturants(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.restaurantDetailsRoute,
      page: () => const RestaurantDetails(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.reviewsScreenRoute,
      page: () => const Reviews(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.foodDetailRoute,
      page: () => const FoodDetails(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.walletScreenRoute,
      page: () => const Wallet(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.savedcouponsRoute,
      page: () => const SavedCoupons(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.lastTranscationRoute,
      page: () => const AllTranscation(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.rewardsScreenRoute,
      page: () => const Rewards(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addToCartRoute,
      page: () => AddToCart(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.reelsRoute,
      page: () => Reels(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addUploadRoute,
      page: () => const UploadAdd(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.accountRoute,
      page: () => Account(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.notificationRoute,
      page: () => const Notification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.helpSupportRoute,
      page: () => HelpAndSupport(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.profileRoute,
      page: () => const Profile(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.editProfilrRoute,
      page: () => const EditProfile(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.myOrderRoute,
      page: () => const MyOrders(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.inventoryRoute,
      page: () => const Inventory(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.ratingRoute,
      page: () => const Ratings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.wishListRoute,
      page: () => const Wishlist(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.wishListDetailRoute,
      page: () => const WishListDetail(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.flayerRoute,
      page: () => const Flayer(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.flayerDetailRoute,
      page: () => const FlayerDetail(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.orderDetailRoute,
      page: () => const Order_Details(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.viewAllOrderRoute,
      page: () => const Viewallorders(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.tiffinCateringRoute,
      page: () => const Tiffin_Catering(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.allTiffinRoute,
      page: () => const All_Tiffin_Service(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.tiffinDetailsRoute,
      page: () => const Tiffin_Details(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.basicPackageRoute,
      page: () => const Basic_Package(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.tiffinReweisRoute,
      page: () => const TiffinReviews(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.cartAddedRoute,
      page: () => const Cart_Added(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.customizePkgRoute,
      page: () => const Customize_Package(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.customizePkgSaveRoute,
      page: () => const Customize_Package_Save(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.visitingCardRoute,
      page: () => const VisitingCards(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.allCateringRoute,
      page: () => const All_Catering_Service(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.cateringDetailRoute,
      page: () => const ABCatering_Details(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.cateringReviewRoute,
      page: () => const CateringReviews(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.takeawayServiceRoute,
      page: () => const Takeaway_Service(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createRequestRoute,
      page: () => const Create_Request(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.tiffinMessageRoute,
      page: () => const Tiffin_Message(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.takewayCartRoute,
      page: () => const Takeaway_Cart(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.messageScreenRoute,
      page: () => const Message(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.studentDiscountRoute,
      page: () => const Student_Discount(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.studentVerificationRoute,
      page: () => const Student_Verification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.referEarnRoute,
      page: () => const Refer_Earn(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.becomePartnerRoute,
      page: () => const Become_partner(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.promoteBusinessRoute,
      page: () => const Promote_business(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.bannerAdDesignRoute,
      page: () => const BannerAdDesign(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createAdRoute,
      page: () => const Create_Ad(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.uploadBannerRoute,
      page: () => const Upload_Banner(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.myAdsRoute,
      page: () => const MyAds(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.couponsRoute,
      page: () => const Coupons(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.chooseschedulecartRoute,
      page: () => const Chooseschedulecart(),
      transition: Transition.fadeIn,
    ),
  ];
}

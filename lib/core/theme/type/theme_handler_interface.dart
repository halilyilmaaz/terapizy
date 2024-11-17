
import 'dart:ui';

import 'package:flutter/material.dart';

enum ThemeTypes {light}

abstract class IUIConstants {}

abstract class IPngConstants {
  abstract final String onboardingWave;
  abstract final String paraqrLogo;
  abstract final String darkParaqrLogo;
  abstract final String lightParaqrLogo;
  abstract final String halfRandomLineBackground;
  abstract final String bigRandomLine;
  abstract final String sendContainer;
  abstract final String exitContainer;
  abstract final String subtractPaperContainer;
  abstract final String moreContainer;
  abstract final String lightCepqrLogo;
  abstract final String grayBigRandomLine;
  abstract final String phoneWalletAndCoins;
  abstract final String walletCashArrowsIllustration;
  abstract final String paraqrMiniLogo;
  abstract final String transparentWave;
  abstract final String coinsCreditCardBillIllustration;
  abstract final String folderContainer;
}


abstract class ISvgConstants {
  abstract final String onboardingFirstSkipIcon;
  abstract final String onboardingSecondSkipIcon;
  abstract final String onboardingThirdSkipIcon;
  abstract final String phoneIcon;
  abstract final String lockIcon;
  abstract final String checkedIcon;
  abstract final String callCenterIcon;
  abstract final String envelopeIcon;
  abstract final String personIcon;
  abstract final String notificationIcon;
  abstract final String exitIcon;
  abstract final String moreIcon;
  abstract final String sendIcon;
  abstract final String subtractPaperIcon;
  abstract final String qrCodeIcon;
  abstract final String homeIcon;
  abstract final String documentIcon;
  abstract final String layersIcon;
  abstract final String giftIcon;
  abstract final String addIcon;
  abstract final String removeIcon;
  abstract final String copyIcon;
  abstract final String shareIcon;
  abstract final String profileIcon;
  abstract final String successShieldIcon;
  abstract final String callingPhoneIcon;
  abstract final String settingsIcon;
  abstract final String informationIcon;
  abstract final String dangerIcon;
  abstract final String forwardArrowWithCircleIcon;
  abstract final String penIcon;
  abstract final String rightArrowWithCircleIcon;
  abstract final String homeCutIcon;
  abstract final String softEnvelopIcon;
  abstract final String softPhoneIcon;
  abstract final String bellWithMagnifyIcon;
  abstract final String worldWithMagnifyIcon;
  abstract final String shieldWithTickIcon;
  abstract final String phoneWithXIcon;
  abstract final String eyeWithPenIcon;
  abstract final String lockWithQuestionMarkIcon;
  abstract final String cashIllustrationIcon;
  abstract final String creditCardIllustrationIcon;
  abstract final String buildingsIcon;
  abstract final String personsIcon;
  abstract final String trashIcon;
  abstract final String backIcon;
  abstract final String cellPhoneIcon;
  abstract final String walletIcon;
  abstract final String upKeyIcon;
  abstract final String openEyeIcon;
  abstract final String hiddenEyeIcon;
  abstract final String scannerIcon;
  abstract final String imageIcon;
  abstract final String calendarIcon;
}


abstract class IColorConstants {
  abstract final Color black;
  abstract final Color mediumDarkBlue;
  abstract final Color deepSkyBlue;
  abstract final Color white;
  abstract final Color lightGray;
  abstract final Color lightSteelBlue;
  abstract final Color slateGray;
  abstract final Color dodgerBlue;
  abstract final Color softBlue;
  abstract final Color darkBlue;
  abstract final Color grayishSilver;
  abstract final Color lightGrayishSilver;
  abstract final Color paleSkyBlue;
  abstract final Color green;
  abstract final Color red;
  abstract final Color middleGray;
  abstract final Color babyBlue;
  abstract final Color gray;
  abstract final Color skyBlue;
  abstract final Color cyan;
  abstract final Color darkGreen;
  abstract final Color cloudyBlue;
  abstract final Color softYellow;
  abstract final Color pastelGreen;
  abstract final Color darkBabyBlue;
  abstract final Color blue;
}

class LightUIConstants implements IUIConstants {}


// class LightSvgConstants implements ISvgConstants {
//   static String baseAssetPath = 'assets/visual/light_mode/svgs';
//   static String commonAssetPath = 'assets/visual/common/svgs';

//   @override
//   final String onboardingFirstSkipIcon = "$baseAssetPath/onboarding_first_skip_icon.svg";

//   @override
//   final String onboardingSecondSkipIcon = "$baseAssetPath/onboarding_second_skip_icon.svg";

//   @override
//   final String onboardingThirdSkipIcon = "$baseAssetPath/onboarding_third_skip_icon.svg";

//   @override
//   final String phoneIcon = "$baseAssetPath/phone_icon.svg";

// }

// class LightPngConstants implements IPngConstants {
//   static String baseAssetPath = 'assets/visual/light_mode/pngs';
//   static String baseCommonAssetPath = 'assets/visual/common/pngs';

//   @override
//   final String onboardingWave = "$baseAssetPath/onboarding_wave.png";

//   @override
//   String get paraqrLogo => "$baseCommonAssetPath/paraqr_logo.png";

//   @override
//   String get darkParaqrLogo => "$baseCommonAssetPath/dark_paraqr_logo.png";

// }

// class LightColorConstants extends IColorConstants {
//   //BLACK
//   @override
//   Color get black => Colors.black;

//   //BLUE
//   @override
//   Color get mediumDarkBlue => const Color(0xFF1E4399);

//   @override
//   Color get darkBlue => const Color(0xFF063D8E);

//   @override
//   Color get blue => const Color(0xFF2D74FF);
// }

abstract class IThemeHandler {
  static ThemeTypes themeType = ThemeTypes.light;

  // static IUIConstants uiConstants = LightUIConstants();
  // static ISvgConstants svgConstants = LightSvgConstants();
  // static IPngConstants pngConstants = LightPngConstants();
  // static IColorConstants colorConstants = LightColorConstants();

  abstract Map<ThemeTypes, IUIConstants> uiConstantsThemes;

  abstract Map<ThemeTypes, IPngConstants> pngConstantsThemes;

  abstract Map<ThemeTypes, ISvgConstants> svgConstantsThemes;

  abstract Map<ThemeTypes, IColorConstants> colorConstantsThemes;

  // abstract Map<ThemeTypes, IVideoConstants> videoConstantsThemes;

  void init();

  void setThemeType({required ThemeTypes newTheme});

  void setUIConstants({required IUIConstants newConstant});

  void setPngConstants({required IPngConstants newConstant});

  void setSvgConstants({required ISvgConstants newConstant});

  void setColorConstants({required IColorConstants newConstant});

  // void setVideoConstants({required IVideoConstants newConstant});

  ThemeTypes getThemeTypeFromLocal();

  void setThemeTypeFromLocal({required ThemeTypes newTheme});

  void changeTheme({required ThemeTypes newTheme});


}
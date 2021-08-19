import 'dart:io';

class AdMobService {
  String getAdMobId() {
    if(Platform.isIOS) {
      return '';
    } else if(Platform.isAndroid) {
      return '';
    }
    return null;
  }

  String getBannerAdId() {
    if(Platform.isIOS) {
      return '';
    } else if(Platform.isAndroid) {
      return '';
    }
    return null;
  }
}
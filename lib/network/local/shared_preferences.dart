import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{

  static late SharedPreferences pref;

  static init() async{
    pref = await SharedPreferences.getInstance();
  }

  static setBool(key,value) async{
    return await pref.setBool(key, value);
  }

  static getBool(key){
    return pref.getBool(key);
  }

}
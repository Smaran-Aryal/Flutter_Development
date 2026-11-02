import 'package:ews/model/news.dart';
import 'package:smart_date_formatter/smart_date_formatter.dart';

class Static {
  //static datas
  //https://newsapi.org/
  // v2/everything
  // ?q=apple
  // &sortBy=popularity
  // &apiKey=a25a0c0b883c4f389ff5c23da0f9dfea
  static String baseurl = "newsapi.org";
  static String path = "v2/everything";
  static String apikey = "a25a0c0b883c4f389ff5c23da0f9dfea";

  static Articles? article;

  static datetimeconverter (String value){
    if (value.isEmpty || value == "" || value == ""){
      return "";
    }
    try{
    // datetime format
    DateTime formatt = DateTime.parse(value);
    var formateddate = formatt.toReadable;
    return formateddate.toString();
    // parse
    // return string
  }catch(e){
    return "";
    }
  }

}
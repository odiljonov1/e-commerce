import 'package:home_tasks/celcius_to_farthest.dart';
import 'package:home_tasks/contact_with_space.dart';
import 'package:home_tasks/encode_and_decode.dart';
import 'package:home_tasks/map_reversed.dart';
import 'package:home_tasks/valid_email.dart';

void main(){
  List list = [1,2,3,4,5,6,7,8,9];
  print(list.mapReversed());


  String? phone;
  print(phone.contactWithSpace());

  String email = "odiljonov155@gmail.com";
  print(email.checkEmail());

  double celcius = 1;
  double farenheit = 34;

  print(celcius.celciusFarenheit);
  print(farenheit.farenheitCelcius);


  String text = "herewego";
  String decode = text.encode64();
  print(text);
  print(decode);
  print(decode.decode8());
}
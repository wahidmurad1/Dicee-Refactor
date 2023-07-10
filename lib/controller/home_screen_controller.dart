import 'dart:math';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
 RxInt dice1Value=1.obs;
 RxInt dice2Value=1.obs;

 dice1ValueChange(){
  Random random = Random();
  dice1Value.value=random.nextInt(6)+1;
  return dice1Value;
 }
 dice2ValueChange(){
  Random random = Random();
  dice2Value.value=random.nextInt(6)+1;
  return dice2Value;
 }
}
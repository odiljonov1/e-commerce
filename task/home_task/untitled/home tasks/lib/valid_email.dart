extension CheckEmail on String{
  bool checkEmail(){
    var regex = RegExp(r"^[a-zA-Z.!#$%&\'*+/=?^_`{|}~-]+[0-9]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

    return regex.hasMatch(this);
  }
}
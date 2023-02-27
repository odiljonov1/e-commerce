extension ContactWithSpace on String?{
  String contactWithSpace(){

    if(this == null){
      return "this number is null";
    }

    var regExp = RegExp(r'^(\+\d{3})(\d{2})(\d{3})(\d{2})(\d{2})$');
    var match = regExp.firstMatch(this??"")!;


    return '${match.group(1)} ${match.group(2)} ${match.group(3)} ${match.group(4)} ${match.group(5)}';
  }
}
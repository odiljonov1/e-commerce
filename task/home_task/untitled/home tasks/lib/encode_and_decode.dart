import 'dart:convert';

extension EncodeAndDecode on String {
  String encode64() {
    final bytes = utf8.encode(this);
    return base64.encode(bytes);
  }
  String decode8(){
    final bytes = base64.decode(this);
    return utf8.decode(bytes);
  }
}
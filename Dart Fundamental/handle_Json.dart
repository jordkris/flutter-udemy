import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg","id":1}';
  var parsedJson = json.decode(rawJson);
//   var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);
  var imageModel = new ImageModel.fromJson(parsedJson);
//   print(parsedJson);
//   print(parsedJson['id']);
  print(imageModel.id);
  print(imageModel.url);
}

class ImageModel {
  int id = 0;
  String url = '';

  ImageModel(this.id, this.url);

  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}

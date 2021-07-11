import 'dart:async';

class Cake {}

class Order {
  String type;
  Order(this.type);
}

void main() {
  final controller = new StreamController();
  // change this
  final order = new Order('chocolate');
  final baker =
      new StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
    if (cakeType == 'chocolate') {
      sink.add(new Cake());
    } else {
      sink.addError('I cant bake the type');
    }
  });
  controller.sink.add(order);
  controller.stream.map((order) => order.type).transform(baker).listen(
      (cake) => print('Here is your cake $cake'),
      onError: (err) => print(err));
}

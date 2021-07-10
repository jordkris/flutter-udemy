import 'dart:async';

void main() {
  print('About to fetch data...');
  get('http://hahdahbadh').then((result) {
    print(result);
  });
//   var result = await get('http://hahdahbadh'); //error in flutter 2.2.3
//   print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Got the data!';
  });
}

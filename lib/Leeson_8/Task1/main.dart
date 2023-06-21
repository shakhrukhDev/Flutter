
/*
void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:5), ()=> "Hello World");
}

*/


/*
Future delayedPrint(int seconds, String text) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => text);
}
main() async {
  print('Life');
  await delayedPrint(5, "Is").then((status){
    print(status);
  });
  print('Good');
}
*/

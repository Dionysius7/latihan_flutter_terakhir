import 'package:http/http.dart' as http;

// var url = Uri.parse('https://example.com/whatsit/create');
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
// print('Response status: ${response.statusCode}');
// print('Response body: ${response.body}');

// print(await http.read(Uri.parse('https://example.com/foobar.txt')));
class Service {
  Future getAllUnivIndoData(url){
    var finalUrl = Uri.parse(url);
      return http.get(finalUrl);
  }
  Future findAllUnivData(url, country){
    var finalUrl = Uri.parse(url + country);
    print(finalUrl);
      return http.get(finalUrl);
  }
}

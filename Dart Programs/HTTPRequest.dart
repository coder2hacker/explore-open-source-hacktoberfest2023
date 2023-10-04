import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Define the URL to send the GET request to
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts/1';

  try {
    // Send a GET request to the API
    final response = await http.get(Uri.parse(apiUrl));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Parse the JSON response
      final jsonData = json.decode(response.body);

      // Print the response data
      print('Response:');
      print('UserID: ${jsonData['userId']}');
      print('ID: ${jsonData['id']}');
      print('Title: ${jsonData['title']}');
      print('Body: ${jsonData['body']}');
    } else {
      print('Error: HTTP Status Code ${response.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}

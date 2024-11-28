import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  // Constructor
  NetworkHelper(this.url);

  final String url;

  // Fetch data from the network
  Future getData() async {
    try {
      // Ensure that url is a valid Uri
      final uri = Uri.parse(url);
      // Send the GET request
      http.Response response = await http.get(uri);

      // Check if the response status is OK (200)
      if (response.statusCode == 200) {
        // If successful, decode the response body into JSON
        String data = response.body;
        return jsonDecode(data); // Return the decoded data
      } else {
        // Print an error message if the status code is not OK
        print('Failed to load data: ${response.statusCode}');
        return null; // or handle the error further
      }
    } catch (e) {
      // Handle any exceptions such as network issues
      print('Error: $e');
      return null; // Return null or handle the error accordingly
    }
  }
}

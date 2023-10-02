import 'dart:convert';

void main() {
  // Sample JSON data as a string
  String jsonData = '''
    {
      "name": "John Doe",
      "age": 30,
      "email": "johndoe@example.com",
      "address": {
        "street": "123 Main St",
        "city": "Anytown",
        "zipCode": "12345"
      },
      "hobbies": ["Reading", "Gardening", "Traveling"]
    }
  ''';

  // Parse the JSON string into a Dart Map
  Map<String, dynamic> data = json.decode(jsonData);

  // Access and manipulate the JSON data
  String name = data['name'];
  int age = data['age'];
  String email = data['email'];
  Map<String, dynamic> address = data['address'];
  List<String> hobbies = List<String>.from(data['hobbies']);

  print('Name: $name');
  print('Age: $age');
  print('Email: $email');
  print('Address:');
  print('  Street: ${address['street']}');
  print('  City: ${address['city']}');
  print('  Zip Code: ${address['zipCode']}');
  print('Hobbies: $hobbies');

  // Manipulate the data
  data['age'] = 31; // Update age
  hobbies.add('Cooking'); // Add a hobby
  address['country'] = 'USA'; // Add a new field to the address

  // Convert the modified data back to JSON
  String updatedJsonData = json.encode(data);

  // Print the updated JSON data
  print('\nUpdated JSON Data:');
  print(updatedJsonData);
}

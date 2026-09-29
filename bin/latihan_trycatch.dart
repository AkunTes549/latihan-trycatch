import 'dart:convert';

import 'package:http/http.dart' as http;

// void main () async {
//     Future<void> tarikdata() async {
//         var response = await http.get(
//           Uri.parse('https://jsonplaceholder.typicode.com/posts')
//         );

//         var data = jsonDecode(response.body);
//         print(data[0]['title']);
//     }
//   await tarikdata();
// }

//fungsi tanpa pengembalian nilai
// void main () async {
//     Future<void> tarikdata() async {
//         var response = await http.get(
//           Uri.parse('https://jsonplaceholder.typicode.com/users')
//         );

//         var data = jsonDecode(response.body);
//         print('nama saya ${data[1]['name']}, username ${data[1]['username']}, kota saya ${data[1]['address']['city']}');
//     }
//   await tarikdata();

// fungsi dengan pengembalian nilai
// void main () async {
//     Future<List<dynamic>> tarikdata() async {
//       try {
//           var response = await http.get(
//           Uri.parse('https://jsonplaceholder.typicode.com/users')
//         );
//         var data = jsonDecode(response.body);
//         return data;
//       } catch (e) {
//         print(e);
//         return [];
//       }
      
//     }
  
//   List<dynamic> hasil = await tarikdata();
// //versi for biasa
//   for (var i = 0; i < hasil.length; i++) {
//     print('=====================================================================================');
//     print('${hasil['name']}     ${hasil['username']}     ${hasil['address']['city']}');
//   }

// //versi for in
//   //   for (var element in hasil) {
//   //   print('=====================================================================================');
//   //   print('${element['name']}     ${element['username']}     ${element['address']['city']}');
//   // }

// //versi for each
//   hasil.forEach((element) {
//     print('====================================================');
//     print('${element['name']}    ${element['username']}    ${element['address']['city']}');
//   }); 
// }


// fungsi dengan pengembalian nilai
void main () async {
    Future<Map<dynamic, dynamic>> tarikdata() async {
      try {
          var response = await http.get(
          Uri.parse('https://dummyjson.com/products')
        );
        var data = jsonDecode(response.body);
        return data;
      } catch (e) {
        print(e);
        return {};
      }
      
    }
  
  var hasil = await tarikdata();
  // print(hasil);
  
  for (var i = 0; i < hasil['products'].length; i++) {
    print("================================");
    print('${hasil['products']}');
  }

}
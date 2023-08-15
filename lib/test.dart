// // ignore_for_file: avoid_print, prefer_const_constructors
// import 'dart:io';

// import 'package:flutter/material.dart';

// import "package:flutter/material.dart";
// import 'dart:convert' as convert;

// import 'package:http/http.dart' as http;

// main() {
//   runApp(OpenAIProj());
// }

// class OpenAIProj extends StatefulWidget {
//   const OpenAIProj({super.key});
//   @override
//   State<OpenAIProj> createState() => _OpenAIProjState();
// }

// class _OpenAIProjState extends State<OpenAIProj> {
//   @override
//   var image_url = "";
//   var user_input = "";
//   var response;
//   var showloading=false;
//   final GlobalKey<ScaffoldMessengerState>scaffold_key= GlobalKey();
//   Widget build(BuildContext context) {
//     final snackBar = SnackBar(
//             content: const Text('Hi, I am a SnackBar!'),
//             backgroundColor: (Colors.black12),
//             action: SnackBarAction(
//               label: 'dismiss',
//               onPressed: () {
//               },
//             ),
//           );
//     return MaterialApp(
//       scaffoldMessengerKey:scaffold_key,
//       home: Scaffold( 
//         appBar: AppBar(
//           title: const Text("OpenAI Proj"),
//         ),
//         body: ListView(
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             Padding(
//               padding: EdgeInsets.all(18.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: "Enter The text to create Image from AI"),
//                 onSubmitted: (value) {
//                   setState(() {
//                     user_input = value;
//                   });
//                 },
//               ),
//             ),
//             UnconstrainedBox(
//               child: ElevatedButton(
//                 onPressed: () async {
//                   final ScaffoldMessengerState? scaffold =scaffold_key.currentState;
//                   scaffold?.showSnackBar(snackBar);
//                   var url = Uri.http('15.206.66.176', '/cgi-bin/app.py/',
//                       {'user_input': '$user_input'});
//                   print(url);
//                   setState(() {
//                     showloading=true;
//                   });
//                   try{
//                   response = await http.get(url);
//                   if (response.statusCode == 200) {
//                     print("success");
//                     print(response.body);
//                     setState(() {
//                       image_url = response.body;
//                     });
//                   } else {
//                     print("failure");
//                   }
//                   }
//                   on SocketException catch(err){
//                     print("errrorrrrrrrrrrrrrrrrr");
//                     print(err);
//                     setState(() {
//                       showloading=false;
//                       SnackBar(content: Text("D"));
//                     });
//                   }
//                   print(response);
//                 },
//                 child: const Text("Generate Image"),
                
//               ),
//             ),
//             if (image_url != "")
//               Image.network(image_url.trimRight(),
//                   loadingBuilder: ((context, child, loadingProgress) {
//                 if (loadingProgress == null) {
//                   return child;
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               })),
//             if(image_url=="" && showloading)
//             Center(child: CircularProgressIndicator()),
//           ],
//         ),
//       ),
//     );
//   }
  
// }

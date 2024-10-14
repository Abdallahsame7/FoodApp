// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ImagePickerScreen(),
//   ));
// }

// class ImagePickerScreen extends StatefulWidget {
//   @override
//   _ImagePickerScreenState createState() => _ImagePickerScreenState();
// }

// class _ImagePickerScreenState extends State<ImagePickerScreen> {
//   File? _selectedImage;

//   Future<void> _requestPermission() async {
//     PermissionStatus status = await Permission.photos.request();

//     if (status.isGranted) {
//       _pickImage();
//     } else if (status.isDenied || status.isPermanentlyDenied) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Permission denied. Unable to access photos.')),
//       );
//     }
//   }

//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile =  await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _selectedImage = File(pickedFile.path);
//       });
//       // Navigate to the second screen with the selected image
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ImageDisplayScreen(image: _selectedImage!),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Picker with Permission')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _requestPermission,
//           child: const Text('Pick an Image'),
//         ),
//       ),
//     );
//   }
// }

// class ImageDisplayScreen extends StatelessWidget {
//   final File image;

//   const ImageDisplayScreen({Key? key, required this.image}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Selected Image')),
//       body: Center(
//         child: Image.file(
//           image,
//           width: 300,
//           height: 300,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

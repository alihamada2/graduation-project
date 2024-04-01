import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddImageFromCameraAndStorage extends StatefulWidget {
  const AddImageFromCameraAndStorage({super.key});

  @override
  State<AddImageFromCameraAndStorage> createState() =>
      _AddImageFromCameraAndStorageState();
}

class _AddImageFromCameraAndStorageState
    extends State<AddImageFromCameraAndStorage> {
  Uint8List? _image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.22),
        borderRadius: BorderRadius.circular(45.r),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              color: Colors.grey.withOpacity(0.22),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _image != null ? Image.memory(_image!) : Container()
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  showImagePickerOption(context);
                },
                icon: const Icon(
                  Icons.add_a_photo,
                  color: Colors.black,
                  size: 28,
                ))
          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Padding(
            padding: EdgeInsets.all(18.0.h),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.5,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                  //      getImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  // Future getImageFromCamera() async {
  //   final returnImage =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (returnImage == null) return;
  //   setState(() {
  //     selectedImage = File(returnImage.path);
  //     _image = File(returnImage.path).readAsBytesSync();
  //   });
  // }
}

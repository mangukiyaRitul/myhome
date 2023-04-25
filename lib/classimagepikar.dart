import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:rive/rive.dart';

Future<List<XFile?>?> camera () async {

  ImagePicker picker = ImagePicker();
try{

 List<XFile?>photo = await picker.pickMultiImage();
  if(photo!=null)
  {
    // File file = File(photo);
    print("path$photo");
    return photo;
  }
  else
  {
    return null;
  }
}catch(a){
    print("ERROR");
    return null;
}
}
Future<File?> photo () async {

  ImagePicker picker = ImagePicker();
  try{
        XFile? photo = await picker.pickImage(
         source: ImageSource.gallery,
    );
        if(photo!=null)
    {
      File file = File(photo!.path);
      return file;
    }
    else
    {
      return null;
    }
  }catch(a){
    print("ERROR");
    return null;
  }

}

// class RiveUtils {
//
//   static StateMachineController  (Artboard,artboard){
//     StateMachineController ? controller =
//   }
//
// }
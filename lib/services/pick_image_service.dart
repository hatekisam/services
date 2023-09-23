import 'package:image_picker/image_picker.dart';

class PickImageService {
  pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _xfile = await _imagePicker.pickImage(source: source);
    if (_xfile != null) {
      return await _xfile.readAsBytes();
    }
    print("No Images Selected");
  }
}

// ProxyImage class that controls access to the RealImage
import 'image_viewer.dart';

class ProxyImage implements ImageViewer {
  final String filename;
  RealImage? _realImage;

  ProxyImage(this.filename);

  @override
  void display() {
    if (_realImage == null) {
      _realImage = RealImage(filename); // Load the RealImage only when needed
    }
    _realImage!.display();
  }
}

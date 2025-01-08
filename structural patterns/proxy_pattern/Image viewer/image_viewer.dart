// Define an abstract class (interface) for the image
abstract class ImageViewer {
  void display();
}

// RealImage class that loads and displays the image
class RealImage implements ImageViewer {
  final String filename;

  RealImage(this.filename) {
    _loadFromDisk(); // Load the image when the RealImage is created
  }

  void _loadFromDisk() {
    print('Loading image from disk: $filename');
  }

  @override
  void display() {
    print('Displaying image: $filename');
  }
}


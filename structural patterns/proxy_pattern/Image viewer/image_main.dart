// Client code
import 'image_proxy.dart';
import 'image_viewer.dart';

void main() {
  // Assume the user is browsing the gallery
  List<ImageViewer> images = [
    ProxyImage('image1.jpg'),
    ProxyImage('image2.jpg'),
    ProxyImage('image3.jpg'),
  ];

  // User clicks on the first image to view it
  images[0].display();

  // User clicks on the second image to view it
  images[1].display();
}

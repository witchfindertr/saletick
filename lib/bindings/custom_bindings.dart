import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';



// This customBindings injects our controllers and other things our app needs when it starts to run
// You can either extend or implement Bindings from the Gex Package
class CustomAppBindings extends Bindings{

  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    // TODO: firebase storage to be injected here
    Get.put(ProductController());
  }

}
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/SeeAllItems.dart';

abstract class SeeAllitemsController extends GetxController {
  seeAllitems();
  intialData();
}

class SeeAllitemsControllerImp extends SeeAllitemsController {
  SeeAllitems seeAllitem = SeeAllitems(Get.find());
  List data = [];
  Myservices myservices = Get.find();
  late StatusRequest statusRequest = StatusRequest.loading;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  seeAllitems() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await seeAllitem.getData(myservices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        update();
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
        update();
      }
    }
  }

  @override
  intialData() async {
    await seeAllitems();
  }
}

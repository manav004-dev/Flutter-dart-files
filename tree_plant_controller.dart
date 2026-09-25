import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnv/api/api_services.dart';
import 'package:mnv/tree/tree_plant_model.dart';

class TreeController extends GetxController {
  final ApiServices api = ApiServices();

  RxBool isLoading = false.obs;
  RxList<TreePlantModel> treeDataList = <TreePlantModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    TreeCont();
  }

  Future<void> TreeCont() async {
    try {
      isLoading.value = true;

      final respo = await api.Tree();

      if (respo.responseCode.toString() == "1") {
        treeDataList.value = respo.treePlant ?? [];
        isLoading.value = false;
      } else {
        isLoading.value = false;
        Get.snackbar(
          "Error",
          respo.message.toString(),
          backgroundColor: Colors.red,

          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        "Exception",
        e.toString().replaceFirst('Exception: ', ''),
        backgroundColor: Colors.red,
      );
    }
  }
}

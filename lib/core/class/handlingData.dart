import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/constant/imageApp.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(ImageApp.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: Lottie.asset(ImageApp.disconnect,
                          width: 250, height: 250)),
                ],
              )
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(ImageApp.error404,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Center(
                              child: Lottie.asset(ImageApp.noData,
                                  width: 250, height: 250)),
                        ],
                      )
                    : widget;
  }
}

class HandlingRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(ImageApp.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child:
                    Lottie.asset(ImageApp.disconnect, width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(ImageApp.error404,
                        width: 250, height: 250))
                : widget;
  }
}

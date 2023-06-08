import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  var slider = 1.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(197, 255, 192, 100),
                    Color.fromRGBO(254, 229, 229, 100),
                  ])),
              child: FlutterSlider(
                rangeSlider: false,
                values: [slider],
                handler: FlutterSliderHandler(
                    decoration: const BoxDecoration(),
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                        border: Border.all(color: Colors.deepOrange, width: 1),
                      ),
                      child: Text(
                        slider.round().toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    )),
                handlerWidth: 50,
                handlerHeight: 50,
                touchSize: 20,
                tooltip: FlutterSliderTooltip(
                    direction: FlutterSliderTooltipDirection.right,
                    alwaysShowTooltip: false,
                    disabled: true,
                    boxStyle: const FlutterSliderTooltipBox(
                        decoration: BoxDecoration(
                      color: Colors.transparent,
                    ))),
                hatchMark: FlutterSliderHatchMark(
                    labels: [
                      FlutterSliderHatchMarkLabel(
                          percent: 0, label: const Text('1')),
                      FlutterSliderHatchMarkLabel(
                          percent: 25, label: const Text('2')),
                      FlutterSliderHatchMarkLabel(
                          percent: 50, label: const Text('3')),
                      FlutterSliderHatchMarkLabel(
                          percent: 75, label: const Text('4')),
                      FlutterSliderHatchMarkLabel(
                          percent: 100, label: const Text('5')),
                    ],
                    smallLine: const FlutterSliderSizedBox(height: 1, width: 1),
                    bigLine: const FlutterSliderSizedBox(height: 1, width: 1)),
                trackBar: const FlutterSliderTrackBar(
                    activeTrackBarHeight: 50,
                    inactiveTrackBarHeight: 50,
                    inactiveDisabledTrackBarColor: Colors.transparent,
                    activeDisabledTrackBarColor: Colors.transparent,
                    inactiveTrackBar: BoxDecoration(color: Colors.transparent),
                    activeTrackBar: BoxDecoration(color: Colors.transparent)),
                decoration: const BoxDecoration(color: Colors.transparent),
                min: 1,
                max: 5,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  setState(() {
                    slider = lowerValue;
                  });
                },
                onDragCompleted: (handlerIndex, lowerValue, upperValue) {
                  setState(() {
                    slider = lowerValue;
                  });
                },
              ),
            ),
          )),
    );
  }
}

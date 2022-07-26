import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weatherapp/app/data/models/weathermode/main.dart';
import 'package:weatherapp/app/data/models/weathermode/weathermode.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: GetBuilder<HomeController>(
          builder: ((controller) {
            return ListView(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      // color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1592210454359-9043f067919b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2VhdGhlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child: AppBar(
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            leading: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Container(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 100.0, left: 20, right: 20),
                          // child: TextField(
                          //   textInputAction: TextInputAction.search,
                          //   decoration: const InputDecoration(
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //           color: Color.fromARGB(255, 250, 248, 248),
                          //           width: 2.0),
                          //     ),
                          //     // enabledBorder: OutlineInputBorder(
                          //     //   borderSide:
                          //     //       BorderSide(color: Colors.red, width: 5.0),
                          //     // ),

                          //     hintText: 'Enter places',
                          //   ),

                          // ),
                          child: TextField(
                            onChanged: (value) {},
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                hintText: "Enter Places",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 298.0),
                          child: Align(
                            child: SizedBox(
                              height: 10,
                              width: 10,
                              child: OverflowBox(
                                minWidth: 0.0,
                                maxWidth: MediaQuery.of(context).size.width,
                                minHeight: 0.0,
                                maxHeight:
                                    MediaQuery.of(context).size.height / 4,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Card(
                                        color: Colors.white,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 20, right: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      (controller.currentweatherData !=
                                                              null)
                                                          ? "${controller.currentweatherData.name}"
                                                              .toUpperCase()
                                                          : "",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption
                                                          ?.copyWith(
                                                            color: Colors.grey,
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(DateFormat()
                                                        .add_MMMEd()
                                                        .format(
                                                            DateTime.now())),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 3,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 50.0),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          (controller.currentweatherData
                                                                      .weather !=
                                                                  null)
                                                              ? '${controller.currentweatherData.weather![0].description}'
                                                              : "",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                            (controller.currentweatherData
                                                                        .main !=
                                                                    null)
                                                                ? ' ${(controller.currentweatherData.main!.temp! - 274.15).round().toString()}\u2103'
                                                                : "",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline2!
                                                                .copyWith(
                                                                    color: Colors
                                                                        .grey)),
                                                        Text(
                                                          (controller.currentweatherData
                                                                      .main !=
                                                                  null)
                                                              ? 'min: ${(controller.currentweatherData.main!.tempMin! - 273.15).round().toString()}\u2103 / max: ${(controller.currentweatherData.main!.tempMax! - 273.15).round().toString()}\u2103'
                                                              : '',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .caption!
                                                                  .copyWith(
                                                                    color: Colors
                                                                        .black45,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontFamily:
                                                                        'flutterfonts',
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        right: 20),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                image: NetworkImage(
                                                                    "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png"),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              (controller.currentweatherData
                                                                          .wind !=
                                                                      null)
                                                                  ? 'wind ${controller.currentweatherData.wind!.speed} m/s'
                                                                  : '',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .caption!
                                                                  .copyWith(
                                                                    color: Colors
                                                                        .black45,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontFamily:
                                                                        'flutterfonts',
                                                                  ),
                                                            ),
                                                          )
                                                        ])),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                middlesection(),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class middlesection extends StatelessWidget {
  middlesection({
    Key? key,
  }) : super(key: key);
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 138.0),
              child: Container(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'other city'.toUpperCase(),
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'flutterfonts',
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                          ),
                          Container(
                            height: 150,
                            child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  controller.weatherList.isNotEmpty
                                      ? controller.data =
                                          controller.weatherList[index]
                                      : null;
                                  return Container(
                                    width: 140,
                                    height: 150,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              (controller.data != null)
                                                  ? '${controller.data.name}'
                                                  : '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black45,
                                                    fontFamily: 'flutterfonts',
                                                  ),
                                            ),
                                            Text(
                                              (controller.data != null)
                                                  ? '${(controller.data.main!.temp! - 273.15).round().toString()}\u2103'
                                                  : '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black45,
                                                    fontFamily: 'flutterfonts',
                                                  ),
                                            ),
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              (controller.data != null)
                                                  ? '${controller.data.weather![0].description}'
                                                  : '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                    color: Colors.black45,
                                                    fontFamily: 'flutterfonts',
                                                    fontSize: 14,
                                                  ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Divider();
                                },
                                itemCount: controller.weatherList.length),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'forcast next 5 days'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45,
                                      ),
                                ),
                                Icon(
                                  Icons.next_plan_outlined,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
                              child: GetBuilder<HomeController>(
                                  builder: (controller) {
                                return SfCartesianChart(
                                  primaryXAxis: CategoryAxis(),
                                  series: <ChartSeries<Main, String>>[
                                    SplineSeries<Main, String>(
                                      dataSource: controller.fiveDaysData,
                                      xValueMapper: (Main f, _) =>
                                          f.pressure.toString(),
                                      yValueMapper: (Main f, _) => f.temp,
                                    ),
                                  ],
                                );
                              }))
                        ])),
              ),
            ),
          ],
        ));
  }
}

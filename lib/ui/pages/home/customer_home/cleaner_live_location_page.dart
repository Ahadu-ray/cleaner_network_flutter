import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/cleaner_detail.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/map/custom_map.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/bottom_draggable.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CleanerLiveLocationPage extends StatefulWidget {
  CleanerLiveLocationPage({Key? key}) : super(key: key);

  @override
  State<CleanerLiveLocationPage> createState() =>
      _CleanerLiveLocationPageState();
}

class _CleanerLiveLocationPageState extends State<CleanerLiveLocationPage> {
  bool showDetail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Cleaner Live Location",
        ),
        withSpace: 0,
        child: Stack(
          children: [
            CustomMap(),
            BottomDraggable(initialChildSize: 0.5, minChildSize: 0.3, slivers: [
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29.0),
                child: showDetail
                    ? Column(
                        children: [
                          SizedBox(
                            height: 26,
                          ),
                          Container(
                              width: 139,
                              margin: EdgeInsets.only(top: 20),
                              child: StatusContainer(
                                status: "Copmleted",
                                gap: 16.5,
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          CleanerDetail(),
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 26,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      "Cleaner Location",
                                      style: AppTheme.fieldLabelStyle,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      decoration: AppTheme.fieldDecoration2(),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 18),
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Text(
                                        "Loreipsium",
                                        style: AppTheme.fieldLabelStyle
                                            .copyWith(color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 42,
                                    ),
                                    CustomText(
                                      "Cleaner Destination",
                                      style: AppTheme.fieldLabelStyle,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      decoration: AppTheme.fieldDecoration2(),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 18),
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Text(
                                        "Loreipsium",
                                        style: AppTheme.fieldLabelStyle
                                            .copyWith(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    blueLocation,
                                    width: 33,
                                  ),
                                  Image.asset(
                                    vDash,
                                    height: 75,
                                  ),
                                  Image.asset(
                                    destination,
                                    width: 33,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: CustomButton(
                              title: "View Direction and Time",
                              onPressed: () {
                                setState(() {
                                  showDetail = true;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 27,
                          )
                        ],
                      ),
              )),
            ])
          ],
        ),
      ),
    );
  }
}

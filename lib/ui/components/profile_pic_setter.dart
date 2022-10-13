import 'dart:io';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/select_picture_source.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicSetter extends StatefulWidget {
  ProfilePicSetter({Key? key, this.image, this.onSelected}) : super(key: key);
  String? image;
  ValueSetter<File>? onSelected;

  @override
  State<ProfilePicSetter> createState() => _ProfilePicSetterState();
}

class _ProfilePicSetterState extends State<ProfilePicSetter> {
  File? selected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: AppTheme.mainGreen)),
          padding: EdgeInsets.all(15),
          width: 100,
          height: 100,
          child: selected != null
              ? Image.file(
                  selected!,
                )
              : widget.image != null
                  ? Image.asset(
                      widget.image!,
                      width: 100,
                      height: 100,
                    )
                  : Icon(
                      IconlyBold.profile,
                      color: AppTheme.mainGreen,
                      size: 70,
                    ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 6,
                    color: Color.fromRGBO(0, 0, 0, 0.25))
              ]),
          child: IconButton(
            iconSize: 25,
            icon: Icon(
              IconlyBold.camera,
              color: AppTheme.mainGreen,
            ),
            onPressed: () {
              Get.bottomSheet(SelectPictureSource(onSelect: (source) async {
                await ImagePicker()
                    .pickImage(
                      source: source,
                      maxWidth: 1800,
                      maxHeight: 1800,
                    )
                    .then((value) => {
                          Get.back(),
                          if (value != null)
                            {
                              setState(
                                () {
                                  selected = File(value.path);
                                },
                              ),
                              widget.onSelected ?? (selected!)
                            }
                        });
              }));
            },
          ),
        )
      ],
    );
  }
}

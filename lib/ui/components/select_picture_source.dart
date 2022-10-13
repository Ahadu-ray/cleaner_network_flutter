import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectPictureSource extends StatefulWidget {
  SelectPictureSource({Key? key, required this.onSelect}) : super(key: key);
  ValueSetter<ImageSource> onSelect;

  @override
  State<SelectPictureSource> createState() => _SelectPictureSourceState();
}

class _SelectPictureSourceState extends State<SelectPictureSource> {
  ImageSource? selected;

  List<ImageSource> sources = [ImageSource.camera, ImageSource.gallery];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 30,
                color: Color.fromRGBO(0, 0, 0, 0.16))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      padding: EdgeInsets.symmetric(vertical: 29, horizontal: 15),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: sources.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      setState(() {
                        selected = sources[index];
                      });
                      widget.onSelect(selected!);
                    },
                    child: Container(
                      height: 53,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                      decoration: AppTheme.fieldDecoration2(),
                      margin:
                          EdgeInsets.symmetric(vertical: 8.5, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              groupValue: selected,
                              activeColor: AppTheme.mainGreen,
                              value: sources[index],
                              onChanged: (v) {}),
                          CustomText(
                            sources[index].name.toUpperCase(),
                            style: AppTheme.normalStyle()
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          SizedBox()
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

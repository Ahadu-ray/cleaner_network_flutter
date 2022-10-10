import 'package:flutter/material.dart';

/// A draggable scrollable sheet with a handle.
class BottomDraggable extends StatelessWidget {
  /// A sliver list of children to be placed as the body of the scrollable sheet.
  final List<Widget> slivers;

  /// The maximum fractional value of the parent container's height to use when
  /// displaying the
  ///
  /// The default value is `1.0`.
  final double maxChildSize;

  /// The initial fractional value of the parent container's height to use when
  /// displaying the
  ///
  /// The default value is `0.09`.
  final double initialChildSize;

  /// The minimum fractional value of the parent container's height to use when
  /// displaying the
  ///
  /// The default value is `0.08`.
  /// @TODO make it default to the size of the handle
  final double minChildSize;

  /// Creates a widget that can be dragged and scrolled in a single gesture.
  ///
  /// places a sticky handle on top and takes as content a list of slivers
  BottomDraggable({
    Key? key,
    this.slivers = const <Widget>[],
    this.minChildSize = 0.05,
    this.maxChildSize = 0.6,
    this.initialChildSize = 0.06,
  }) : super(key: key);
  double handleVisibility = 1, expandVisibility = 0, expandIconCutOff = 0.23;
  double normalize(double x) => x < 0
      ? 0
      : x > 1
          ? 1
          : x;

  @override
  Widget build(BuildContext context) {
    if (initialChildSize < expandIconCutOff) {
      expandVisibility = 1;
      handleVisibility = 0;
    }
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notifications) {
        expandVisibility =
            normalize((expandIconCutOff - notifications.extent) / (0.03));
        handleVisibility =
            normalize((notifications.extent - expandIconCutOff) / (0.03));
        return true;
      },
      child: DraggableScrollableSheet(
        initialChildSize: initialChildSize,
        minChildSize: minChildSize,
        maxChildSize: maxChildSize,
        builder: (context, scrollController) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(33),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.24),
                  spreadRadius: 0,
                  blurRadius: 33,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: CustomScrollView(
              controller: scrollController,
              physics: null,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  collapsedHeight: 10,
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: expandVisibility,
                        child: Icon(
                          Icons.expand_less,
                          color: Colors.black,
                        ),
                      ),
                      Opacity(
                          opacity: handleVisibility,
                          child: Container(
                            height: 8,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.5),
                                color: Color(0xFFF2F2F2)),
                          )),
                    ],
                  ),
                  toolbarHeight: 10,
                  backgroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                ),
                for (Widget sliver in slivers) sliver,
              ],
            ),
          );
        },
      ),
    );
  }
}

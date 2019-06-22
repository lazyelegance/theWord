import 'package:flutter/material.dart';

import 'colors.dart';

class FrontLayer extends StatelessWidget {
  const FrontLayer({Key key, this.child, this.onTap, this.onPressNext})
      : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final VoidCallback onPressNext;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(23.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: kSurfaceWhite,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(23.0)),
              ),
              width: 40.0,
              alignment: AlignmentDirectional.centerStart,
            ),
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}

// class FrontLayer extends StatelessWidget {
//   const FrontLayer({Key key, this.child, this.onTap, this.onPressNext})
//       : super(key: key);

//   final Widget child;
//   final VoidCallback onTap;
//   final VoidCallback onPressNext;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 16.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0)),
//       ),
//       child: Column(
//         children: <Widget>[
//           GestureDetector(
//             behavior: HitTestBehavior.opaque,
//             onTap: onTap,
//             child: Container(
//               color: kSurfaceWhite,
//               height: 48.0,
//               alignment: AlignmentDirectional.centerStart,
//             ),
//           ),
//           Expanded(
//             child: child,
//           ),
//         ],
//         // bottomNavigationBar: BottomAppBar(
//         //   color: kSurfaceWhite,
//         //   child: Container(
//         //     height: 10.0,
//         //     color: kSurfaceWhite,
//         //   ),
//         // ),
//         // floatingActionButton: FloatingActionButton(
//         //   child: Icon(Icons.keyboard_arrow_right),
//         //   onPressed: onPressNext,
//         //   backgroundColor: kSurfaceWhite,
//         //   foregroundColor: kPrimaryColor,
//         // ),
//         // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

final ssBottomSheet = SSBottomSheet();

class SSBottomSheet {
  /// content flexible height
  Future<dynamic> show(
    BuildContext context, {
    Widget? child,
    Color? barrierColor,
    double borderRadius = 16,
  }) async {
    return showModalBottomSheet(
      context: context,
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.7),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 8,
          children: [
            Container(
              alignment: Alignment.center,
              height: 4,
              width: 32,
              decoration: BoxDecoration(
                color: const Color(0xffD2D1D1),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
              ),
              child: child,
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainFilledButton extends StatelessWidget {
  const MainFilledButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          fixedSize: Size(
              Device.screenType == ScreenType.tablet &&
                      Device.orientation == Orientation.landscape
                  ? MediaQuery.sizeOf(context).width * 0.60
                  : Device.screenType == ScreenType.mobile
                      ? MediaQuery.sizeOf(context).width * 0.85
                      : MediaQuery.sizeOf(context).width * 0.90,
              55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

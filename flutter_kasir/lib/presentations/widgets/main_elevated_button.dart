import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(
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
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'constants.dart';

const EdgeInsets _defaultInsetPadding =
    EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0);

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    this.backgroundColor,
    this.elevation,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
    this.insetPadding = _defaultInsetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
    this.child,
  })  : assert(clipBehavior != null),
        super(key: key);

  final Color? backgroundColor;

  final double? elevation;

  final Duration insetAnimationDuration;

  final Curve insetAnimationCurve;

  final EdgeInsets? insetPadding;

  final Clip clipBehavior;

  final ShapeBorder? shape;

  final AlignmentGeometry? alignment;

  final Widget? child;

  static const RoundedRectangleBorder _defaultDialogShape =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)));
  static const double _defaultElevation = 24.0;

  @override
  Widget build(BuildContext context) {
    var dialogNeumorphicEffect = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      color: Constants.bgColor,
      depth: 10.0,
      intensity: 0.65,
      shadowDarkColor: Constants.darkShadow,
      shadowLightColor: Constants.lightShadow,
      shadowDarkColorEmboss: Constants.darkShadow,
      shadowLightColorEmboss: Constants.lightShadow,
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(15),
      ),
    );
    final DialogTheme dialogTheme = DialogTheme.of(context);
    final EdgeInsets effectivePadding =
        MediaQuery.of(context).viewInsets + (insetPadding ?? EdgeInsets.zero);
    return AnimatedPadding(
      padding: effectivePadding,
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Align(
          alignment: alignment ?? dialogTheme.alignment ?? Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 280.0),
            child: Neumorphic(
              style: dialogNeumorphicEffect,
              child: Material(
                shadowColor: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Constants.bgColor,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

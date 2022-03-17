import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/constants.dart';

class RevealTile extends StatefulWidget {
  final int index;
  const RevealTile({Key? key, this.index = 0}) : super(key: key);

  @override
  State<RevealTile> createState() => _RevealTileState();
}

class _RevealTileState extends State<RevealTile>
    with SingleTickerProviderStateMixin {
  final Duration _kExpand = Duration(milliseconds: 200);
  late Animation<double> _iconTurns;
  late Animation<double> _tileOpacity;
  late Animation<double> _sizeFactor;
  late Animation<Offset> _tileOffset;

  late AnimationController _controller;
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeOut);
  static final Animatable<double> _quarterTween =
      Tween<double>(begin: 0.0, end: 0.25);
  static final Animatable<double> _fullTween =
      Tween<double>(begin: 0.0, end: 1.0);
  static final Animatable<Offset> _offsetTween =
      Tween<Offset>(begin: Offset(0, -0.2), end: Offset(0, 0));
  // static final Animatable<double> _sizeTween =
  //     Tween<double>(begin: 0, end: );

  bool _isExpanded = false;
  bool _animationCompleted = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this)
      ..addStatusListener((status) {
        print('status : $status');
        if (status == AnimationStatus.completed) {
          setState(() {
            _animationCompleted = true;
          });
        } else {
          setState(() => _animationCompleted = false);
        }
      });
    _iconTurns = _controller.drive(_quarterTween.chain(_easeInTween));
    _sizeFactor = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _tileOpacity = _controller.drive(_fullTween.chain(_easeInTween))
      // _sizeFactor = _controller.drive(_fullTween.chain(_easeInTween));
      ..addStatusListener((status) {
        if (status == AnimationStatus.forward ||
            status == AnimationStatus.completed) {
          if (_tileOpacity.value > 0.8) {
            setState(() {});
          }
        } else {
          if (_tileOpacity.value < 0.2) {
            setState(() {});
          }
        }
      });
    _tileOffset = _controller.drive(_offsetTween.chain(_easeInTween));
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
        // .then<void>((void value) {
        //   if (!mounted) return;
        //   setState(() {});
        // });
      }
      // PageStorage.of(context)?.writeState(context, _isExpanded);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: _isExpanded
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )
              : BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: _isExpanded
                  ? null
                  : const Border(
                      bottom: BorderSide(
                        color: Constants.stackTileColor,
                        width: 11,
                      ),
                    ),
            ),
            child: ListTile(
              tileColor: Constants.tileBgColor,
              contentPadding: const EdgeInsets.all(8.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Constants.quesAnd.keys.elementAt(widget.index),
                  style: GoogleFonts.cabin(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: _handleTap,
              trailing: RotationTransition(
                turns: _iconTurns,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // if (_isExpanded)

        FadeTransition(
          opacity: _tileOpacity,
          child: AnimatedSize(
            duration: _kExpand,
            child: SizedBox(
              height: !_isExpanded ? 0 : null,
              // color: _isExpanded ? Colors.transparent : Constants.expandedTileColor,
              child: SlideTransition(
                position: _tileOffset,
                child: ListTile(
                  tileColor: Constants.expandedTileColor
                      .withOpacity(_tileOpacity.value),
                  // _animationCompleted
                  //     ? Constants.expandedTileColor
                  //     : Colors.transparent,
                  contentPadding: const EdgeInsets.all(8.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Constants.quesAnd.values.elementAt(widget.index),
                      style: GoogleFonts.cabin(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

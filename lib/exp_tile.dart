import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neurmorphism_faq/constants.dart';

class ExpTile extends StatefulWidget {
  const ExpTile({Key? key}) : super(key: key);

  @override
  State<ExpTile> createState() => _ExpTileState();
}

class _ExpTileState extends State<ExpTile> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  static final Animatable<double> _easeOutTween =
      CurveTween(curve: Curves.easeOut);
  static final Animatable<double> _quarterTween =
      Tween<double>(begin: 0.0, end: 0.25);
  final Duration _kExpand = const Duration(milliseconds: 200);
  late Animation<double> _iconTurns;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _iconTurns = _controller.drive(_quarterTween.chain(_easeOutTween));
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
    return ExpansionPanelList(
      expandedHeaderPadding: const EdgeInsets.all(10.0),
      children: List.generate(
        Constants.quesAnd.length,
        (index) => ExpansionPanel(
          headerBuilder: (context, _) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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
                      Constants.quesAnd.keys.elementAt(index),
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
          ),
          body: ListTile(
            tileColor: Constants.expandedTileColor,
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
                Constants.quesAnd.values.elementAt(index),
                style: GoogleFonts.cabin(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

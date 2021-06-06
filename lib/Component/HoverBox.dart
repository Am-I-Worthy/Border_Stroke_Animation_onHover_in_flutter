import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HoverBox extends StatefulWidget {
  final double? height;
  final double? width;
  final Duration? duration;
  final double? thickness;
  final Widget? child;
  final Color? bordercolor;
  final Curve? curve;

  HoverBox(
      {this.bordercolor,
      this.duration,
      this.height,
      this.child,
      this.thickness,
      this.curve,
      this.width});

  @override
  _HoverBoxState createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  late double widthTopBottom;
  late double heightRightLeft = 0;
  @override
  void initState() {
    super.initState();
    widthTopBottom = widget.width!;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          widthTopBottom = 0;
          heightRightLeft = widget.height!;
        });
      },
      onExit: (value) {
        setState(() {
          widthTopBottom = widget.width!;
          heightRightLeft = 0;
        });
      },
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: AnimatedContainer(
              curve: widget.curve!,
              duration: widget.duration!,
              height: heightRightLeft,
              width: widget.thickness,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              height: heightRightLeft,
              width: widget.thickness,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: AnimatedContainer(
              duration: widget.duration!,
              height: widget.thickness,
              width: widthTopBottom,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: AnimatedContainer(
              duration: widget.duration!,
              height: widget.thickness,
              width: widthTopBottom,
              color: Colors.black,
            ),
          ),
          Container(
            height: widget.height,
            width: widget.width,
            child: Center(
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}

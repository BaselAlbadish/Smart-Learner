import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_learner/core/welcome_screen/Animations/scale_animated_text.dart';
import 'package:smart_learner/core/welcome_screen/Animations/typer_animated_text.dart';
import '../main_constants.dart';
import 'Animations/colorize_animated_text.dart';

class WelcomeScreen extends StatefulWidget {
  Widget? _widget;

  Color? _backgroundColor = Colors.white;
  PageRouteTransition? _pageRouteTransition;
  String? _text;
  TextType? _textType;
  TextStyle? _textStyle;
  String? _text2;
  TextType? _textType2;
  TextStyle? _textStyle2;
  int? _duration = 3000;
  int? _speed = 100;
  Color? backgroundColor = Colors.white;
  List<Color>? _colors;
  final double? _defaultTextFontSize = 20;

  WelcomeScreen(
      {Key? key,
        required Widget? navigateRoute,
        int? duration,
        TextStyle? textStyle,
        TextStyle? textStyle2,
        int? speed,
        PageRouteTransition? pageRouteTransition,
        List<Color>? colors,
        TextType? textType,
        TextType? textType2,
        Color? backgroundColor,
        String? text2,
        String? text})
      : super(key: key) {
    _widget = navigateRoute;
    _speed = speed;
    _duration = duration;
    _pageRouteTransition = pageRouteTransition;
    _colors = colors;
    _text = text;
    _text2 = text2;
    _textStyle2 = textStyle2;
    _textStyle = textStyle;
    _backgroundColor = backgroundColor;
    _textType2 = TextType.values.firstWhere((f) => f == textType2, orElse: () => TextType.normalText);
    _textType = TextType.values.firstWhere((f) => f == textType, orElse: () => TextType.normalText);
  }

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    if (widget._duration == null) {
      widget._duration = 3000;
    } else if (widget._duration! < 1000) {
      widget._duration = 3000;
    }
    if (widget._textType == TextType.typerAnimatedText) {
      _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
      _animation =
          Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _animationController!, curve: Curves.easeInCirc));
      _animationController!.forward();
    } else {
      _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
      _animation =
          Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _animationController!, curve: Curves.easeInCirc));
      _animationController!.forward();
    }

    Future.delayed(Duration(milliseconds: widget._duration!)).then((value) {
      if (widget._pageRouteTransition == PageRouteTransition.cupertinoPageRoute) {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (BuildContext context) => widget._widget!));
      } else if (widget._pageRouteTransition == PageRouteTransition.slideTransition) {
        Navigator.of(context).pushReplacement(_tweenAnimationPageRoute());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget._backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FadeTransition(
          opacity: _animation!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              getTextWidget2(),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: getTextWidget(),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTextWidget() {
    if (widget._text != null) {
      //print("Not Blank");
      switch (widget._textType) {
        case TextType.colorizeAnimationText:
          return ColorizeAnimatedText(
            text: widget._text,
            speed: const Duration(milliseconds: 1000),
            textStyle:
            (widget._textStyle != null) ? widget._textStyle : TextStyle(fontSize: widget._defaultTextFontSize),
            colors: (widget._colors != null)
                ? widget._colors!
                : [
              Colors.blue,
              Colors.black,
              Colors.blue,
              Colors.black,
            ],
          );
        case TextType.normalText:
          return Text(
            widget._text!,
            style: (widget._textStyle != null) ? widget._textStyle : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        case TextType.typerAnimatedText:
          return TyperAnimatedText(
            text: widget._text,
            speed: (widget._speed == null) ? const Duration(milliseconds: 100) : Duration(milliseconds: widget._speed!),
            textStyle:
            (widget._textStyle != null) ? widget._textStyle : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        case TextType.scaleAnimatedText:
          return ScaleAnimatedText(
            text: widget._text,
            textStyle:
            (widget._textStyle != null) ? widget._textStyle : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        default:
          return Text(
            widget._text!,
            style: (widget._textStyle != null) ? widget._textStyle : TextStyle(fontSize: widget._defaultTextFontSize),
          );
      }
    } else {
      return const SizedBox(
        width: 1,
      );
    }
  }

  Widget getTextWidget2() {
    if (widget._text2 != null) {
      switch (widget._textType2) {
        case TextType.colorizeAnimationText:
          return ColorizeAnimatedText(
            text: widget._text2,
            speed: const Duration(milliseconds: 1000),
            textStyle:
            (widget._textStyle2 != null) ? widget._textStyle2 : TextStyle(fontSize: widget._defaultTextFontSize),
            colors: (widget._colors != null)
                ? widget._colors!
                : [
              Colors.blue,
              Colors.black,
              Colors.blue,
              Colors.black,
            ],
          );
        case TextType.normalText:
          return Text(
            widget._text2!,
            style: (widget._textStyle2 != null) ? widget._textStyle2 : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        case TextType.typerAnimatedText:
          return TyperAnimatedText(
            text: widget._text2,
            speed: (widget._speed == null) ? const Duration(milliseconds: 100) : Duration(milliseconds: widget._speed!),
            textStyle:
            (widget._textStyle2 != null) ? widget._textStyle2 : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        case TextType.scaleAnimatedText:
          return ScaleAnimatedText(
            text: widget._text2,
            textStyle:
            (widget._textStyle2 != null) ? widget._textStyle2 : TextStyle(fontSize: widget._defaultTextFontSize),
          );
        default:
          return Text(
            widget._text2!,
            style: (widget._textStyle2 != null) ? widget._textStyle2 : TextStyle(fontSize: widget._defaultTextFontSize),
          );
      }
    } else {
      return const SizedBox(
        width: 1,
      );
    }
  }

  Route _tweenAnimationPageRoute() {
    /// Tween Animation
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget._widget!,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

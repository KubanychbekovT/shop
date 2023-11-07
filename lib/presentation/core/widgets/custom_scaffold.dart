import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_back_button.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget body;
  final Widget? floatingActionButton;
  final bool isScrolling;
  final BottomNavigationBar? bottomNavigationBar;
  final AppBar? appBar;
  final bool? resizeToAvoidBottomInset;
  final Widget? bottomSheet;
  const CustomScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.padding,
    this.bottomNavigationBar,
    this.isScrolling = false,
    this.appBar,
    this.resizeToAvoidBottomInset, this.bottomSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:bottomSheet ,
      appBar: appBar != null
          ? AppBar(
          titleTextStyle:const TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 21),
          title:Text((appBar?.title as Text?)?.data??"") ,

          centerTitle: true,
          leading:  appBar?.leading ?? const CustomBackButton(isKeyboardStyle: false),
          actions: appBar?.actions,
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ))
          : null,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: NoGlowNoScrollbarScrollBehavior().copyWith(scrollbars: false),
        child: isScrolling
            ? SingleChildScrollView(
                child: body,
              )
            : body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}

class NoGlowNoScrollbarScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics();
  }
}

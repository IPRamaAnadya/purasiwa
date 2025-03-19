import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:purasiwa/shared/styles/colors.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key, this.appBar, this.body, this.backgroundColor});

  final AppBar? appBar;
  final Widget? body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: appBar,
      body: FooterView(
          children: [body ?? Container()],
          footer: Footer(
              padding: EdgeInsets.zero,
              backgroundColor: AppColors.primary,
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(LucideIcons.facebook,
                                  color: Colors.white),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(LucideIcons.instagram,
                                  color: Colors.white),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(LucideIcons.twitter,
                                  color: Colors.white),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(LucideIcons.youtube,
                                  color: Colors.white),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Develop with 🩵 by Ni Putu Mita Pramesti',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/tutorial/tutorial_view.dart';
import 'package:purasiwa/view/tutorial/tutorial_viewmodel.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: TutorialViewmodel(context), child: TutorialView());
  }
}
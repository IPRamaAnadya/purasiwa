import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:purasiwa/shared/widget/my_viewmodel.dart';

class NewsViewmodel extends MyViewmodel {
  NewsViewmodel(super.context);

  onItemTapped(BuildContext context, int index) {
    context.push('/news/$index');
  }
}

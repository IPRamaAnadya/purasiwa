import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:purasiwa/shared/styles/button_styles.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_button.dart';
import 'package:purasiwa/shared/widget/my_image.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';
import 'package:purasiwa/view/home/home_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/en/strings.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1569136143047-07c0fac16776?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          t.home.title,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        Text(
                          t.home.subtitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
                _buildTransparantAppbar(context)
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.home.about.description,
                    style: AppTextStyles.body,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Button(
                        child: Text(t.home.about.button),
                        onPressed: () {
                          context.push('/history');
                        }),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.home.events.title,
                            style: AppTextStyles.title,
                          ),
                          Text(
                            t.home.events.subtitle,
                            style: AppTextStyles.subtitle,
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Button(
                        style: AppButtonStyle.link,
                        child: Text(t.home.events.button),
                        onPressed: () {
                          context.push('/events');
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: AppColors.base100,
                  child: ListView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.push('/events/$index');
                        },
                        child: Container(
                          width: 160,
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 10,
                                    offset: Offset(0, 4))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: MyImage.network(
                                    'https://plus.unsplash.com/premium_photo-1689838027383-9dee197e38a3?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.base100,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(16),
                                      )),
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    '10\nJun',
                                    style: AppTextStyles.bodyBold
                                        .copyWith(fontSize: 10),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withAlpha(100),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Event Title',
                                          style: AppTextStyles.subtitleBold
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          'Event Subtitle',
                                          style: AppTextStyles.caption
                                              .copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),

            SizedBox(
              height: 24,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: MyImage.network(
                        'https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            t.home.map.title,
                            style: AppTextStyles.bodyBold
                                .copyWith(color: AppColors.base100),
                          ),
                          Button(
                              child: Text(t.home.map.button),
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    'https://maps.app.goo.gl/r7niGX5rzWCd4kCG7'));
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.home.partOfTemple.title,
                            style: AppTextStyles.title,
                          ),
                          Text(
                            t.home.partOfTemple.subtitle,
                            style: AppTextStyles.subtitle,
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Button(
                        style: AppButtonStyle.link,
                        child: Text(t.home.partOfTemple.button),
                        onPressed: () {
                          context.push('/shrine');
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: AppColors.base100,
                  child: ListView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 160,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                  offset: Offset(0, 4))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: MyImage.network(
                                  'https://plus.unsplash.com/premium_photo-1689838027383-9dee197e38a3?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                // make gradient
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5)
                                    ])),
                              ),
                              Center(
                                child: Text(
                                  "Dewi Parwati",
                                  style: AppTextStyles.titleBlack
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Button(
                                  child: Text(
                                    'Show Detail',
                                    style: AppTextStyles.captionBold
                                        .copyWith(color: AppColors.base100),
                                  ),
                                  style: AppButtonStyle.link,
                                  onPressed: () {
                                    context.push('/shrine/$index');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.home.news.title,
                                style: AppTextStyles.title,
                              ),
                              Text(
                                t.home.news.subtitle,
                                style: AppTextStyles.subtitle,
                              ),
                            ],
                          )),
                          SizedBox(
                            width: 8,
                          ),
                          Button(
                            style: AppButtonStyle.link,
                            child: Text(t.home.news.button),
                            onPressed: () {
                              context.push('/news');
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            ),
            // list of news
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => context.push('/news/$index'),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyImage.network(
                              'https://plus.unsplash.com/premium_photo-1661425505025-238c888750f7?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'News Title',
                                  style: AppTextStyles.titleBlack,
                                ),
                                Text(
                                  'News Description',
                                  style: AppTextStyles.body,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransparantAppbar(BuildContext context) {
    final read = context.read<HomeViewModel>();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            'ᬧᬸᬭᬰᬶᬯ',
            style: AppTextStyles.bodyBlack.copyWith(color: AppColors.neutral),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => read.onAppbarMenuTapped(context),
          )
        ],
      ),
    );
  }
}

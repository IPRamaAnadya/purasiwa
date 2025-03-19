import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_image.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';
import 'package:purasiwa/view/shrine/detail/shrine_detail_viewmodel.dart';

class ShrineDetailView extends StatelessWidget {
  const ShrineDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<ShrineDetailViewmodel>();
    return MyScaffold(
      appBar: AppBar(
        title: Text('Shrine Detail ${watch.detailID}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 4,
                  child: MyImage.network(
                      'https://plus.unsplash.com/premium_photo-1689838027383-9dee197e38a3?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      'Shrine Title',
                      style: AppTextStyles.h2Black
                          .copyWith(color: AppColors.neutral),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                '''
              Pura Siwa, located in Tabanan, Bali, is a temple dedicated to the Hindu deity Shiva (locally known as Siwa). Bali is predominantly Hindu, and its temple architecture and practices are deeply intertwined with the island's spiritual and cultural heritage.
            
              While historical records specific to Pura Siwa in Tabanan might not be extensively documented, the worship of Shiva in Bali has roots in ancient Hindu-Javanese traditions that spread to Bali during the Majapahit Empire's expansion in the 14th century. Shiva is one of the principal deities in Balinese Hinduism, often revered as part of the Trimurti (the trinity of Brahma, Vishnu, and Shiva).
            
              The presence of Pura Siwa in Tabanan reflects Bali’s broader Hindu heritage, where many temples are dedicated to specific deities, and the worship of Siwa/Siwa Pasupati (Shiva as the supreme god) is common. Temples in Bali, including Pura Siwa, typically serve as sacred spaces for offerings, religious ceremonies, and pilgrimages by local worshippers.
            
              If you're interested in visiting, Pura Siwa would be a beautiful example of Balinese temple architecture and culture, blending traditional artistry with deep religious significance.
              ''',
                style: AppTextStyles.body,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}

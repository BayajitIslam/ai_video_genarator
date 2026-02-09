import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/home/presentation/widgets/industry_card.dart';
import 'package:ai_video_genarator/features/home/presentation/widgets/my_drawer.dart';
import 'package:ai_video_genarator/features/home/presentation/widgets/welcome_bennar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => HomePage());

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //Drawer
      drawer: MyDrawer(),
      appBar: AppBar(
        //title logo
        title: SizedBox(
          height: 128,
          width: 128,
          child: Image.asset(AppImages.logo),
        ),
        //leading menu
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      body: BgGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(context.spacing24),
            child: Column(
              children: [
                // Wellcome Bennar
                const WelcomeBennar(),

                //Select Industry
                SizedBox(height: context.spacing12),

                //Select Industry Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Your Industry",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Choose the category that best fits your business. This helps us tailor your video style and messaging",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(fontSize: 14),
                    ),
                  ],
                ),

                //Industry Card
                Expanded(
                  child: ListView(
                    children: [
                      IndustryCard(
                        name: "Health & Fitness",
                        bgImage: AppImages.healthfitness,
                      ),

                      IndustryCard(
                        name: "Real estate & Local Services",
                        bgImage: AppImages.realestate,
                      ),

                      IndustryCard(
                        name: "Beauty, Fashion & Lifestyle",
                        bgImage: AppImages.beauty,
                      ),

                      IndustryCard(
                        name: "Business, Coaching & Personal Brands",
                        bgImage: AppImages.personalbrand,
                      ),

                      IndustryCard(
                        name: "E-commerce & Online Business",
                        bgImage: AppImages.onlinebusiness,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

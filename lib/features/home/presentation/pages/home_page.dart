import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

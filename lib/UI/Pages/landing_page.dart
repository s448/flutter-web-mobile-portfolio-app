import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Bloc/app_bloc.dart';
import 'package:portfolio/Bloc/app_state.dart';
import 'package:portfolio/UI/Pages/LandingPageSectors/about_me.dart';
import 'package:portfolio/UI/Pages/LandingPageSectors/home_page.dart';
import 'package:portfolio/UI/Pages/LandingPageSectors/services_page.dart';
import 'package:portfolio/UI/Widgets/footer_tab.dart';
import 'package:portfolio/UI/Widgets/lets_conatct_button.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.veryLightGrayBlue,
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.veryLightGrayBlue,
              leading: Image.asset('assets/ic/no-bg-logo.png'),
              actions: [LetsContactButton()],
              title: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FooterElement(text: "Home"),
                    FooterElement(text: "Services"),
                    FooterElement(text: "About me"),
                    FooterElement(text: "Portfolio"),
                    FooterElement(text: "Testimonals"),
                    FooterElement(text: "Contact me"),
                  ],
                ),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HomePage(),
                  ServicesPage(),
                  const SizedBox(height: 50),
                  AboutMe(),
                ],
              ),
            ),
            // state is NavigationHashUpdated
            //     ? Center(child: Text(state.hash.toString()))
            //     : Center(child: Text("data")),
          ),
        );
      },
    );
  }
}

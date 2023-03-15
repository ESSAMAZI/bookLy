import 'package:book/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:book/Features/home/presentation/views/home_view.dart';
import 'package:book/constants.dart';
import 'package:book/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
//تنفيذ تحريك النص
    initSlidingAnimation();
//كود الانتقال
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    //انهاء عمل المتحكم عند الخروج من الشاشه
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        //تحديث القيمه
        //تحديث العنصر المحدد فقط
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

//method
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        //انزل النص الى اسفل ورجوعه الى اعلى
        //على المحور اكس واي حيث انه ثابت على محور اكس في حالتنا
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    // //تحديث القيمه
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}

import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/example/example_controller.dart';

class WaitingMobilePage extends StatelessWidget {
  WaitingMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExampleController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          appBar: AppBar(
            leading: BackButton(
              color: Colors.white,
            ),
            backgroundColor: HexColor("#4169E1"),
          ),
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: HexColor("#4169E1"),
                      height: 190,
                      width: Get.width,
                      child: Container(
                        child:
                            Image.asset('assets/krisna/images/waitingpng.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Menunggu\nPelaksanaan UKA SKD",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.heading6Bold
                            .copyWith(color: Colors.black)),
                    Text("00:00:05",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.heading1Heavy.copyWith(
                            color: ColorStyle().redRange[400]!, fontSize: 52)),
                    Text(
                        "Saat waktu tunggu habis, UKA\n akan dimulai secara otomatis",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body1DemiBold.copyWith(
                            color: ColorStyle().grayscaleRange[500]!)),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      color: HexColor("#4169E1"),
                      height: 155,
                      width: 137,
                      // decoration: ,
                      child: Column(
                        children: [],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
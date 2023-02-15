import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'App Colors.dart';
import 'Booking_Screen/Data/models/Movie Seat Labels.dart';
import 'Booking_Screen/Data/models/Seat Section.dart';
import 'Booking_Screen/Data/models/data.dart';
import 'Booking_Screen/Data/models/movie.dart';
import 'Buttom Size Animation.dart';
import 'CustomAPPBar.dart';
import 'Opacity Animation.dart';
import 'Screen Painter.dart';
import 'Ticket.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage>
    with TickerProviderStateMixin {
  late ButtomSizeAnimationController controller;

  final movie = movies.first;

  @override
  void initState() {
    controller = ButtomSizeAnimationController(
      contentController: AnimationController(
          vsync: this,
          duration: const Duration(
            milliseconds: 750,
          )),
      buttonController: AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 750,
        ),
      ),
    );
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await controller.buttonController.forward();
      await controller.buttonController.reverse();
      await controller.contentController.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: OpacityAnimation(
              animation: controller.inicialOpacityAnimation,
              child: const CustomAppBar(),
            ),
          ),
          backgroundColor: AppColors.primaryBackgroudColor,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                width: w,
                child: Column(
                  children: [
                    OpacityAnimation(
                      animation: controller.inicialOpacityAnimation,
                      child: _CinemaLayout(h: 400, w: w, movie: movie)
                    ),
                    const SizedBox(height: 100),
                    OpacityAnimation(
                      animation: controller.endOpatictyAnimation,
                      child: _ButtomPage(height: 200, movie: movie),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                //left: (w - w * 0.6) / 2,
                child: _ScaleButton(controller: controller, w: w, h: h),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ScaleButton extends StatelessWidget {
  const _ScaleButton({
    Key? key,
    required this.controller,
    required this.w,
    required this.h,
  }) : super(key: key);

  final ButtomSizeAnimationController controller;
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.buttonController,
      builder: (_, child) {
        final size = controller
            .buttonSizeAnimation(
              begin: Size(w * 0.0, h * 0.0),
              end: Size(w * 1.2, h * 1.1),
            )
            .value;
        final margin = controller.buttomMarginAnimation((h) * 0.02).value;

        return Center(
          child: Container(
            margin: EdgeInsets.only(bottom: margin),
            decoration: BoxDecoration(
                color: AppColors.principalColor,
                borderRadius: BorderRadius.circular(50)),
            height: size.height,
            width: size.width,
          ),
        );
      },
    );
  }
}

class _CinemaLayout extends StatelessWidget {
  const _CinemaLayout({
    Key? key,
    required this.h,
    required this.w,
    required this.movie,
  }) : super(key: key);

  final double h;
  final double w;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: kToolbarHeight * 1.6, right: 25, left: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 40),
          SizedBox(
            height: h * 0.06,
            width: w,
            child: CustomPaint(
              painter: ScreenPainter(),
            ),
          ),
          SizedBox(height: h * 0.03),
          SizedBox(
            width: w,
            child: MovieCinema(
              cinema: movie.location,
            ),
          ),
          SizedBox(height: h * 0.02),
          const MovieSeatlabels(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _ButtomPage extends StatelessWidget {
  const _ButtomPage({
    Key? key,
    required this.height,
    required this.movie,
  }) : super(key: key);

  final double height;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: AppColors.secundaryBackgroudColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 25, left: 25, top: 12, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.principalColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 100,
                    width: 200,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ticket()),
                          );
                        },
                        child: const Text(
                          'Book Ticket',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

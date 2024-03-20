import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/home/components/server_list_sheet/server_list_sheet.dart';
import 'package:privet_vpn/features/home/home_model.dart';
import 'package:privet_vpn/features/home/state/home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const double firstCircleSize = 190;
  static const double secondCircleSize = 162;
  static const double thirdCircleSize = 134;
  static const double circlePadding = 14;
  static const double statusCircleSize = 10;

  late final Future _getServersFuture;

  @override
  void initState() {
    _getServersFuture = context.read<HomeCubit>().getServers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Image.asset(
              secondBG,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                firstBG,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              secondChild: Image.asset(
                thirdBG,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              crossFadeState: state.currentCrossFadeState,
              duration: const Duration(seconds: 1),
              reverseDuration: const Duration(milliseconds: 400),
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.easeInOut,
              excludeBottomFocus: false,
            ),
            SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/privetLogo.svg"),
                    ],
                  ),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/menu");
                    },
                    icon: SvgPicture.asset(
                      "assets/images/menu.svg",
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: state.connectionState != VpnConnectionState.pending
                              ? () {
                                  if (state.connectionState == VpnConnectionState.disconnected) {
                                    context.read<HomeCubit>().connectVPN();
                                  } else {
                                    context.read<HomeCubit>().disconnectVPN();
                                  }
                                }
                              : null,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: firstCircleSize,
                                height: firstCircleSize,
                                padding: const EdgeInsets.all(circlePadding),
                                decoration: BoxDecoration(
                                  color: AppColors.defaultWhite,
                                  borderRadius: BorderRadius.circular(firstCircleSize),
                                  border: Border.all(
                                    color: state.currentBorderColor,
                                    width: circlePadding,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.defaultWhite.withOpacity(0.5),
                                      spreadRadius:
                                          state.connectionState == VpnConnectionState.connected
                                              ? 8
                                              : 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  width: secondCircleSize,
                                  height: secondCircleSize,
                                  padding: const EdgeInsets.all(circlePadding),
                                  decoration: BoxDecoration(
                                    color: AppColors.defaultWhite,
                                    borderRadius: BorderRadius.circular(secondCircleSize),
                                    border: Border.all(
                                      color: AppColors.circleBorderBold,
                                      width: 3,
                                    ),
                                  ),
                                  child: Container(
                                    width: thirdCircleSize,
                                    height: thirdCircleSize,
                                    decoration: BoxDecoration(
                                      color: AppColors.defaultWhite,
                                      borderRadius: BorderRadius.circular(
                                        secondCircleSize,
                                      ),
                                      border: Border.all(
                                        color: AppColors.circleBorder,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/images/power.svg",
                                        color: state.currentStatusColor,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: state.currentStatusColor,
                                borderRadius: BorderRadius.circular(statusCircleSize),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              state.currentStatusText.toUpperCase(),
                              style: TextStyle(
                                color: AppColors.defaultWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                      child: FutureBuilder(
                        future: _getServersFuture,
                        builder: (BuildContext context, snapshot) {
                          return GestureDetector(
                            onTap: () async {
                              await context.read<HomeCubit>().getServers();
                              if (snapshot.connectionState == ConnectionState.done) {
                                showModalBottomSheet(
                                    context: context,
                                    showDragHandle: true,
                                    isScrollControlled: true,
                                    useSafeArea: true,
                                    builder: (BuildContext context) {
                                      return ServerListSheet();
                                    });
                              }
                            },
                            child: Container(
                              height: 52,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.defaultWhite,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: state.selectedServer != null
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(41),
                                              child: Image.network(
                                                state.selectedServer!.flag,
                                                width: 41,
                                                height: 41,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              state.selectedServer!.name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                        SvgPicture.asset("assets/images/arrowUp.svg"),
                                      ],
                                    )
                                  : Center(
                                      child: CircularProgressIndicator(),
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
    ;
  }
}

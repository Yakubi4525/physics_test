import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:physics_test/core/components/loading/circle_loading.dart';
import 'package:physics_test/core/snack/snack_widget.dart';
import 'package:physics_test/core/style/color.dart';
import 'package:physics_test/features/excercise/domain/controllers/excercise_controller.dart';
import 'package:physics_test/features/excercise/ui/bloc/excercise_bloc.dart';
import 'package:physics_test/features/excercise/ui/widgets/bottom_button.dart';
import 'package:physics_test/features/excercise/ui/widgets/dismissible_bg.dart';
import 'package:physics_test/features/excercise/ui/widgets/exercise_container.dart';
import 'package:physics_test/features/excercise/ui/widgets/sliding_up_panel.dart';
import 'package:physics_test/features/excercise/ui/widgets/super_set.dart';
import 'package:physics_test/injection.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ExcerciseScreen extends StatefulWidget {
  const ExcerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseScreen> createState() => _ExcerciseScreenState();
}

class _ExcerciseScreenState extends State<ExcerciseScreen> {
  var excerciseController = Get.put(ExcercieController());
  PanelController panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExcerciseBloc>()
        ..add(
          const ExcerciseEvent.started(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Список упражнений"),
          centerTitle: true,
        ),
        backgroundColor: kLightBG,
        body: BlocConsumer<ExcerciseBloc, ExcerciseState>(
          listener: (context, state) {
            log('listennnnnn listennnn');
            if (state.noInternet) {
              ScaffoldMessenger.of(context).showSnackBar(
                noInternetSnackbar,
              );
            }
            if (state.showWarninSuperSet) {
              ScaffoldMessenger.of(context).showSnackBar(
                wrongSuperSetSnackBar,
              );
            }
          },
          builder: (context, state) {
            if (state.excercises.isNotEmpty) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 16, left: 16),
                    child: ReorderableListView(
                      children: [
                        for (final item in state.excercises)
                          Container(
                            key: ValueKey(item),
                            child: Dismissible(
                              key: ValueKey<String>(DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString()),
                              background: DisMissibleBg(
                                isRight: false,
                                item: item,
                              ),
                              secondaryBackground: DisMissibleBg(
                                item: item,
                                isRight: true,
                              ),
                              child: ExcerciseItem(
                                item: item,
                              ),
                              onDismissed: (direction) {
                                if (item.orderPrefix!.isNotEmpty) {
                                  context.read<ExcerciseBloc>().add(
                                        ExcerciseEvent.removeFromSuperSet(
                                          index: state.excercises.indexOf(
                                            item,
                                          ),
                                        ),
                                      );
                                } else {
                                  context.read<ExcerciseBloc>().add(
                                        ExcerciseEvent.createuperSet(
                                          index: state.excercises.indexOf(
                                            item,
                                          ),
                                          model: item,
                                        ),
                                      );
                                }
                              },
                            ),
                          ),
                      ],
                      onReorder: (oldIndex, newIndex) {
                        context.read<ExcerciseBloc>().add(
                              ExcerciseEvent.updateListOfModels(
                                oldIndex: oldIndex,
                                newIndex: newIndex,
                              ),
                            );
                      },
                    ),
                  ),
                  BottomButton(
                    onTap: () {
                      openMap();
                    },
                  ),
                  SlidingUpPaneWidget(
                    panelController: panelController,
                  )
                ],
              );
            }
            if (state.isSubmitting) {
              return const CircleLoading();
            }
            return Container();
          },
        ),
      ),
    );
  }

  void openMap() async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SuperSet(
          onAcept: () {
            setState(() {});
          },
          onCancel: () {},
          listofExcercise: excerciseController.listOfModels,
        );
      },
    );
  }
}

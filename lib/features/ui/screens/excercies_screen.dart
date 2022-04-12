import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:physics_test/core/components/loading/circle_loading.dart';
import 'package:physics_test/core/snack/snack_widget.dart';
import 'package:physics_test/core/style/color.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';
import 'package:physics_test/features/ui/bloc/excercise_bloc.dart';
import 'package:physics_test/injection.dart';

class ExcerciseScreen extends StatefulWidget {
  const ExcerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseScreen> createState() => _ExcerciseScreenState();
}

class _ExcerciseScreenState extends State<ExcerciseScreen> {
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
            if (state.noInternet) {
              ScaffoldMessenger.of(context).showSnackBar(
                noInternetSnackbar,
              );
            }
          },
          builder: (context, state) {
            if (state.excercises.isNotEmpty) {
              return Stack(
                children: [
                  ReorderableListView(
                    children: [
                      for (final item in state.excercises) buildListTileItem(item)
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

  Widget buildListTileItem(ExerciseModel item) {
    return ListTile(
      key: ValueKey(item),
      title: Text(
        "Упражнения № ${item.id}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Order id ${item.order}",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: kBlackColor,
            ),
          ),
          item.orderPrefix!.isNotEmpty
              ? Text(
                  "Order Prefix id ${item.orderPrefix}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kBlackColor,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

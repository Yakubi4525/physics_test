import 'package:flutter/material.dart';
import 'package:physics_test/features/excercise/ui/widgets/alert_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpPaneWidget extends StatelessWidget {
  const SlidingUpPaneWidget({Key? key, required this.panelController})
      : super(key: key);
  final PanelController panelController;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: panelController,
      renderPanelSheet: false,
      isDraggable: false,
      panel: const AlertWidget(
          info:
              'Уже есть суперсет в списке, просто перемещайте элемент в этот список'),
      collapsed: null,
      maxHeight: 142,
      minHeight: 0,
    );
  }
}

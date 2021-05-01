import 'package:flutter/widgets.dart';
import 'package:shopping/ui/shared/widgets/shared/generic-progress-indicator.widget.dart';

class Loader extends StatelessWidget {
  final object;
  final Function callback;

  Loader({@required this.object, @required this.callback});

  @override
  Widget build(BuildContext context) {
    if (object == null)
      return Center(
        child: GenericProgressIndicator(),
      );

    if (object.lenght == 0)
      return Center(
        child: Text("Nenhum item encontrado amiguinho :("),
      );

    return callback();
  }
}

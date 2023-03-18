import 'package:flutter/material.dart';
import '../../../models/actor.dart';
import '../../../size_config.dart';
import 'actor_item.dart';

class Cast extends StatelessWidget {
  final List<Actor> cast;

  const Cast({Key? key, required this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Actors",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(),
        ),
        SizedBox(height: SizeConfig.defaultHeight! * 2),
        Row(
          children: [
            ...cast.map((actor) => ActorItem(
                  actor: actor,
                ))
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tune_flutter/Models/tune_model.dart';
class Item extends StatelessWidget {
  Item({ required this.data});
   TuneModel data;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      child:Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        color: data.color,
      ),
      onTap: () async{
        final player = AudioPlayer();
        await player.play(AssetSource(data.tune));
      //  await player.setSource(AssetSource(data.tune));
      //  player.resume();
      },),
    );
  }
}

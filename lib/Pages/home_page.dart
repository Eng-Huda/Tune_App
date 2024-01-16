import 'package:flutter/material.dart';
import 'package:tune_flutter/Components/Item.dart';
import 'package:tune_flutter/Models/tune_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<TuneModel> tune_data = const [
    TuneModel(color: Color(0xFFf44336), tune: "note1.wav"),
    TuneModel(color: Color(0xFFf89800), tune: "note2.wav"),
    TuneModel(color: Color(0xFFfeeb3b), tune: "note3.wav"),
    TuneModel(color: Color(0xFF4caf50), tune: "note4.wav"),
    TuneModel(color: Color(0xFF2f9688), tune: "note5.wav"),
    TuneModel(color: Color(0xFF2896f3), tune: "note6.wav"),
    TuneModel(color: Color(0xFF9c27b0), tune: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tune Flutter"),
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
        centerTitle: true,
        backgroundColor: Color(0xFF253238),
        elevation: 0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
              // Get_Data()
              tune_data
                  .map(
                    (e) => Item(data: e),
                  )
                  .toList()),
    );
  }

  List<Item> Get_Data() {
    List<Item> Tunes = [];
    for (var tune in tune_data) {
      Tunes.add(Item(data: tune));
    }
    return Tunes;
  }
}

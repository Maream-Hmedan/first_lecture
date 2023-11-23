import 'package:flutter/material.dart';

void main() {
  // dart code
  // design
  runApp(const MyApp());
}

// class MyStatelessApp extends StatelessWidget {
//   const MyStatelessApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text("Anas");
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Anas",
        debugShowCheckedModeBanner: false,
        home: Example(),
       );
  }
}

class Example extends StatelessWidget {
   Example({super.key});
  final List<String>_options=["Asmaa", "Leen", 'Maream', "Anas", "Nadia", "Ruaa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue value) {
            return _options
                .where((element) => element
                .toLowerCase()
                .contains(value.text.toLowerCase()))
                .toList();
          },
          onSelected: (String selection) {
            print('You selected: $selection');
          },
          fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
              FocusNode focusNode, VoidCallback onFieldSubmitted) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: textEditingController,
                focusNode: focusNode,
                enabled: true,
                decoration:InputDecoration(
                  enabledBorder:_getBorder(color: Colors.purple),
                  focusedBorder:_getBorder(color: Colors.black) ,
                  hintText: 'Type here',
                  labelText: "Auto complete design",
                  labelStyle: const TextStyle(color: Colors.black)
                ),
              ),
            );
          },
          optionsViewBuilder: (BuildContext context, AutocompleteOnSelected<String> onSelected,
              Iterable<String> options) {
            return Align(
              alignment: Alignment.topLeft,
              child: Material(
                elevation: 4.0,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                      maxHeight: 200.0),
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(12),
                      border:Border.all(color: Colors.black)
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: options
                        .map((String option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        onSelected(option);

                      },
                    ))
                        .toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  OutlineInputBorder _getBorder({required Color color}) {
    return OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:  BorderSide(color: color, width: 2));
  }
}
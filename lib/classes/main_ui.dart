import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        home: const HomeScreen(),
        theme: ThemeData(
          primaryColor: Colors.red,
        ));
  }
}

// decorator design pattern
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode _emailFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();

  bool _isPasswordObscure = true;

  String? _emailError;
  String? _passwordError;

  GlobalKey<FormState> _key = GlobalKey();
  List<String> _options = ["Asmaa", "Leen", 'Maream', "Anas", "Nadia", "Ruaa"];

  @override
  Widget build(BuildContext context) {
    return _getFormFieldWidgets();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "test Title",
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          // actions: [
          //   const Icon(Icons.add),
          //   const Icon(Icons.read_more),
          //   const SizedBox(
          //     width: 30,
          //   )
          // ],
          // leading: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Icon(Icons.settings),
          //     // Icon(Icons.settings),
          //     // Icon(Icons.settings),
          //   ],
          // ),
          leadingWidth: 100,
          elevation: 10,
          shadowColor: Colors.grey,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Center(
                child: Text("Bottom"),
              )),
          titleSpacing: 1,
          toolbarOpacity: 1,
          toolbarHeight: 62,
          flexibleSpace: Column(children: const [
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
          ]),
          titleTextStyle: const TextStyle(color: Colors.red),
          bottomOpacity: 0.5,
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Anas"),
                    Text("Rasheed"),
                  ],
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.money),
                          Text("Bassil"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Eman"),
                          SizedBox(
                            height: 100,
                          ),
                          Icon(Icons.money),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Roa'a"),
                    Text("Bashar"),
                  ],
                ),
                // const FlutterLogo(
                //   size: 250,
                //   curve: Curves.easeIn,
                //   duration: Duration(milliseconds: 5000),
                // ),
                SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print("hello");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 10,
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.red, width: 2)),
                    ),
                    onLongPress: () {
                      print("Long Press");
                    },
                    child: const Text("Click me !!!"),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Anas"),
                //   style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.transparent),
                // ),
                // TextButton(
                //   onPressed: () {},
                //   child: Icon(Icons.add),
                // ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Text("Hello"),
                //   iconSize: 50,
                // ),
                // Image.asset(
                //   "assets/third_intro_img.png",
                //   height: 300,
                // ),
                // Image.asset(
                //   "assets/first_img.jpg",
                // ),
                Image.asset("assets/f_intro_img.png",
                    fit: BoxFit.cover,
                    scale: 0.1,
                    opacity: AnimationController(vsync: this, value: 0.1)),
                Image.network(
                    "https://i5.walmartimages.ca/images/Large/094/514/6000200094514.jpg"),
                AspectRatio(
                    child: Image.memory(const Base64Decoder().convert(base64)),
                    aspectRatio: 0.7),
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Align(
                          child: Icon(Icons.ac_unit),
                          alignment: Alignment.centerLeft),
                      Icon(Icons.ac_unit),
                      Align(
                          child: Icon(Icons.ac_unit),
                          alignment: Alignment.centerRight),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Anas"),
                    ),
                  ],
                ),
                Transform.scale(child: const Icon(Icons.add), scale: 1.5),
                Transform.rotate(
                    child: const Icon(Icons.access_alarm_sharp), angle: 360),
                const SizedBox(
                  height: 30,
                ),
              ]),
            ),
          ),
        ),
        floatingActionButton: Transform.scale(
          child: FloatingActionButton(
            onPressed: () {},
            child:
            const Text("Click me right now", textAlign: TextAlign.center),
          ),
          scale: 1.5,
        ),
        drawer: Drawer(
          width: 300,
          child: Column(children: [
            const Text(
              "This is header",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: const [
                Icon(Icons.home),
                SizedBox(
                  width: 5,
                ),
                Text("Home")
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: const [
                Icon(Icons.home),
                SizedBox(
                  width: 5,
                ),
                Text("Home")
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: const [
                Icon(Icons.home),
                SizedBox(
                  width: 5,
                ),
                Text("Home")
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: const [
                Icon(Icons.settings),
                SizedBox(
                  width: 5,
                ),
                Text("settings")
              ],
            )
          ]),
        ),
        backgroundColor: Colors.red,
        endDrawer: const Drawer(),
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: const [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget _getTable() {
    return Scaffold(
      body: Center(
        child: Table(
          border: TableBorder(borderRadius: BorderRadius.circular(20)),
          defaultColumnWidth: const FractionColumnWidth(0.1),
          children: [
            TableRow(children: [
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
            ]),
            TableRow(children: [
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
            ]),
            TableRow(children: [
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(4),
                color: Colors.green,
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _getFormWidgets() {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
          children: [
            const SizedBox(
              height: 50,
            ),
            // _getTextField(),
            TextField(
              controller: _emailController,
              focusNode: _emailFocus,
              textInputAction: TextInputAction.next,
              onEditingComplete: () {
                _passwordFocus.requestFocus();
              },
              decoration: InputDecoration(
                  border: _getBorder(),
                  disabledBorder: _getBorder(),
                  enabledBorder: _getBorder(),
                  errorBorder: _getBorder(),
                  focusedBorder: _getBorder(),
                  focusedErrorBorder: _getBorder(),
                  errorText: _emailError,
                  labelText: "email",
                  hintText: "xxxx@provider.com",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.orange,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _passwordController,
              focusNode: _passwordFocus,
              obscureText: _isPasswordObscure,
              onEditingComplete: () {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              decoration: InputDecoration(
                  border: _getBorder(),
                  disabledBorder: _getBorder(),
                  enabledBorder: _getBorder(),
                  errorBorder: _getBorder(),
                  focusedBorder: _getBorder(),
                  focusedErrorBorder: _getBorder(),
                  errorText: _passwordError,
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Colors.orange,
                  ),
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isPasswordObscure = !_isPasswordObscure;
                        });
                      })),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_isDataValid()) print("Success");
                },
                child: const Text("Login"))
          ]),
    );
  }

  Widget _getFormFieldWidgets() {
    return Scaffold(
      body: Form(
        key: _key,
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
            children: [
              const SizedBox(
                height: 50,
              ),
              // _getTextField(),
              TextFormField(
                controller: _emailController,
                focusNode: _emailFocus,
                textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  _passwordFocus.requestFocus();
                },
                validator: (v) {
                  if (v == null || v.isEmpty) return "this field is required";
                  if (!isValidEmail(v)) return "please enter valid emaill";

                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    border: _getBorder(),
                    disabledBorder: _getBorder(),
                    enabledBorder: _getBorder(),
                    errorBorder: _getBorder(),
                    focusedBorder: _getBorder(),
                    focusedErrorBorder: _getBorder(),
                    errorText: _emailError,
                    labelText: "email",
                    hintText: "xxxx@provider.com",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.orange,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocus,
                obscureText: _isPasswordObscure,
                onEditingComplete: () {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Password is required";
                  }
                  if (v.length < 6)
                    return "please enter valid password , min length is 6";

                  return null;
                },
                decoration: InputDecoration(
                    border: _getBorder(),
                    disabledBorder: _getBorder(),
                    enabledBorder: _getBorder(),
                    errorBorder: _getBorder(),
                    focusedBorder: _getBorder(),
                    focusedErrorBorder: _getBorder(),
                    errorText: _passwordError,
                    icon: Icon(Icons.add),
                    labelText: "Password",
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.orange,
                    ),
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isPasswordObscure = !_isPasswordObscure;
                          });
                        })),
              ),
              SizedBox(
                height: 5,
              ),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue value) {
                  if (value.text.isEmpty) {
                    return _options;
                  }
                  return _options
                      .where((element) =>
                      element
                          .toLowerCase()
                          .contains(value.text.toLowerCase()))
                      .toList();
                },
                onSelected: (v) {
                  print(v);
                },
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      print("Success");
                      _emailController.clear();
                      _passwordController.clear();
                    };
                  },
                  child: const Text("Login"))
            ]),
      ),
    );
  }

  /*
  Autocomplete<String>(
                optionsBuilder: (TextEditingValue value) {
                  if (value.text.isEmpty) {
                    return _options;
                  }
                  return _options
                      .where((element) => element
                          .toLowerCase()
                          .contains(value.text.toLowerCase()))
                      .toList();
                },
                onSelected: (v) {
                  print(v);
                },
                optionsViewBuilder: (context, onSelected, options) {
                  return const Text("anas");
                },
                fieldViewBuilder: (context, textEditingController, focusNode,
                        onFieldSubmitted) =>
                    TextFormField(),
              )
   */
  OutlineInputBorder _getBorder() =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(12));

  TextField _getTextField() {
    return TextField(
        controller: _emailController,
        onTap: () {
          print("Field is clicked");
        },
        enabled: true,
        readOnly: false,
        cursorColor: Colors.black,
        cursorWidth: 5,
        cursorRadius: const Radius.circular(10),
        autofocus: false,
        enableSuggestions: true,
        // maxLines: 5,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.green)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.green, width: 3)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.green)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.black)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 3)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.orange, width: 3)),
            prefixIcon: const Icon(Icons.calendar_month),
            // prefixText: "+962",
            // prefix: Icon(Icons.access_alarm),
            suffixIcon: const Icon(Icons.add),
            fillColor: Colors.grey,
            filled: false,
            isDense: false,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            // label: Icon(Icons.access_alarm),
            labelText: "username",
            hintText: "079xxxxxxx",
            labelStyle: const TextStyle(color: Colors.orange),
            hintStyle: const TextStyle(color: Colors.red),
            errorText: "please fill correct username",
            // counter: Text("asdd"),
            errorStyle: const TextStyle(color: Colors.green, fontSize: 16)),
        onChanged: (value) {
          print(value);
        },
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.start,
        maxLength: 30,
        textDirection: TextDirection.ltr,
        onEditingComplete: () {
          print("on Editing complete");
        },
        onSubmitted: (v) {
          print("On submitted called $v");
        },
        textCapitalization: TextCapitalization.none,
        showCursor: false,
        obscureText: false,
        inputFormatters: [
          // [a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$
          ThousandsSeparatorInputFormatter(),
        ],
        buildCounter: (BuildContext context,
            {int? currentLength, int? maxLength, bool? isFocused}) {
          if (isFocused!) return Text("$currentLength-$maxLength");
          return null;
        });
  }

  bool isValidEmail(String value) {
    // Define a basic regex pattern for email validation
    // This is a simple example, and more complex email validation may be needed based on your requirements.
    String pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Widget _getListView() {
    return Scaffold(
      body: Center(
        child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(50),
            shrinkWrap: false,
            physics: const ClampingScrollPhysics(),
            reverse: false,
            children: [
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              )
            ]),
      ),
    );
  }

  Widget _getWrap() {
    return Scaffold(
      body: Center(
        child: Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 10,
            children: [
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              // Container(
              //   width: 50,
              //   height: 20,
              //   color: Colors.blue,
              // ),
              // Container(
              //   width: 50,
              //   height: 20,
              //   color: Colors.blue,
              // ),
              // Container(
              //   width: 50,
              //   height: 20,
              //   color: Colors.blue,
              // ),
            ]),
      ),
    );
  }

// Widget _getGidView() {
//   return Scaffold(
//     body: GridView(),
//   );
// }

  Widget _getStackExample() {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Stack(alignment: Alignment.center, children: [
            InkWell(
              onTap: () {
                print("image");
              },
              child: Image.asset(
                "assets/third_intro_img.png",
                height: 400,
              ),
            ),
            InkWell(
              onTap: () {
                print("Stepbystep");
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 80,
              child: IgnorePointer(
                child: InkWell(
                  onTap: () {
                    print("Anas");
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Google Ads",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 1,
              // backgroundColor: Colors.white,
              // decoration: TextDecoration.underline,
              // decorationColor: Colors.yellow,
              // decorationThickness: 2,
            ),
          ),
          centerTitle: false,
          // backgroundColor: Colors.yellow.withOpacity(0.9),
          backgroundColor: const Color.fromRGBO(198, 81, 81, 1),
        ),
        body: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              // color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                gradient: const LinearGradient(
                    colors: [Colors.red, Colors.yellow, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.2, 0.6, 0.2]),
                shape: BoxShape.rectangle),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Reem"),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Anas"),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Text("Anas2"),
                    const Text("Anas3"),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text("Ro2a"),
                const SizedBox(
                  width: 5,
                ),
                const Text("Waleed"),
                // Expanded(
                //   child: Text(
                //     "This course is for learning flutter This course is for learning flutter",
                //     maxLines: 1,
                //     overflow: TextOverflow.ellipsis,
                //   ),
                // ),
                // Icon(
                //   Icons.format_underline,
                //   color: Colors.red,
                //   size: 30,
                // ),
              ],
            )
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: const [
          //     Text("Reem"),
          //     Text("Anas"),
          //     Text("Ro2a"),
          //     Text("Waleed"),
          //     Text("This course is for learning flutter"),
          //     Icon(
          //       Icons.format_underline,
          //       color: Colors.red,
          //       size: 30,
          //     ),
          //   ],
          // ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }

  Widget _getExpandedExample() {
    return Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // 800
              color: Colors.yellow,
              height: 100,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              color: Colors.green,
              height: 200,
            ),
            const Spacer(),
            Container(
              color: Colors.yellow,
              height: 200,
            ),
          ],
        )
      // Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //     Expanded(child: Container(width: 100,height: 100,color: Colors.green,)),
      //     Expanded(child: Container(width: 100,height: 100,color: Colors.red,)),
      //     Expanded(child: Container(width: 100,height: 100,color: Colors.black,)),
      //   ],),
      // )
      // Column(children: [
      //   Expanded( // 1
      //     flex: 2,
      //     child: Container(
      //       color: Colors.red,
      //       height: 100,
      //     ),
      //   ),
      //   Expanded( // 1
      //     flex: 2,
      //     child: Container(
      //       color: Colors.yellow,
      //       height: 100,
      //     ),
      //   ),
      //   Expanded( // 1
      //     child: Container(
      //       color: Colors.green,
      //       height: 100,
      //     ),
      //   ),
      // ]),
    );
  }

// String base64 = """
// lkjlkfjewkljf
// wlkehrlewhre
// lwehrlewhr
// wljejhrkjlehrlkqew
// wlehrjlwehr
// """;

  String base64 =
      "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YFlq6rGqr1q44+ampZJGaIa1nEtPQfDyUDahAuoquMHFVnYmTAV3HFrfbEMzniITVHwM16T6T+kX4kipVmnQz4PqDg3g3/l4cRQ2JQptIe8b7tJ/SP8A11PVeyw+3DxXWwdHPnJ+FPL1U24h7XCU6dNjadNoaxohrRkApw9eVobWnVX6W0JXRVHc3klc2ni1YbXQWpWVA2qtw9BIi1lZlBlFiVlAREQEREBERBgrRzlsVo4IIaj1TrVFcexQPooORiXFcfFUiV6aph1Xfg0HisXgC5cevsKTK+ivwHJQu2dyQfOzsmoMnu8Son7KqfuK+iO2aOCidszko/RxzO+2PxDO5fPTsup+53itf9IdqSvoB2XyWp2XySMOOPFY/BuXgm7FVmjsqNF7T/TOSyNmclvERHhh5ijhCFeo0Cu63Z3JSswCyOdh2FdHDyp2YRWGYdBmi4q3Teo2UlMxiCdj1M16ga1StCCdrluHKIBbhBKCsrQLZBsiwFlAREQEREGIWIWyINC1alilWIQQmktDRVmEhBTNBaHDq9CbqDnnDLU4VdHdWNxBzThVqcLyXU3Fj7aDl/2qf2q6f20+2g5n9ss/266X21j7aCgMOthRV37azuIKYpLcU1Z3FncQQBi3DVLurMINA1bALaFmEGIWUhZQEREBERAREQEREBERAREQEREBERAWIRECEhEQISERAhIRECEhEQISERBlERAREQEREH//2Q==";

  bool _isDataValid() {
    _clearError();
    bool isValid = true;
    if (_emailController.text.isEmpty) {
      _emailError = "Email is required";
      isValid = false;
    } else if (!isValidEmail(_emailController.text)) {
      _emailError = "please enter valid email address";
      isValid = false;
    }

    if (_passwordController.text.isEmpty) {
      _passwordError = "Password is required";
      isValid = false;
    } else if (_passwordController.text.length < 6) {
      _passwordError = "please enter valid password , at least 6 digits";
      isValid = false;
    }
    setState(() {});
    return isValid;
  }

  void _clearError() {
    _emailError = null;
    _passwordError = null;
  }
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ','; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue,
      TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }
    TextEditingValue temp = newValue;

    newValue = TextEditingValue(
        text: newValue.text.replaceAll(RegExp('[^0-9]'), ''),
        selection: newValue.selection,
        composing: newValue.composing);
    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != temp) {
      int selectionIndex = temp.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1)
          newString = separator + newString;
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    // If the new value and old value are the same, just return as-is
    return newValue;
  }
}

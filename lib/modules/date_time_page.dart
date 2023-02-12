import 'package:b_swam/modules/choose_seat_page.dart';
import 'package:flutter/material.dart';
import 'package:b_swam/shared/componenets/components.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({Key? key}) : super(key: key);

  @override
  State<DateTimePage> createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  List<Widget> sizes = <Widget>[
    const Text('Date'),
    const Text('Time'),
    const Text('Cinema')
  ];
  final List<bool> selectedSize = <bool>[true, false, false];

  void toggleButton(int x) {
    for (int i = 0; i < selectedSize.length; i++) {
      selectedSize[i] = i == x;
    }
  }

  List<Widget> dates = <Widget>[
    const Text('09:30 AM'),
    const Text('12:30 PM'),
    const Text('02:30 PM'),
    const Text('06:30 AM'),
    const Text('08:30 PM'),
    const Text('10:30 PM'),
  ];
  int selectedCard = -1;
  int selectedCinema = -1;
  List<Widget> cinemas = <Widget>[
    Image.asset(
      'assets/images/vox.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/max.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/Metro_Cinema.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/ozone.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/VivaCinema.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/galaxy.jpg',
      fit: BoxFit.fill,
    ),
  ];

  DateTime date = DateTime(2023, 2, 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Tenet_Movie_Poster.jpeg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Row(
                children: [
                  const Text(
                    'TENET',
                    style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                  const Baseline(
                    baseline: 17,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      '(2020)',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Action'),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(20, 30)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                  const SizedBox(width: 7),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Drama'),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(20, 30)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int j) {
                    setState(() {
                      toggleButton(j);
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  selectedBorderColor: Colors.lightBlueAccent,
                  selectedColor: Colors.black,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 15),
                  fillColor: Colors.lightBlueAccent,
                  color: Colors.black54,
                  constraints: const BoxConstraints(
                    minHeight: 35.0,
                    minWidth: 100.0,
                  ),
                  isSelected: selectedSize,
                  children: sizes,
                ),
                const SizedBox(height: 0),
                selectedSize[0] == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 240,
                            width: 300,
                            child: Center(
                              child: Text(
                                '${date.year}/${date.month}/${date.day}',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.lightBlueAccent,
                                ),
                                fixedSize: MaterialStateProperty.all(
                                  const Size(250, 52),
                                ),
                                shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                )),
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: date,
                                lastDate: DateTime(2023, 2, 22),
                              );
                              if (newDate == null) return;
                              setState(() {
                                date = newDate;
                              });
                            },
                            child: const Text('CHOOSE DATE'),
                          )
                        ],
                      )
                    : selectedSize[1] == true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 240,
                                width: 300,
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 120,
                                            childAspectRatio: 2 / 2,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20),
                                    itemCount: dates.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedCard = index;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: selectedCard == index
                                                  ? Colors.blue
                                                  : Colors.black,
                                              width:
                                                  selectedCard == index ? 3 : 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: dates[index],
                                        ),
                                      );
                                    }),
                              ),
                              defaultElevatedButton(() {
                                setState(() {
                                  for (int i = 0;
                                      i < selectedSize.length;
                                      i++) {
                                    selectedSize[i] = i == 2;
                                  }
                                });
                              }, 'CHOOSE TIME'),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 240,
                                width: 300,
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 120,
                                            childAspectRatio: 2 / 2,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20),
                                    itemCount: cinemas.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedCinema = index;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: selectedCinema == index
                                                  ? Colors.blue
                                                  : Colors.black,
                                              width: selectedCinema == index
                                                  ? 3
                                                  : 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: cinemas[index],
                                        ),
                                      );
                                    }),
                              ),
                              defaultElevatedButton(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ChooseSeatPage();
                                }));
                              }, 'CHOOSE CINEMA'),
                            ],
                          )
              ],
            )
          ],
        ),
      ),
    );
  }
}

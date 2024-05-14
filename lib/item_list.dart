import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  String image;
  String itemName;
  String color;
  String size;
  int quantity;
  int price;
  Item(
      {super.key,
      required this.image,
      required this.itemName,
      required this.color,
      required this.size,
      required this.quantity,
      required this.price}) {}

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset(
                  '${widget.image}',
                  width: 104,
                  height: 104,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.itemName}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Color:",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          " ${widget.color}",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "   Size:",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          " ${widget.size}",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 15,
                                  spreadRadius: 5,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (widget.quantity > 1) {
                                    widget.quantity--;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.grey,
                                size: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${widget.quantity}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 15,
                                  spreadRadius: 5,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (widget.quantity < 5) {
                                    widget.quantity++;
                                    if (widget.quantity == 5) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'Congratulations!',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                              content: Text(
                                                "You have added \n 5 \n ${widget.itemName} on your bag!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              actions: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.red,
                                                      foregroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      textStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 20,
                                                        vertical: 15,
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('OKAY'),
                                                  ),
                                                )
                                              ],
                                            );
                                          });
                                    }
                                  } else if (widget.quantity == 5) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Congratulations!',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                            content: Text(
                                              "You have added \n 5 \n ${widget.itemName} on your bag!",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                            actions: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.red,
                                                    foregroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                    textStyle: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 20,
                                                      vertical: 15,
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('OKAY'),
                                                ),
                                              )
                                            ],
                                          );
                                        });
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text("${widget.price}\$"),
            ],
          )
        ],
      ),
    );
  }
}

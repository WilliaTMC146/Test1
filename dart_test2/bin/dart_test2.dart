import 'dart:io';

import 'package:dart_test2/dart_test2.dart' as dart_test2;

import 'archive.dart';

void main(List<String> arguments) {
  List arc = [];
  bool yes = true;
  int y = -1;
  int id = 1;
  String iid = " ";

  while (yes == true) {
    String loca = " ";

    print("1. Add Data");
    print("2. Show All Data");
    print("3. Show Data Based on ID");
    print("4. Show Location");
    print("0. Exit");
    stdout.write("Input: ");
    final l = stdin.readLineSync();
    y = int.parse(l!);

    if (y == 1) {
      //Option 1

      print("======== Select Type ========");
      print("1. Book");
      print("2. CD");
      print("3. Tour Guide");
      stdout.write("Input: ");
      final p = stdin.readLineSync();
      y = int.parse(p!);

      stdout.writeln("======== Input Item ========");
      if (y == 1) {
        iid = "Book" + "$id";
        id++;
      } else if (y == 2) {
        iid = "CD" + "$id";
        id++;
      } else if (y == 3) {
        iid = "TG" + "$id";
        id++;
      }

      stdout.write("Title: ");
      final title = stdin.readLineSync();
      stdout.write("Description: ");
      final desc = stdin.readLineSync();
      stdout.write("ISBN: ");
      final isbn = stdin.readLineSync();
      stdout.write("Artist / Author: ");
      final artor = stdin.readLineSync();
      stdout.write("Price: ");
      final prc = stdin.readLineSync();
      stdout.write("Location: ");
      final Loc = stdin.readLineSync();

      loca = "Shelf " + "$Loc";

      arc.add(Archive(
          iid, title!, desc!, int.parse(isbn!), artor!, int.parse(prc!), loca));
    } else if (y == 2) {
      //Option 2

      print("=========================");
      print("========Inventory========");
      print("=========================");
      print("");

      for (int f = 0; f < arc.length; f++) {
        arc[f].printData();
      }

      //print("");
      print("=========================");
      print("========Inventory========");
      print("=========================");
    } else if (y == 3) {
      //Option 3

      print("======== Select Type ========");
      print("1. Book");
      print("2. CD");
      print("3. Tour Guide");
      stdout.write("Input: ");
      final p = stdin.readLineSync();
      y = int.parse(p!);

      print("=========================");
      print("========Inventory========");
      print("=========================");
      print("");

      if (y == 1) {
        for (int f = 0; f < arc.length; f++) {
          if (arc[f].getId() == "Book") {
            arc[f].printData();
          }
        }
      } else if (y == 2) {
        for (int f = 0; f < arc.length; f++) {
          if (arc[f].getId() == "CD") {
            arc[f].printData();
          }
        }
      } else if (y == 3) {
        for (int f = 0; f < arc.length; f++) {
          if (arc[f].getId() == "TG") {
            arc[f].printData();
          }
        }
      }

      //print("");
      print("=========================");
      print("========Inventory========");
      print("=========================");
    } else if (y == 4) {
      //Option 4

      int lloc = 0;
      stdout.write("Input Location Number: ");
      final p = stdin.readLineSync();
      lloc = int.parse(p!);

      print("=========================");
      print("========Inventory========");
      print("=========================");
      print("");

      for (int f = 0; f < arc.length; f++) {
        if (arc[f].getLoc() == lloc) {
          arc[f].printData();
        }
      }

      //print("");
      print("=========================");
      print("========Inventory========");
      print("=========================");
    } else if (y == 0) {
      //Option 0
      yes = false;
    }
    print("\x1B[2J\x1B[0;0H");
  }
  print("====== Good Bye ======");
}

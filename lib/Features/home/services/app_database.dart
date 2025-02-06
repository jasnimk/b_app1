import 'dart:async';
import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:b_app/Features/home/services/db.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // This is auto-generated!

@Database(version: 1, entities: [HomeModel])
abstract class AppDatabase extends FloorDatabase {
  HomeDao get homeDao;
}

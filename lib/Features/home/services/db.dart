import 'package:b_app/Features/home/model/demo_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class HomeDao {
  @Query('SELECT * FROM HomeModel')
  Future<List<HomeModel>> getAllHomeData();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHomeData(List<HomeModel> data);

  @Query('DELETE FROM HomeModel')
  Future<void> clearHomeData();
}

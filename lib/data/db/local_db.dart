//
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'expo.dart';
//
// class LocalDatabase {
//   LocalDatabase._init();
//
//   static final LocalDatabase instance = LocalDatabase._init();
//   static Database? _database;
//
//   Future<Database?> get database async {
//     if (_database != null) {
//
//     } else {
//       _database = await _initDB("notes_db");
//       return _database;
//     }
//   }
//
//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//     return openDatabase(path, version: 1, onCreate: _createDB);
//   }
//
//   Future<ProductInfo> create( ProductInfo note) async {
//     final db = await instance.database;
//     final id = await db?.insert(ProductInfoFields.tableName, note.toJson());
//     return note.copyWith(id:id);
//   }
//
//   Future<ProductInfo> readNote(int id) async {
//     final db = await instance.database;
//     final maps = await db?.query(
//       ProductInfoFields.tableName,
//       columns: ProductInfoFields.values,
//       where: "${ProductInfoFields.id} = ?",
//       whereArgs: [id],
//     );
//     if (maps!.isNotEmpty) {
//       return ProductInfo.fromJson(maps.first);
//     } else {
//       throw ("id $id not found");
//     }
//   }
//
//   Future<List<ProductInfo>> readAll() async {
//     final db = await instance.database;
//     final orderBy = "${ProductInfoFields.name} ASC";
//     final result = await db?.query(ProductInfoFields.tableName, orderBy: orderBy);
//     return result!.map((e) => ProductInfo.fromJson(e)).toList();
//   }
//
//   Future<int> update(ProductInfo note) async {
//     final db = await instance.database;
//     return db!.update(ProductInfoFields.tableName, note.toJson(),
//         where: "${ProductInfoFields.id} ?", whereArgs: [note.id]);
//   }
//
//   Future<int> delete(int id) async {
//     final db = await instance.database;
//
//     return db!.delete(ProductInfoFields.tableName,
//         where: "${ProductInfoFields.id} ?", whereArgs: [id]);
//   }
//
//   Future _createDB(Database db, int version) async {
//     const idType = "INTEGER PRIMARY KEY AUTOINCRAMENT";
//     const textType = "TEXT NOT NULL";
//     const integerType = "INTEGER NOT NULL";
//     db.execute("""
//     CREATE tABLE ${ProductInfoFields.tableName}(
//       ${ProductInfoFields.id} $idType,
//       ${ProductInfoFields.price} $integerType,
//       ${ProductInfoFields.article} $textType,
//       ${ProductInfoFields.barcode} $textType,
//       ${ProductInfoFields.name} $textType,
//       ${ProductInfoFields.measure} $textType,
//       ${ProductInfoFields.brend} $textType,
//       ${ProductInfoFields.department} $textType,
//       ${ProductInfoFields.category} $textType,
//       ${ProductInfoFields.image} $textType,
//     )
//     """);
//   }
//
//   Future close() async {
//     final db = await instance.database;
//
//     db?.close();
//   }
// }

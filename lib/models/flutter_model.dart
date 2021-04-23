class FlutterModel {
  final int id;
  final String nombre;

  FlutterModel({this.id, this.nombre});

  factory FlutterModel.fromJson(Map<String, dynamic> json) => FlutterModel(
    id:        json['id'],
    nombre:    json['nombre']
  );

  Map<String, dynamic> toJson() => {
    'id':        id,
    'nombre':    nombre
  };
}
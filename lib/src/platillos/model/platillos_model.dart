class Platillos {
  List<Platillo> items = new List();

  Platillos();

  Platillos.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final platillo = new Platillo.fromJsonMap(item);
      items.add(platillo);
    }
  }
}

class Platillo {
  String nombre;
  String foto;
  String tags;
  String descripcion;
  String precio;
  String restaurante;

  Platillo({
    this.nombre,
    this.foto,
    this.tags,
    this.descripcion,
    this.precio,
    this.restaurante,
  });

  Platillo.fromJsonMap(Map<String, dynamic> json) {
    nombre = json['nombre'];
    foto = json['foto'];
    tags = json['tags'];
    descripcion = json['descripcion'];
    precio = json['precio'];
    restaurante = json['restaurante'];
  }

  getNombre() {
    if (nombre == null) {
      return 'Restaurant sin nombre';
    } else {
      return '$nombre';
    }
  }

  getFoto() {
    if (foto == null) {
      return 'assets/img/default.png';
    } else {
      return 'assets/img/$foto';
    }
  }

  getTags() {
    if (tags == null) {
      return '';
    } else {
      return '$tags';
    }
  }

  getdescripcion() {
    if (descripcion == null) {
      return 'Sin descripción';
    } else {
      return '$descripcion';
    }
  }

  getPrecio() {
    if (precio == null) {
      return 'Precio no asignado';
    } else {
      return ' $precio';
    }
  }
}

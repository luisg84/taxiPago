class Pedidos {
  List<Pedido> items = new List();

  Pedidos();

  Pedidos.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pedido = new Pedido.fromJsonMap(item);
      items.add(pedido);
    }
  }
}

class Pedido {
  String id;
  String numero;
  String estatus;
  List<Contenido> contenido = List();
  String total;

  Pedido({
    this.id,
    this.numero,
    this.estatus,
    this.contenido,
    this.total,
  });

  Pedido.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    numero = json['numero'];
    estatus = json['estatus'];
    total = json['total'];
  }

  Pedido.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final items = new Contenido.fromJsonMap(item);
      contenido.add(items);
    }
  }

  getId() {
    if (id == null) {
      return 'pedido sin Id';
    } else {
      return '$id';
    }
  }

  getNumero() {
    if (numero == null) {
      return 'Pedido sin numero';
    } else {
      return 'Pedido $numero';
    }
  }

  getEstatus() {
    if (estatus == null) {
      return 'Pedido sin estatus';
    } else {
      return '$estatus';
    }
  }

  getTotal() {
    if (numero == null) {
      return 'Sin productos';
    } else {
      return '$total';
    }
  }

  getContenido() {
    if (numero == null) {
      return 'Sin contenido';
    } else {
      return contenido;
    }
  }
}

class Contenido {
  String nombre;
  String tags;
  String foto;
  String precio;

  Contenido({
    this.nombre,
    this.tags,
    this.foto,
    this.precio,
  });

  Contenido.fromJsonMap(Map<String, dynamic> json) {
    nombre = json['nombre'];
    tags = json['tags'];
    foto = json['foto'];
    precio = json['precio'];
  }

  getNombre() {
    if (nombre == null) {
      return 'Restaurant sin nombre';
    } else {
      return '$nombre';
    }
  }

  getTags() {
    if (tags == null) {
      return '';
    } else {
      return '$tags';
    }
  }

  getFoto() {
    if (foto == null) {
      return 'assets/img/default.png';
    } else {
      return 'assets/img/$foto';
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

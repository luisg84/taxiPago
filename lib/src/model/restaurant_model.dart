class Restaurantes {
  List<Restaurante> items = new List();

  Restaurantes();

  Restaurantes.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final restaurante = new Restaurante.fromJsonMap(item);
      items.add(restaurante);
    }
  }
}

class Restaurante {
  String categoria;
  String portada;
  String logo;
  String nombre;
  String tags;
  String calf;
  String horario;

  Restaurante({
    this.categoria,
    this.portada,
    this.logo,
    this.nombre,
    this.tags,
    this.calf,
    this.horario,
  });

  Restaurante.fromJsonMap(Map<String, dynamic> json) {
    categoria = json['categoria'];
    portada = json['portada'];
    logo = json['logo'];
    nombre = json['nombre'];
    tags = json['tags'];
    calf = json['calf'];
    horario = json['horario'];
  }

  getCategoria() {
    if (nombre == null) {
      return 'Restaurant sin categoria';
    } else {
      return '$categoria';
    }
  }

  getPortada() {
    if (nombre == null) {
      return 'assets/img/sinimagen.jpg';
    } else {
      return 'assets/img/$portada';
    }
  }

  getLogo() {
    if (nombre == null) {
      return 'assets/img/sinimagen.jpg';
    } else {
      return 'assets/img/$logo';
    }
  }

  getNombre() {
    if (nombre == null) {
      return 'Restaurant sin nombre';
    } else {
      return '$nombre';
    }
  }

  getTags() {
    if (nombre == null) {
      return '';
    } else {
      return '$tags';
    }
  }

  getCalf() {
    if (nombre == null) {
      return '5.0';
    } else {
      return '$calf';
    }
  }

  getHorario() {
    if (nombre == null) {
      return 'sin horario';
    } else {
      return '$horario';
    }
  }
}

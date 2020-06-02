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
  String catCode;

  Restaurante(
      {this.categoria,
      this.portada,
      this.logo,
      this.nombre,
      this.tags,
      this.calf,
      this.horario,
      this.catCode});

  Restaurante.fromJsonMap(Map<String, dynamic> json) {
    categoria = json['categoria'];
    portada = json['portada'];
    logo = json['logo'];
    nombre = json['nombre'];
    tags = json['tags'];
    calf = json['calf'];
    horario = json['horario'];
    catCode = json['catCode'];
  }

  getCategoria() {
    if (categoria == null) {
      return 'Restaurant sin categoria';
    } else {
      return '$categoria';
    }
  }

  getPortada() {
    if (portada == null) {
      return 'assets/img/default.png';
    } else {
      return 'assets/img/$portada';
    }
  }

  getLogo() {
    if (logo == null) {
      return '';
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
    if (tags == null) {
      return '';
    } else {
      return '$tags';
    }
  }

  getCalf() {
    if (calf == null) {
      return '5.0';
    } else {
      return '$calf';
    }
  }

  getHorario() {
    if (horario == null) {
      return 'sin horario';
    } else {
      return '$horario';
    }
  }

  getCatCode() {
    if (catCode == null) {
      return '0';
    } else {
      return '$catCode';
    }
  }
}

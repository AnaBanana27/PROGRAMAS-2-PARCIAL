// ANA ISABEL SANCHEZ HEREDIA
//CLASE DE ANIMAL QUE TENGA 2 CARACTERISTICAS Y UN METODO

void main(List<String> args) {
  gato rayas = gato();
  {
    rayas.raza = "Persa";
    rayas.color = "gris";
   rayas.especie = "felino";
    rayas.maullar();
    rayas.caminar();
  }
  ave cotorro = ave();
  {
    cotorro.especie = "chuchi";
    cotorro.raza = "cotorro";
    cotorro.color = "verde";
    cotorro.volar();
    cotorro.caminar();
  }
}

class animal {
  String? raza;
  String? color;
  String? especie;
  void caminar() {
    print("EL ANIMAL ESTA CAMINANDO");
  }
}

class gato extends animal {
  void maullar() {
    print("EL GATO DICE MIAU");
  }

  void caminar() {
    super.caminar();
  }
}

class ave extends animal {
  void volar() {
    print("vuela");
  }

  void caminar() {
    super.caminar();
  }
}

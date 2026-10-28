class Agenda {
  final tareas = [
    'Estudiar dart',
    'Programar mis HUs',
    'Hcer prompt para que chat haga la exposicion',
    'Hacer pull request de las HUs terminadas',
    'Presentar examen TOELF',
  ];

  // Estado de una tarea
  String? eliminada; // Nombre de la tarea
  int? posicionAnterior; // la posicion de la tarea en el arreglo

// Borrar una tarea
void eliminar(int posicion){
  eliminada =tareas.removeAt(posicion);
  posicionAnterior = posicion;
}

// Ya no se quiere borrar la tarea, se debe recuperar
  void dehacer() {
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}

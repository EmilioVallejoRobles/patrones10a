import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda {
  final PanelAlumno panel = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea) {
    print('Publicando: $tarea');

    panel.mostrar(tarea);
    notificador.notificar(tarea);

    // Aquí la agenda se ocupa de tres tareas
    // Viola el principio de división de responsabilidades
    // La agenda se encarga de publicar taeas como de coordinar con la UI
    // y las notificaciones
  }
}

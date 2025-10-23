import tipoProfesional.*
class Profesional {
  var universidadEstudiada
  const tipoProfesional
  method asignarUniversidad(unaUniversidad) {
    universidadEstudiada=unaUniversidad
  }
  method universidad() =universidadEstudiada 
  method tipoProfesional()=tipoProfesional
  method honorarios() = self.tipoProfesional().honorario()
  method provinciasDeTrabajo() = self.tipoProfesional().provinciasDeTrabajo() //no es recursivo,  este llama al metodo al cual está asignado el tipoProfesional.
}


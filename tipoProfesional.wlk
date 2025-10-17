import profesional.Profesional.*
import universidad.*
import provincias.*
class ProfesionalVinculadoUniversidad{
    var universidad 
    const trabajo= [universidad.provincia()]
    method provinciasDeTrabajo() =trabajo //mi error: no contemplar bien el dominio. habla de la provincia sitiada, y no de la universidad en la que estudió el profesor
    method honorario()=universidad.honorarios()
    method asignarUniversidad(unaUniversidad) {
      universidad=unaUniversidad
    }
}

class ProfesionalAsociadoLitoral {
  const trabajo=[entreRios,santaFe,corrientes]
  method provinciasDeTrabajo() =trabajo
  method honorario() =3000 

}
class ProfesionalesLibre {
  var  universidad =[]
  var honorario 
  const trabajo=[]
  method asingarUniversidad(unaUniversidad) {
    universidad=unaUniversidad
  }
  method asignarHonorario(unHonorario) {
    honorario=unHonorario
  }
  method asignarProvincia(unaProvincia) {
    trabajo.add(unaProvincia)
  }  
  method provinciasDeTrabajo() =trabajo
  method honorario() =honorario
  method universidad() =universidad


}

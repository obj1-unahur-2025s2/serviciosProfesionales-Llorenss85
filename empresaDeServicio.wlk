import profesional.*
import universidad.*
import provincias.*

class Empresa {
    var honorarios
    const contratados= []
    method empleados() =contratados 
    method contratar(unEmpleado) {
        contratados.add(unEmpleado)
    }
    method cuantosEstudiaronEnLaUniversidad(unaUniversidad) = contratados.filter({p => p.universidad() == unaUniversidad }).size()
    method profesionalesCaros() = contratados.filter({p =>  p.honorarios()> honorarios })
    method universidadesFormadoras() = contratados.map({u => u.universidad()}).asSet()  
    method profesionalesBaratos() = contratados.filter({p => p.honorarios() < honorarios}) 
    method profesionalMasBarato() = self.profesionalesBaratos().min({p =>p.honorarios()})
    method genteAcotada() =!contratados.any({c => c.provinciasDeTrabajo().size()>=3}) 

}

/*object espera {
      //creacion de objetos - universidades- profesionales.
  const u1= new Universidad(nombre="unaHur",provincia=entreRios)
  const u2= new Universidad(nombre="unPaz",provincia=corrientes)
  const p1= new Profesional(universidadEstudiada=u1)
  const p2= new Profesional(universidadEstudiada=u1)
  const p3= new Profesional(universidadEstudiada=u2)
}*/
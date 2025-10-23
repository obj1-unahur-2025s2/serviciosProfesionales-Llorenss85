import profesional.*
import universidad.*
import provincias.*

class Empresa {
    const honorarios
    const contratados= []
    const clientes =[]

    method empleados() =contratados 
    method contratar(unEmpleado) {
        contratados.add(unEmpleado)
    }
    method agregarClientes(unCliente){
        clientes.add(unCliente)
    }
    method cuantosEstudiaronEnLaUniversidad(unaUniversidad) = contratados.filter({p => p.universidad() == unaUniversidad }).size()
    method profesionalesCaros() = contratados.filter({p =>  p.honorarios()> honorarios })
    method universidadesFormadoras() = contratados.map({u => u.universidad()}).asSet()  
    method profesionalesBaratos() = contratados.filter({p => p.honorarios() < honorarios}) 
    method profesionalMasBarato() = self.profesionalesBaratos().min({p =>p.honorarios()})
    method genteAcotada() =!contratados.any({c => c.provinciasDeTrabajo().size()>=3}) 

    //ETAPA2
    method puedeSatisfacerSolicitante(unSolicitante) = contratados.any({c => unSolicitante.puedpuedeSerAtendido(c)}) //revisar
    method solicitantePuedeSerAtendido(unSolicitante) = contratados.any({c => unSolicitante.puedeSerAtendido(c)})
    method darServicio(unSolicitante){
        if(self.solicitantePuedeSerAtendido(unSolicitante)){
            const profesionalQuePuede= contratados.filter({ c=> unSolicitante.puedeSerAtendido(c)}).randomized().first()
            profesionalQuePuede.cobrarImporte(profesionalQuePuede.honorario())
            self.agregarClientes(unSolicitante)
        }
    }

    //clietnes
    method cantidadClietnes()=clientes.size()
    method tieneSolicitante(unSolicitante) = clientes.contains(unSolicitante)
    method provinciasDeLaEmpresa()= contratados.map({c=> c.provinciasDeTrabajo()}).asSet()
    method profesionalPocoAtractivo(unProfesional)= unProfesional.provinciasDeTrabajo().any({p=> self.provinciasDeLaEmpresa().any({p1=> p ==p1}) }) and unProfesional.honorario() < self.profesionalMasBarato()
}

/*object espera {
      //creacion de objetos - universidades- profesionales.
  const u1= new Universidad(nombre="unaHur",provincia=entreRios)
  const u2= new Universidad(nombre="unPaz",provincia=corrientes)
  const p1= new Profesional(universidadEstudiada=u1)
  const p2= new Profesional(universidadEstudiada=u1)
  const p3= new Profesional(universidadEstudiada=u2)
}*/
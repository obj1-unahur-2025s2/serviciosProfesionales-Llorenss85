import universidad.*
import profesional.*
class Solicitantes{
    const pertenece
    method puedeSerAtentido(unProfesional)=pertenece.puedeSerAtendido(unProfesional)
}

class Persona{
    const provincia
    method puedeSerAtendida(unProfesional)=unProfesional.provinciasDeTrabajo().any({p => p ==provincia})
}
class Institucion{
    const universidades 
    method puedeSerAtendido(unProfesional) = universidades.any({u => u== unProfesional.universidad()})

}
class Club{
    const provincias
    method provincias() =provincias 
    method puedeSerAtendido(unProfesional)=provincias.any({p=> p == p.provinciasDeTrabajo().any{p2=>  p2 ==p}})
}
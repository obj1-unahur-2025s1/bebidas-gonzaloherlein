object tito {
  var peso = 70
  var inercia = 490
  var ultimaBebidaTomada = null
  var dosisBebida = 0

  method peso() = peso
  method inercia() = inercia
  method ultimaBebidaTomada() = ultimaBebidaTomada
  method dosisBebida() = dosisBebida

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }
  method cambiarInercia(nuevaInercia){
    inercia = nuevaInercia
  }

  method velocidad(){
  
    return ( ultimaBebidaTomada.rendimiento() * self.inercia() ) / self.peso()
  }

  method consumir(cantidad,bebida){
    ultimaBebidaTomada = bebida
    dosisBebida = cantidad
  }
}

object whisky{
  method rendimiento(){
    return 0.9 ** tito.dosisBebida()
  }
}

object terere{
  method rendimiento(){
    return 0.1 * tito.dosisBebida()
  }
}

object cianuro{
  method rendimiento(){
    return 0
  }
}
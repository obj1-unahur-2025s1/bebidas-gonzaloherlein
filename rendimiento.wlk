object tito {
  var peso = 70
  var inercia = 490
  var ultimaBebidaTomada = null

  method peso() = peso
  method inercia() = inercia
  method ultimaBebidaTomada() = ultimaBebidaTomada

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }
  method cambiarInercia(nuevaInercia){
    inercia = nuevaInercia
  }

  method velocidad(cantidadDeBebida){
    const rendimiento = self.consumir(cantidadDeBebida,ultimaBebidaTomada)
    return ( rendimiento * self.inercia() ) / self.peso()
  }

  method consumir(cantidad,bebida){
    var rendimiento = 0
    if(bebida.nombre() == "whisky"){
      rendimiento = 0.9 ** cantidad
      ultimaBebidaTomada = whisky
    }else if(bebida.nombre() == "terere"){
      rendimiento = 0.1 * cantidad
      ultimaBebidaTomada = terere
      if(rendimiento < 1){
        rendimiento = 1
      }
    }
    else{
      ultimaBebidaTomada = cianuro
    }
    return rendimiento
  }
}

object whisky{
  method nombre() = "whisky"
}

object terere{
  method nombre() = "terere"
}

object cianuro{
  method nombre() = "cianuro"
}
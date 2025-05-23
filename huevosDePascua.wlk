object huevoRepostero {

    method calorias() = 750
    
    method esDeChocoBlanco() = true
    method esDeChocoAmargo() = false
}

object huevoMixto {
    
    method calorias() = 900
    
    method esDeChocoBlanco() = true
    method esDeChocoAmargo() = false
}

object conejo {
    var property  peso = 400 //al ser un var property se generan el getter y setter automaticamente

    method calorias() = peso * 10
    
    method esDeChocoBlanco() = false
    method esDeChocoAmargo() = true
}

object blisterHuevitos {
    var cantHuevitos = 4
    var cantHuevosRegalo = 0

    method cantHuevitos() = cantHuevitos
    method cantHuevitos(unaCantidad) {
        cantHuevitos = unaCantidad
        cantHuevosRegalo = unaCantidad.div(5)
    } 

    method calorias() = 100 * cantHuevitos + 150 * cantHuevosRegalo
    
    method esDeChocoBlanco() {
        return cantHuevosRegalo > 0
    }
    method esDeChocoAmargo() = false
}

object matrioshka {
    var property decoracion = arbol
    var property otroHuevo = huevoRepostero

    method calorias() = 3000 + decoracion.calorias() + otroHuevo.calorias()
    
    method esDeChocoBlanco() {
        return otroHuevo.esDeChocoBlanco()
    }
    method esDeChocoAmargo() = true
}

object  arbol {
    method calorias() = 150 
}

object flor {
    var property cantPetalos = 5

    method calorias() = 100 * cantPetalos 
}

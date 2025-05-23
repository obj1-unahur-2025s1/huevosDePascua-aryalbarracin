import huevosDePascua.*

object ana {
    var caloriasConsumidas = 0

    method caloriasConsumidas() = caloriasConsumidas

    method enfermo() = caloriasConsumidas >= 5000

    method comerHuevo(unHuevo) {
        caloriasConsumidas += unHuevo.calorias()
    }
}

object jose {
    var ultimoHuevoConsumido = huevoMixto

    method enfermo() = ultimoHuevoConsumido.esDeChocoAmargo()

    method comerHuevo(unHuevo) {
        ultimoHuevoConsumido = unHuevo
    }
}

object tito {
    method comerHuevo(unHuevo) {}

    method enfermo() = false
}
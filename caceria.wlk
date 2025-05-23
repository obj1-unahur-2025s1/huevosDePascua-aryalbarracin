import huevosDePascua.*
import nenes.*

object caceria {
    const huevosEscondidos = []

    method huevosEscondidos() = huevosEscondidos
    method faltaEncontrar(unHuevo) = huevosEscondidos.contains(unHuevo)
    method cantHuevosPorEncontrar() = huevosEscondidos.size()
    method cantHuevosConChocoBlanco() = huevosEscondidos.count({huevo => huevo.esDeChocoBlanco()})
    method huevosConChocoBlanco() = huevosEscondidos.filter({huevo => huevo.esDeChocoBlanco()})
    method huevoConMasCalorias() = huevosEscondidos.max({huevo => huevo.calorias()})

    method esconderHuevo(unHuevo) {
        huevosEscondidos.add(unHuevo)
    }
    method esconderHuevos(listaHuevos) {
        huevosEscondidos.addAll(listaHuevos)
    }

    method encontrarHuevoPor(unHuevo, unNene) {
        if(self.faltaEncontrar(unHuevo)){
            huevosEscondidos.remove(unHuevo)
            unNene.comerHuevo(unHuevo)
        }    
    }

    method encontrarPrimerHuevoPor(unNene) {
        if(!huevosEscondidos.isEmpty())
            self.encontrarHuevoPor(huevosEscondidos.first(), unNene)
    }

    method encontrarHuevosRestantesPor(unNene) {
        if(!huevosEscondidos.isEmpty())
            huevosEscondidos.forEach({huevo => self.encontrarHuevoPor(huevo, unNene)})
    }
}

class jugada {
    const property equipoConvirtio
    const jugador
    const minuto
    const circuntanciasEspeciales = []

    method noTieneCircunstancias() = return circuntanciasEspeciales.isEmpty()

}

object var{
    method esGol(jugada){
        jugada.noTieneCircunstancias()            
    }

    method justiciaCiega(jugada){
        jugada.circuntanciasEspeciales.any("la pelota no pasó completamente la línea", "jugador adelantado","fue con la mano")
    }

    method fifa(jugada) = return equiposGanadoresMundiales.contains(jugada.equipoConvirtio())

    method masGoles() = return true

}

class tarjetas{
    var intensidad
    var jugadoresInvolucrados = []

}

class partido{
    var local
    var visitante

    var jugadasPrimerTiempo = []
    var jugadasSegundoTiempo = []

    method puntos(equipo){
        if(equipo.gano()){
            return 3
        }
        else if(equipo.empato(){
            return 1
        }
        else{
            return 0
        }
    }

    method masJugadasPrimerTiempo() = return jugadasPrimerTiempo.size() > jugadasSegundoTiempo.size()


}


class equipo{
    var jugadores = []
}

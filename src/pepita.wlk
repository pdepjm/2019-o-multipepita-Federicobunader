object pepita {
	var energia = 340

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500,1000)
	}
	
	method cuantoQuieroVolar(){
		return energia/5 + self.factorDeVuelo()	
	}
	
	method factorDeVuelo(){
		var distanciaExtra = 0
		
		if(self.esMultiploDe20()){
			self.sumarDistancia(distanciaExtra,15)
		}
		if(self.estaEnElRango()){
			self.sumarDistancia(distanciaExtra,10)
		}
		
		return distanciaExtra
	}
	
	method sumarDistancia(distancia,cantidad){
		return distancia + cantidad
	}
	
	method esMultiploDe20(){
		return energia % 20 == 0
	}	
	
	method estaEnElRango(){
		return energia.between(300,400)
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		else if(self.estaFeliz()){
			self.vola(8)
		}
	}
}

object roque {
	
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()	
	}
}

object mijo {
	var estaMojado = false
	
	method mojarse(){
		estaMojado = true
	}
	
	method secarse(){
		estaMojado = false
	}
	
	method energiaQueOtorga(){
		if(estaMojado){
			return 15
		}
		else{
			return 20
		}
	}


}

object canelones{
	var tieneSalsa = false
	var tieneQueso = false
	
	method energiaQueOtorga(){
		return 20 + self.energiaDelIngrediente()
	}
	
	method agregarSalsa(){
		tieneSalsa = true
	}
	method agregarQueso(){
		tieneQueso = true
	}
	method sacarSalsa(){
		tieneSalsa = false
	}
	method sacarQueso(){
		tieneQueso = false
	}
	
	method energiaDelIngrediente(){
		var energiaExtra = 0
		
		if(tieneSalsa){
			self.sumarEnergia(energiaExtra,5)
		}
		if(tieneQueso){
			self.sumarEnergia(energiaExtra,7)
		}
		return energiaExtra
	}
	
	method sumarEnergia(energia,cantidad){
		return energia + cantidad
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
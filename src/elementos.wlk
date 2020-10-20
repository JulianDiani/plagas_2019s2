import plagas.*
class Barrios{
	var property elementos=[]
	method elementosBuenos(){
		return elementos.filter({e=>e.esBueno()})
	}
	method elementosMalos(){
		return elementos.filter({e=>not e.esBueno()})
	}
	method esCopado(){
		return self.elementosBuenos().size()> self.elementosMalos().size()
	}
	
	
	
}

class Hogar{
	var property nivelDeMugre=0
	var property confort=0
	method esBueno(){
		return nivelDeMugre<= confort/2
	}
	method esAtacado(plaga){
		nivelDeMugre+=plaga.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadDeProduccion
	method esBueno(){
		return capacidadDeProduccion>confHuerta.nivel()
	}
	method esAtacado(plaga){
		capacidadDeProduccion-=plaga.nivelDeDanio()*0.1
		if(plaga.transmiteEnfermedades()){
			capacidadDeProduccion-=10
		}
		}
}
object confHuerta{
	var property nivel=0
}

class Mascota{
	var property nivelDeSalud=0
	method esBueno(){
		return nivelDeSalud>250
	}
	method esAtacado(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelDeSalud-=plaga.nivelDeDanio()
			}
			}
}
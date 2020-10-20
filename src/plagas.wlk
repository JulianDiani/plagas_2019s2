import elementos.*
class Plaga{
	var property poblacion=0
	var property plagas=[]
	method transmiteEnfermedades(){return poblacion>=10}
	method atacar(elemento){
		poblacion *=1.1
		elemento.esAtacado(self)
	}
	
}

class Cucarachas inherits Plaga{
	var property pesoPromedio
	method nivelDeDanio(){return poblacion/2}
	override method transmiteEnfermedades(){
		return pesoPromedio>=10 &&super()
	}
	override method atacar(elemento){
		pesoPromedio+=2
		super(elemento)
	}
}
class Pulgas inherits Plaga{
	method nivelDeDanio(){return poblacion*2}
}
class Garrapatas inherits Pulgas{
	override method atacar(elemento){
		poblacion*=1.2
		elemento.esAtacado()
	}
	
}
class Mosquitos inherits Plaga{
	method nivelDeDanio(){return poblacion}
	override method transmiteEnfermedades(){
		return super() && poblacion%3==0
	}
}
/** El Lobo Feroz*/

/** Requerimiento Basicos */
object loboFeroz {
	
	var pesoLobo = 10
	
	method pesoLoboFeroz() {
	 return pesoLobo
	}
	
	method elLoboSufreCrisis(){
		pesoLobo = 10
	}
	
	method elLoboEstaPerfecto(){
		return ( pesoLobo > 20 and pesoLobo < 150 )
	}
	
/** historia de caperucita roja */
/** el lobo se encuentra corriendo por un bosque  */

method correr(){
		pesoLobo = pesoLobo -1
	}
/** el lobo se encuentra con caperucita y hablan sin hacer nada mas.
caperucita del miedo se le cae una manzana  */

/** el lobo se come a la abuelita y se disfraza de ella. */
/** para que sea mas sencillo de comprender el lobo a comerse a la abuela se disfraza de la abuela.
pero su representacion es la misma, loboFeroz = loboDisfrazado */
method comerAbuela(persona){
	pesoLobo = (persona.pesoAbuelita() + pesoLobo) / 1.10
} 
/** caperucita llega a la casa de abuela y la recibe el loboferoz disfrazado
loboFeroz/loboDisfrazado : hola nieta.
caperucitaRoja: hola abue.
conversacion entre nieta y abuela.*/
/** final malo */
/** el lobo feroz Disfrazado de la abuelita de caperucita se come a caperucita */
method comerA(persona){
	pesoLobo = (persona.pesoCaperucita() + pesoLobo + caperucitaRoja.pesoDeCanastaConManzanas())/ 1.10
}  
/** final bueno  */
/** antes de que el lobo se coma a caperucita el leñador aparece y espanta al lobo feroz */  
/** y huye a  "metros" de distancia de la casa */        
method elLoboEscapaAsustado(metros){
	pesoLobo =(pesoLobo - metros).max(0)
	self.elLoboSufreCrisis()
}
/** final neutro */
/** antes de que el lobo se coma a la caperucita el leñador aparece y el lobo se asusta tanto que sufre una crisis */
method elLoboSeAsusta(){
	self.elLoboSufreCrisis()
}

/** historia de los 3 chanchitos */
/** lobo debido a que no se pudo comer a caperucita se quiere comer
a unos chachitos que hay en el bosque */
/** ve a un chanchito en una casa de paja */
/** debido a que la la casa de paja no tiene resistencia, el lobo 
no gasto la suya */
method elLoboSoplaLaCasaDePaja(){
	return pesoLobo 
}
/** el chanchito pequeño se va a la casa de su hermano mediano, por que el lobo derrumbo su casa */
method elLoboSoplaLaCasaDeMadera(){
	pesoLobo = (pesoLobo - chanchitoMediano.pesoChanchitos() + 5).max(0) 
}
/** los chanchitos despues de que la casa de madera se cae ellos escapan a la casa de su hermano mayor
que construyo una casa de ladrillos. */

method elLoboSoplaLaCasaDeLadrillo(ladrillos){
	pesoLobo = (pesoLobo - chanchitoGrande.pesoDeTodosLosChanchitos()-(ladrillos * 2))
}
/** El lobo derrumba la casa de ladrillos y se come a los 3 chanchitos.
como consuelo por no poder comerse a caperucita. */
method ElLoboSecomeAlosChanchitos(){
	pesoLobo = pesoLobo + chanchitoGrande.pesoDeTodosLosChanchitos()
}
}
/**Caperucita Roja */
object caperucitaRoja{
	
	var pesoCaperucita = 60
	var canasta =0
	method pesoCaperucita(){
		return pesoCaperucita
	}
	method canastaConManzanas(manzana){
		canasta =  canasta + manzana * 0.2
	}
	method perderAlgunasManzanas(manzanas){
		canasta = (canasta - manzanas * 0.2).max(0)
	}
	method pesoDeCanastaConManzanas(){
		return canasta
	}
}
/** abuelita */
object abuelita{
	var pesoAbue = 50
	
	method pesoAbuelita(){
		return pesoAbue
	}
}
/** los chanquitos */

object chanchitoPequeno{
	var pesoChanchito = 40
	
	method pesoChanchito(){
		return pesoChanchito
	}
}
object chanchitoMediano{
	var pesoChanchiMediano = 50
	var pesoChanquitos = 0
	
	method pesoChanchiMediano(){
		return pesoChanchiMediano
	}
	method pesoDeLosChanchitos(){
		 pesoChanquitos = ( pesoChanchiMediano + chanchitoPequeno.pesoChanchito())
	}
	method pesoChanchitos(){
		return pesoChanquitos
	}
}
object chanchitoGrande {
	var pesoChanchiGrande = 70
	var pesoDeTodosLosChanchitos = 0
	method pesoChanchiGrande(){
		return pesoChanchiGrande 
	}
	method pesoDeLos3Hermanos(){
  pesoDeTodosLosChanchitos = self.pesoChanchiGrande() + 
   chanchitoMediano.pesoChanchiMediano() + 
   chanchitoPequeno.pesoChanchito()
	}
	method pesoDeTodosLosChanchitos(){
		return pesoDeTodosLosChanchitos
	}
}
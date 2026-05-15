object cosas {
 const cosas = [knightRider , contenedorPortuario]



 method pesoDeObjetos(){
 return 4
 }
}


object knightRider{
 method peso() = 500


method peligrosidad() = 10
}


object bumblebee{
var estaTransformado = true 

 method peso() = 800



 method estaTransformado() = estaTransformado



 method peligrosidad()
 {
 if (self.estaTransformado())
 {
return 15
 }
 else{
 return 30
 }
 }


 method transformarse()
 {
 estaTransformado = true
 }


 method destransformarse()
 {
 estaTransformado = false
 }
}



object paqueteDeLadrillos{
 var cantidadDeLadrillos = 0


method peso() = 2 * cantidadDeLadrillos


 method nuevaCantidadDeLadrillos(unNumero){
 cantidadDeLadrillos = unNumero
 }


 method agregarLadrillos(cant)
 {
 cantidadDeLadrillos += cant
 }


 method peligrosidad() = 2


}


object arenaAGranel{
 var peso = 0


 method peso() = peso


 method cambiarPeso(unValor){
    peso = unValor
 }


 method peligrosidad() = 1


}


object bateriaAntiaerea{
 method peso(){
 if (self.tieneMisiles()){
 return 300
 }
 else{
return 200
 }
}


method tieneMisiles() = true


 method peligrosidad()
 {
 if (self.tieneMisiles())
 {
 100
 }
 else
 {
 0
 }
}


}


object residuosRadioactivos
{
 var peso = 2


 method peso() = peso



 method cambiarPeso(unValor){
 peso = unValor
 }


 method peligrosidad() = 200
}



object embalajeDeSeguridad
{
 var pesoObjetoEmbalado = residuosRadioactivos.peso()

 var peligrosidad = residuosRadioactivos.peligrosidad()



 method peso() = pesoObjetoEmbalado

 method peligrosidad() = peligrosidad


 method embalarNuevoObjeto(nuevoObjeto)
 {
         pesoObjetoEmbalado = nuevoObjeto.peso()
         peligrosidad = nuevoObjeto.peligrosidad() / 2
 }


}


object contenedorPortuario
{
 const objetosDentro = []


 method peso() = 100 + objetosDentro.sum({p => p.peso()})


 method meterElemento(unElemento)
 {
 objetosDentro.add(unElemento)
 }


 method peligrosidad()
 {
 if (objetosDentro.isEmpty())
 {
  return 0
 }
 else{
 return self.mayorPeligrosidad().peligrosidad()
 }
 }


 method mayorPeligrosidad()
 {
 return objetosDentro.max({p => p.peligrosidad()})
 } 
}
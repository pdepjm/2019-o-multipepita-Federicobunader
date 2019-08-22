# Pepita la golondrina

Implementar un objeto que modele a **Pepita**, una golondrina de la que nos interesa saber si está cansada en base a la energía que tiene en cada momento, medida en joules.
En el modelo simplificado que nos piden implementar, las únicas acciones que vamos a contemplar son:
- cuando Pepita _vuela_ una cantidad de kilómetros, en este caso gasta un joule por cada kilómetro, más 10 joules de "costo fijo" de despegue y aterrizaje.
- cuando Pepita _come_ una comida su energía aumenta según lo que otorgue el alimento.
  - El _alpiste_ otorga 4 joules por cada gramo.
  - La _manzana_ otorga siempre 50 joules.


La energía de Pepita nace en 100. El alpiste comienza con 10 gramos.

#### Nos dicen que pepita está cansada cuando su energía se encuentra por debajo de los 50 joules.

<br>

El objeto que implementa este modelo de Pepita, debe entender los siguientes mensajes:
- `estaCansada()`
- `vola(kilometros)`
- `come(comida)`

P.ej. el siguiente código debería ser válido para usar en un REPL:
```wollok
>>> pepita.volar(10) // Gasta 20 -> queda en 80
>>> pepita.come(alpiste) // Gana 40 -> queda en 120
>>> pepita.vola(100) // Gana 110 -> queda en 10
>>> pepita.estaCansada()
true
>>> pepita.come(manzana) // Gana 50 -> queda en 60
>>> pepita.estaCansada()
false
```


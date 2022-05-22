# Clon de cartucho Driver-Test
## Descripción
Este es un programa, distribuido en cartucho diseñado expresamente para él, que se usó (se sigue usando?) en los centros psicotécnicos para renovar el carné de conducir.

Necesita un MSX-2 para funcionar. Probado en un Philips VG-8235. También probado en BlueMSX usando C-BIOS y emulando un MSX-2. En este caso, la ROM debe cargarse como ROM de 64KB. No usa ningún mapper externo.

El cartucho original consta de una EPROM tipo 27512, de 64K x 8 bits, y circuitería extra que funciona según el esquema adjunto:
![esquema informal del circuito extra del cartucho](docs/esquema_circuito_driver_test.jpg)

Para hacer el clon de este cartucho, me he basado en un ![kit estándar para hacer cartuchos de MSX](https://www.ebsoft.fr/shop/es/home/28-msx-cartridge-kit-16-64k.html). La placa diseñada se suelda encima de esta otra.

Placa con la circuitería extra. Al fabricar la PCB, pedir que tenga un grosor no mayor de 1mm (en lugar del habitual de 1.6mm).
![](docs/placa.jpg)

Placa presentada en el lugar donde será soldada en la PCB del cartucho principal.
![](docs/placa_puesta_encima_cartucho.jpg)

Placa completamente soldada. El cable que parece desaparecer por una via, va soldado al pad CLK del cartucho por el otro lado.
![](docs/placa_soldada.jpg)

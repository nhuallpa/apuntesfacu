# Comandos para instalar listings mediante el manejador tlmgr#

    sudo apt-get install xzdec
    tlmgr init-usertree
    tlmgr install listings
    tlmgr install xcolor
    
# Comando para instalar manualmente:

1. Descargar el zip y ubicarlo en /home/nestor/texmf/tex/latex
2. Decomplimir y compilar el archivo dtx para obtener el .sty. Ejemplo:

    tex letltxmacro.dtx
    
# Dependencias
* listings
* xcolor
* pdftexcmds
* infwarerr
* letltxmacro
* adjustbox
* upquote
* xkeyval
* mathtools



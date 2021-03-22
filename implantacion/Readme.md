# 7517 Implementación de sistemas

## Clase 1: Introducción


#### Profesores
- Betini
- Lucrecia

#### Fechas
- 19/10: vemos ejercicios del final del pdf de la clase 1
- 21/10: ejercicio 1 y 2 del pdf clase 2.
- 28/10: exponer cómo aplicar la transformación digital en la fase de
- 1er Parcial: Miercoles 15 de noviembre
- 2do recuperatorio: 16 de diciembre
- Presentación: 

#### Contenidos:
1- Implantación
2- Auditoria


#### Analisis de Factibilidad
Si cada vez cuesta mantener un sistema vs la ganancia de retorno obtenida por el sistema.
O Cuando la herramienta no es competitiva frente a la competencia.


#### Etapas de Implantación

- **Método de implantación**: 
    - Directo (No conviven) o paralelo (conviven o co-existen). 
    - Big bang o por modulos.
- **Fecha Operativa**, es la fecha de puesta operativa y entra en vigencia el nuevo sistema.
- **Calidad de la información**:
    - Depuración de datos
    - Transformación de datos para la explotación
    - Carga inicial
- **Marco normativo**: Validar y actualizar los manuales de autorización y de procedimientos (si es necesario, por alguna responsabilidad que se dejo de hacer) según lo defina la organización.
- **Capacitación**: Entrenamiento de los usuario del sistema y responsables de su operación.
- **Perfiles de usuarios**: Los permisos de usuarios sobre los modulos de la aplicación. Criterios de definición por minimo y suficiente.
- **Interfases con otros sistemas**: Desarrollo y prueba de las interfaces del sistema con los otros sistemas con los cuales debe interactuar.
- **Test de stress-hard-soft**: Pruebas de sistemas en ambiente de carga real. Instalación, compatibilidad y rendimiento del hard y del soft.
- **Plan de corte**: Checklist de actividades para dar de baja el sistema que se reemplaza y alta del nuevo.
- **Plan de contingencia**: Plan si falla el sistema al momento de la puesta operativa.
- **Analisis Post Implantanción**: Identificar las mejoras. Regla 80-20, como se aplicaria en este caso?


#### Sistema externo o a medida.


#### Responsabilidad de lideres de proyectos:
- Controlar el proyecto.
- Controlar el Diagramas de Gant.
- Identificar el camino critico (CPM).
- Identificar los riesgos para evitar demoras.

#### Orden de prelación

Algunas etapas pueden realización se pueden realizar en paralelo.


Es importante lo que hace el software. El hard cada vez es mas barato.
Capacitación de datos ficcticios. No se utilizan datos productivos por sensicibilidad.
Se examinan aquellas partes que puedan fallar o mejorar en la implementación.


## Clase 2: Clase de interfaces

### Metodos de implantación

1. En función de la *coexistencia del tiempo*.
    - **Directo**: Reemplaza un sistema por otro.
        - Ventajas: 
            - Es menos costoso.
            - Se obtiene beneficios mas rapidamente.
        - Desventajas:
            - Es mas riesgoso ante fallas.
            - Se requiere una planificación mas riesgosa.
            - Hipotesis???? PREGUNTAR
            - Se requieren pruebas mas completas y rigurosas.
    - **Paralelo**: Los sistemas conviven por un tiempo para compararlos.
        - Ventajas:
            - Se descubren nuevos escenarios.
        - Desventajas:
            - Falsa sensación de seguridad.
            - Mas costos
            - Implementación lenta.

2. En función de la *modularidad*.

    - **Bigbang**: Se implementa en su totalidad.
        - Ventajas: Menos costoso y beneficio rapido.
        - Desventajas: Riesgoso ante fallas.
    - **Escalonado por algun criterio**: Por modulo, por funcionalidad, por sucursal, por región, por pais, por area.
        - Ventajas: Menos recursos necesario en cada etapa.
        - Desventajas: Se exitiende la implementación y pueden haber repercuciones en el sistema.

3. Combinando ambos: Se pueden combinar los anteriores.

### Variables a tener en cuenta.

1. Estructura organizativa.
2. Naturaleza del negocio.
3. Sensibilidad de la información.
4. Disponiblidad de los recursos.
5. Costos.
6. Exigencias del negocio.

### Interfases

Interfases integradas: Dentro de un paquete unico interactuan distintos modulos de forma integrada.
Interfases no integradas: Distintos paquetes/sistemas que interactuan utilizando interfases.

**Clasificaciones**:

- _Respecto de su duración_.
    - Permanente o definitiva:
    - Temporal: Solo existen durante la implementación.
        - Se utilizan en metodos de implantación escalonado.
        - Para comparar dos sistemas en paralelo.
        - Se utilizan en migración de datos.
- _Respecto a su ubicación_.
    - Integrada: Dentro de un paquete de modulos.
    - No integrada: Dos a mas *sistemas* diferentes.
- _Respecto a su modo de ejecución_
    - Manual: Interacción de usuario
    - Automatica: Un programa planificador.


**Verdadero y Falso**

1. En el método de implantación en paralelo hay dos puestas operativas.
    - Falso, solo hay una puesta operativo, cuando se deja de utilizar el sistema a reemplazar.
2. Si hago una capacitación exhaustiva, hay mayor probabilidad de una implantación directa
exitosa.
    - Falso, solo reduce los riesgos ante fallos.
3. Al no contar con la disponibilidad del usuario por falta de tiempo, entonces implementamos en
forma directa.
    - Falso, no es el criterio a utilizar. Pero se debe consensuar por el usuario o dueño de los datos.
4. En el método de implantación escalonado hay varias puestas operativas con el mismo lapso de
tiempo entre unas y otras.
    - Verdadero, N P.O de acuerdo a criterio de dos o mas.

---

## Clase 3: Calidad de información

Objetivo: Inicializar los datos para el nuevo sistema/existente.

- Eliminación y Depuración: 
- Reconciliación y Balanceo: 
- Conversión de datos

### Situaciones que incitan a la migración de datos

- Cambios de versión de Base de Datos. Tambien garantizar la confiabilidad de los datos.
- Cambio de aplicación: Debido a que cada uno tiene su propio modelo de datos.
- Enviar datos a la Nube: Mantener competitividad, reducir costos.
- Fuciones de empresas: Uniciar el sistema en un solo sistema.

### Proceso de migración

- Existen dos tipos de datos: 
    Dinamicos:
    Estaticos:
- ¿Cuando comenzar la migración?
    - Antes, Continuar despues o en cualquier momento.
- Evaluar y analizar
    - ¿Cuantos datos de la empresa requiere migración?
    - ¿Son datos estructurados o no estructurados?
    - ¿Cuantos de los datos son ROT(redundantes, obsoletos, tribiales)?
    - ¿Es la información o reciente?
    - ¿Como es el nivel de validación de entrada del sistema existente?
    - Balancear los datos
- Revisar los requisitos de conversión
- Metodo para cargar información
    - Introducción desde teclado
    - Sistemas a medida
    - Sistema de paquetes
    - Utilitarios
    - Bases externas
    - Uso de Robot
        - Un paquete diseñado especificamente para migración de datos en base de reglas y configuración.
- Desarrollar estrategia para reconcialiar los datos convertidos.
    - Identificar errores y estrategias de depuración.

- Ejemplo
    - Ejercicio 1:Uso de tabla de-para, donde se mapea el codigo viejo al codigo nuevo.
    - Ejercicio 2: Los datos del cuit se deben normalizar(eliminar duplicado, completar faltantes), Separar datos destructurados a estructurados.
- Verdaderos y Falso:
    - Los criterios de depuración los define el usuario. Pero los puede validar con auditoria.
    - La migración de datos estatico se realiza con **interfaces temporales**
- Pasos para una correcta implantación de un Dato.
    - En el CUIT verificar los siguientes pasos
    - Las ordenes de compras activas es una validación mas fuerte que la validación de proveedores.

---

## Clase 4: Manual de usuario y Capacitación:

### Manual de usuario

- Objetivo: Tener instrucciones de como funciona el sistema.
- Elaborar teniendo en cuenta a quien va dirigido y como ordenarlo.
- Diseño
    - Objetivo
    - Glosario
    - Guia de uso
    - Errores comuntes
    - Contacto de soporte
- Caracteristicas
- 13 pasos terribles a evitar:
    - Evitar lo evidente.
    - Intentar confundir.
    - Ocultar información.
    - Utilizar jerga complicada.
    - Evitar poner ejemplos.
    - Tener un indice inutil.
    - Hacer un manual y no probarlo.
- Observaciones: 
    - Preguntarse porque requiere utilizar un manual.
    - Se pueden utilizar otra tecnologia para los manuales como los
        - Videos
        - Bots.
    - ¿Quien escribe el manual de usuario? 
        - Analistas en conjunto con equipo de comunicaciones y redactores.
        - Otros con mas comunicación, utilizan, diseñadores y psicologos.
    

### Capacitación

1. Dos enfoques:
    - Comunicación unilateral(Comunicar y mostrar)
    - Aprendizaje practico (Intercambio entre instructores y participantes)

2. Determinar el personal a Formar.
3. Determinar el alcance y la estrategia.
    - Si es directo, la implementacion es directa, se debe capacitar exaustivamente. Pero si es paralelo, se tien mas tiempo para asimilar el conocimiento.
    - Indicardor: Asistencia a las capacitaciones. Si no se cumple con el limite de indicador, evaluar mover la fecha de puesta operativa.
    - Evaluar impacto del sistema en la organización.
        - Curso por area
    - Preparar las clases:
        - Si es presencial o remoto. Importate que no sea en el mismo puesto de trabajo.
    - Se hace un _Plan de capacitación_ 
        - Establecer titulo y objetivos
        - Establecer el idioma
        - Orden de presentación de los módulos
        - Duración del curso
        - Plazo previsto para realizar los cursos
        - Ubicación en donde dictarlo (si es presencial)
        - Cuidar que las áreas no queden vacías
        - Lugar físico
    - Quien va a dar el Curso?
        - Instructores: Analistas, instructores externos/internos, capacitar capacitores. 
        - Auto-instrucción
        - Aprendizaje practico de prueba y error
        - Inteligencia Artificial.

- Verdaderos y Falso:
    1. La capacitación de usuarios debe realizarse antes de la conversión de datos para depositar confianza en el control de la conciliación de los datos migrados
        - Falso: La conciliación y la capacitación se hacen en etapas diferentes. Cuando se capacita se hace con datos ficticios y no con datos productivos por confidenciabilidad.

    2. La capacitación a usuarios debe realizarse junto con la prueba del sistema a fin de que mientras los mismos aprenden detecten los errores del sistema.
        - Falso: El sistema no debe tener errores evidentes para evitar mala prensa. Tener en cuenta que la primer impresión cuenta.


### Plan de pruebas

1. Objetivo del plan de pruebas: Validar y Verificar el correcto funcionamiento de la pieza de software. Ademas validar que responda correctamente en los tiempos esperados.
2. La diferencia entre probar un sistema propio y uno estandar es el conocimiento necesario para cubrir todos los casos.
3. Los responsables son desarrolladores, analistas y Testers

4. Los sistemas como machine learning pueden utilizarse para probar sistemas.

5. Verificar y determinar los parametros de configuración de funcionamiento en el sistema. 

6. Ademas de las pruebas de software. Hay que tener en cuenta las pruebas de diseño contemplando casos de borde.

7. En los algoritmos de inteligencia artificial pueden haber prejuicios por no agregar los grupos de analisis necesarios. Ejemplos: sistemas de salud, sistemas bancarios, pueden discriminar por ser racistas.





Ejercicio

Alternativa 1: Los defectos encontrados.
- El gerente general participa en la mayoria de las operaciones. Resta mucha flexibilidad y autonomia.
- Es de firma unica.

Alternativa 2:
- Se revisan la cantidad de operaciones que hace cada grupo de firma
- Hay un gap entre los intervalos para los montos donde no se indica quienes son los aprobadores.
- El manual de autorizaciones no indica el orden de las firmas ó/y se necesitan ambas firmas.

Criterio correcto para el armado del manual
- Las transacciones deben estar mas distribuidos. 
- Repetando las dobles firmas y con todos los rangos cubiertos.
- Las firmas no se suman porque con mayor firmastes, se suele confiar en las revisiones. Por ejemplos, comprador, jefe de compras, gte de abastecimiento y gerente general. Solo se pide la firma del Gte de abastecimiento y el Gerente General.

Para elegir la alternativa:
- Se deben dejar los montos chicos al Jefe de Compras y el Comprador.
- El Director Administrativo financiero, no puede participar porque no es su area de compas. Siempre debe participar el departamento de compras. Pero puede entrar para realizar una evaluación técnica sobre los montos extremadamente grandes.

Discusión:
- El manual de practicas operativas es un documento de menor nivel, para detallar como se ejecutan las tareas en particular. Si no tiene politicas, ni procedimiento, ni autorizaciones, lo primero que se debe definir es el manual de autorizaciones.


V y F
1- Verdadero. Es la definicion.
2. Falso. El nuevo manualDebe entrar en vigencia con la fecha de puesta operativa
3- Falso. Se deba analizar los perfiles de usuario cargados para validar inconsistencias.
4. Falso. Primero se cambian los manuales y procedimientos.
5. Falso. El manual de procedimiento define las Tareas y responsabilidades y el manual de usuario las funciones del sistemas.


## Clase 09/11/2020: Pruebas de Stress, Hardware y Soft

### Analisis Post-Implantación
- Indentificar erroes que no pudieron encontrar en la etapa de pruebas. Resultados imprevistos. 
Estas tareas se deben tener en cuenta en el contrato.
- Identificar aspectos de mejora
- Identificar cambios de reglas de negocio
- Verificar si se esta utilizando el sistema. Se comprara contra el historico del sistema anterior.
- Cerrar la puerta del sistema anterior para evitar.
- Revisar el comportamiento de las interfases
- Acompañar la puesta en regimen del nuevo sistemas.
- Que aprendimos del cliente.
- Compartartir el know-how para capitalizar el conocimiento y eficientizar el proceso. 
- Identificar potenciales recursos valiosos que podemos incorporar.


## Clase 02/11/2020: Clases practica - Manual de procedimiento.

Ejercicio 4.
- Armar el encabezado del procedimiento
    - Nombres
    - Objectivo
    - Comentarios:
        - Escribir Figura, Función, Controles.
        - Describir todos los posibles resultados.
        - Se deben declarar la recepción de documento.
        - Escribir las excepciones si lo hay.

- Armado del manual de autorizaciones:

| Puesto/Nivel | Limite Maximo |
|--------------|---------------|
| Gerente de personal | sueldo < 100|

- Realizar organigrama.

#### Ejercicio 6.

- Hipotesis

- Escalonado por Sucural y Directo por Bigbang. Es directo porque se actualizan todos los cajeros en sistemas porque es un sistema integrado.
- La puesta oporativa es una por sucursal para poder monitear los cambios, con los recursos disponibles.

- Intefaces: No interactua con la central.
    - Temporales: no hay porque es bigbang
    - Definitiva: 

- Calidad de datos
    - No hay depuracion
    - No hay migración.
    - Carga inicial de los servicios que no pago una persona.
    - Carga inicial de modulo de preguntas para identificar el cliente.

- Manual de normas y procedimientos
    - Actualizar el procedimiento de cajero, tesorero y recupero de tarjetas.

- Capacitación:
    - Cliente y Operador
    - Tesorero, para autorización.
    - Cajeros por nuevo flujo de operación.

- Perfil
    - Modifica el operador, para recupero de tarjeta.

- Plan de pruebas de Hard-Soft-: 
    - Hardware:
        - Revisar las camaras existentes.
        - Probar cajeros nuevos.
    - Stress:
        - Probar todos los cajeros al mismo tiempo realizando una extracción-
    - Funcionales:
        - No permitir depositos menores a 30
        - Tesorero tiene que tener el perfil de aprobación.
        - El operador debe poder provver las proguntas.
        - El pago de servicio se inpute
        - Permitir extracciones
        - Permitir deposito
    - Integrales
        - Extraccion, tarjeta retenida, preguntas, recupero.
    - Volumen: 
        - Actualización de información de los pagos de personas.
    - Pruebas de Perfiles.
    - Pruebas de interfases.
    - Post implantación:
        - Verificar si hay menos clientes en cajeros humanos.
        - Los clientes Gold, tienen mejor atención?
        - Fue util para el cliente el pago de servicio.
        - Es sufiente la cantidad de cajeros.

Profesora brolloml@gmail.com 
Hacer el ejercicio 3 y el 12




## Clase 16/11/2020: Clases Teorica - Plan de contigencia y Plan de Corte.

### Plan de Corte:
- Es un proceso vital para poner un proyecto en su _ciclo de vida operativo_. 
- Desde que se comunica al usuario final, hasta que se encuentra operativo la nueva funcionalidad.
- ¿Porque debe existir un plan de corte?
    1. Para tener una migración controlada desde un ambiente de QA hasta el entorno operativo.
    2. Establecer una fecha para la finalización de la implementación.
- Elegir ventana de corte y momento.

- Ambiente pre-productivo: Simulación de producción para probar principalmente la estructura y validación del tiempo de corte. 

- **Requisitos del plan de corte**.
    1. Todas las necesidades se han incorporado en el diseño del nuevo sistema.
    2. Se han completado todas las pruebas con el OK de usuario.
    3. Simulacro de pre-producción con el usuario. En las pruebas estan los usuario finales que son claves que conosca el negocio. 
    4. Se completo la capacitación a todos los usuarios. 
    5. Que este finalizado la documentación del sistema. Documentación funcional, diseño y pruebas.
    6. Todos los puntos criticos de la salida a producción. Ejemplo: Si una interfase necesita una conexión estable, un requisito es que se encuentre disponible el hardware para que la conexión sea estable en producción.
- **Etapas del plan de corte**.
    1. _Estrategia de corte_, teniendo en consideración el método de implementación seleccionado.
        - Aspectos Claves: 
            - Plazos y condiciones del mercado debido a competencias.
            - Requisitos respecto a la disponibilidad de recursos.
            - Alineación del plan a los objetivos de la organización.
            - Configuración de la comunicación organizacional. Es clave para que se entienda la ventaja en toda la organización
    2. _Planificación del plan_
        - Debe estar _bien diseñada_, _claro_ y _detallado_.
        - Incorporar las siguientes _acciones_:
            * Determinar sector responsable, tareas, momento de cada uno y secuencialidad de las tareas.
            * Planificación de la disponibilidad de hardware y software.
            * Planificación de los recursos necesarios.
            * Comunicación del "Go Live" al grupo de usuario relevantes.
            * Definición del circuito de gestión de problemas. Como se va a tratar ante un inconveniente que tenga el usuario en el nuevo sistemas y los tiempos de resolución (SLA).
            * Especificar las tareas que pueden realizar y cuales no, los usuarios, durante el periodo de corte.
            * Definición del grupo que va a dedicarse exclusivamente al monitoreo y control de la marcha del plan.
            * Definición de los criterios claves del exito del plan para su medición.
            * Elaborar el plan de contingencia.
    3. Ejecución del plan.
        - Se necesita la participación activa de la alta gerencia.
        - Acciones:
            - Comunicación de la estrategia a las partes involucradas.
            - Información del plan de corte detallado a las ares involucradas.
            - Garantizar que los usuarios principales esten disponibles para las pruebas.
            - Colocar fecha fin del plan de corte una vez que termine la puesta opertativa.
            - Inauguración del nuevo sistema.
            - Comunicación del fin del plan de corte
        - Tareas especifica del plan de corte durante la ejecución.
            * Baja de usuarios en el sistema a reemplazar. Solo queda de consulta.
            * Mesa de ayuda para la post-implantación.
            * Ajustar datos estaticos y dinamicos en el nuevo sistema.
        - ¿Que sucede en la puesta operativa (PO)?
            * Entra en vigencia el nuevo marco normativo.
            * Habilitación de interfases del sistema viejo al sistema nuevo.
            * Se habilitan usuario en el nuevo sistema.

    4. Control de cumplimiento.
        - Es el soporte post Go Live hasta que el nuevo sistema se encuentre en regimen y sea entregado a soporte de aplicación.
            - Nivel 1: Mesa de ayuda.
            - Nivel 2: Soporte de aplicaciones.
            - Nivel 3: Desarrollo
        - Despues de verificar que el sistema se encuentra en regimen, se comunica el cierre del proyecto.


> Se debe empezar en un plan de corte cuando se elige el metodo de implantación.

**V y F:**
- Si la plataforma de HW no cambia, entonces no es necesario replantear el circuito administrativo asociado a la aplicación que se implementa.
    - F, no esta relacionado el circuito administrativo con la plataforma de Hardware.
- La fecha de puesta operativa del nuevo sistema debe coincidir con el cierre del ejercicio contable a fin de facilitar la tarea. 
    - F, No se asegura que facilite la tarea de implementación.
- El análisis post-implantación no considera entre sus tareas el análisis sobre la conversión de datos. 
    - F, Si se genera un problema debido a una conversión se realiza el analisis.
- Para modificar los perfiles de acceso de un usuario, el responsable de la Aplicación (área usuaria) debe aprobar los nuevos permisos de acceso al Administrador de Seguridad.
    - V, el responsable debe solicitar los usuario y perfiles.
- Cuando definimos que una implantación se realizará con el método directo se infiere que se implantan todos los módulos.
    - F, Puede ser bigbang o escalonado por un criterio.



### Plan de Contingencia: 
Elegir con criterio, como seria la contigencia si falla la implementación.


## Clase 30/11/2020 Auditoria

 Valida cantidad de empleados, validar los calculos de  Valida cantidad de empleados, validar los calculos de liquiedaciones, validar calculo de nominas. Validar los aumentos. Reaseguro el control de la auditoria. Valida cantidad de empleados, validar los calculos de liquiedaciones, validar calculo de nominas. Validar los aumentos. Reaseguro el control de la auditoria.ones, validar calculo de nominas. Validar los aumentos. Reaseguro el control de la auditoria.

### Auditoria de calidad
### Auditoria contable
- Da una opinión del balance que refleja la realidad de la salud del estado financiero de la empresa.
- Que los estados contables son confiables.

- Sist de control interno sobre el estado financiero. 
Asegura que los sucesos lleguen a las cuentas contables justo a tiempo para que se puedan firmar las certificaciones.
    - Las perdidas se deben registrar en el momento que se conoce. Por ejemplo, cuando se anticipa que no se puede cobrar una deuda. Es un criterio conservador para no manipular el resultado de la compañia.
    - Las ganancias se registran cuando se vuelven realidad.

### Auditoria Interna

Personal que reporta al top managmente de la compañia.
Tiene derecho a acceder a toda la información de la compañia. 
Reasegura el sistema de control amplio de la compañia.

- Proceso de negocio: Valida cantidad de empleados, validar los calculos de liquidaciones, validar calculo de nominas. Validar los aumentos. Reaseguro el control de la auditoria.

Identificar los riesgos probables y posibles para pensar en los controles para evitar daños a la compañia.

* Riesgo Inherente: Riestro intrinseco de cada actividad.
* Riesgo Residual: Riesgo que subsiste, despues de haber implementado los controles.
* Riesgo de control: Relacionado con falla en los controles. Que los controles implementados falles para mitigar un riesgo. 


Identificar errores, fraudes.
Se debe tener preparado el plan de contingencia.

### Auditoria Técnologica: 
Protege la disponibilidad de negocio a traves componentes y la comunicación.

1. Reasegurar la seguridad de Servidores, DB, Firewall, Control de ataques cibernaticos. Información no expuesta.

2. Sistemas de aplicación: Verifica las transacciones, que sean aisladas y que se registren en los correspondientes sistemas contables.

Mientras mas temprano sea la participación de auditoria.

### F y V
1. Falso. El area de dirección debe definir el plan de contingencia de negocio.
2. Falso. No tiene que ver la responsabilidad ni la antiguedad. Los perfiles se definen de acuerdo a la función que ejecuta el usuario.
3. Verdadero, pero debe estar bien implementado.
4. Falso.

#### Mapa de Riesgos
Evaluación de riesgos para poder asignar los recursos de auditoria.



## Clase 2/12 - Auditoria

Reducir la ventana de oportunidad.


Ejercicio Riesgos de Facturación y Cobranzas:

- ¿Que pasaria si el sistema deja de emitir las facturas pendientes de pago?
    - Un cliente tiene asignado un cobrador pero debe rotar el cobrador para evitar una relación.
    - El cobrador puede informar erroneamente el valor del importe cobrado al personal de Creditos y Cobranzas.
    - El cobrador solo deberia cobrar y no emitir notas de credito ya que es una función del persona de Creditos y Cobranzas.
    - El tiempo de entrega de los cobros es muy largo y pueden perderse el dinero recaudado.

> Al auditar no pensar en temas aislado, se debe evaluar todas las funciones del cobrador.

ACFE : Asociacion de Examinadores de Faudez Certificados.

Tarea: Sistema de Pago a Proveedores






## Practica de Auditoria

### Informe sintetico
Objetivo:

Alcance:

Diagnostico / Conclusión


### Detalle de auditoria


## Practica de Auditoria: Riesgo Tecnologico:

### Ejercicio:
1. Crear un usuario de ejemplo y probar que los roles asignados no tengo acceso restringido en las aplicaciones criticas. Quienes tiene roles asignados segun matriz de asignación. Verificar los logs de las aplicaciones en el ultimo periodo. Por ejemplo, los ultimos 6 meses o 1 año. 
2. Verificar los roles asignados si corresponden al puesto del usuario. Utilizando una matriz de puestos y roles. Evaluar si existe y esta bien segregada la matriz. Si tienen errores se arrastran a la implementación. Se analizara el diseño de la matriz. Si esta bien, revisamos los roles asignados a los usuario a nivel de perfiles. Se debe pedir permisos de accesos de solo lectura para obtener la información de forma independiente o sino presenciar junto al referente la bajada de información, por ejemplo, listado de usuario y logs. Si hay posibilidad de fraude o irregularidad, y solicitamos la información de rotación en RRHH.
3. Probar:
    - Dar de baja el usuario de prueba, y verificar que ya no tenga acceso o que este bloqueado.
    - Si es trasladado, revisar el procedimiento de tralado de empleado, y verificar que tenga alguana tarea de baja de permisos.

> Siempre revisar como estan roles hoy y como estaban los roles con minimo 6 meses atras o 1 año.


#### Controles generales (OBJETIVOS DE CONTROL TECNOLÓGICOS)

1. Revisar estructurar organizativa de sistemas para ver como estar armada y revisar incompatibilidad de funciones
2. Procedimiento de cambios a los programas, desde el area usuaria a producción. Relevar documentación y pruebas de que se cumplan
3. Pruebas de acceso general a los datos de aplicación. Ver que el usuario no tenga acceso a linea de comando.
4. Plan de continuidad. Ante un evento innesperado, como se debe proceder para asegurar la continuidad de negocio. Cuando se tiene que hacer el backup, donde y quien los hace.



#### Controles directos (OBJETIVOS DE CONTROL EN SISTEMA DE APLICACIÓN)
1. Que las transacciones sean correctas, exactas e ingresada una sola vez.
2. Que las transacciones en suspenso sean procesadas,analizadas y corregidas oportunamente. Ej:Partidas en suspenso para ingresar al sistema. Transacciones en suspenso.
3. Que las transacciones se registren en el periodo contable correcto. Apunta a aspectos contables. Periodo contable incorrecto. Las transacciones tienen que estar con la fechas corrientes.
4. Que los permisos de acceso sean segregados de funciones incompatibles.







### Preguntas Teoricas:

**¿Que es la Auditoria Internas?**

La auditoría interna: reasegura el sistema de control, hace su evaluación, propone recomendaciones y llega a un acuerdo con las áreas afectadas para que esos riesgos se solucionen. Se debe mitigar el riesgo, llevarlo lo más próximo a cero aunque siempre va a haber un umbral de riesgo no cubierto.
El objetivo primario de esta auditoría es ayudar a la compañía a cumplir con sus objetivos de negocio. Además como otro objetivo ayuda a la detección de riesgos y fraude.


**¿Que es la Auditoria Externa?**

La hace alguien que no reporta directamente a la compañía. Por ejemplo auditoría contable.
Auditoría contable: analizar los estados contables de la compañía y dar una opinión de si representan la realidad y si están efectuados bajo normas contables de la compañía (normas contables del país o si cotizan en bolsa tienen que cumplir con los requerimientos contables de dichas bolsas)
Estado contable: balance (activo, pasivo y patrimonio neto) y estado de resultados.


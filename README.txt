A continuación se incluye la explicación del contenido de cada archivo de sql utilizado en el ejercicio.

ProcedimientoLlenadoFactura: Procedimiento en plsql encargado de llenar de forma aleatoria los datos de una factura,
recibe el número de facturas que se quieren crear

ProcedimientoLlenadoDetalle: Procedimiento en plsql encargado de llenar de forma aleatoria los datos de un detalle, 
recibe el número de detalles que se quiere tener en cada factura

ProcedimientoLlenadoProdxTipo: Procedimiento en plsql encargado de llenar de forma aleatoria los datos de un proxtipo,
recibe el número de prodxtipo que se quieren crear

ProcedimientoLlenadoFacturaObjetual: Procedimiento en plsql encargado de llenar de forma aleatoria los datos de una factura que se implementó de forma objetual. Recibe el número de facturas objetuales que se quieren crear

ProcedimientoLlenadoDetalleObjetual: Procedimiento en plsql encargado de llenar de forma aleatoria los datos de un detalle que se implementó de forma objetual. Recibe el número de detalles objetuales que se quieren crear para cada factura
objetual

DeclaracionTiposObj: Se declaran los tipos de datos objetuales que simulan las tablas dadas 

DeclaracionTablasObj: Se crean las tablas de los diferentes tipos de datos definidos en DeclaracionTiposObj, además incluye
la función para realizar el select de forma objetual

DeclaracionTablasPropuestas1-2-3: Se crean las tablas necesarias, indices y clusters necesarios para cada propuesta dada,
Propuesta1: tablas dadas
Propuesta2: tablas dadas e indice en codfact de detalle
Propuesta3: tablas dadas y cluster sobre las tablas dadas

FuncionConcatenarkendall -> Función de concatenación.


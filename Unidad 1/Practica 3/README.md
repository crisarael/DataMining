# Practica 3
Escenario: usted es un científico de datos que trabaja para una empresa de consultoría.
Uno de sus compañeros del Departamento de Auditoría le ha pedido
para ayudarles a evaluar el estado financiero de la organización X.

Se le han proporcionado dos vectores de datos: ingresos mensuales y
Gastos del ejercicio en quiestion. Tu tarea es calcular
las siguientes matrices financieras:

- beneficio por mes
- beneficio después de impuestos para cada mes (la tasa de impuestos es del 30%)
- margen de beneficio para cada mes - igual al beneficio después de impuestos dividido por los ingresos
- meses buenos - donde la ganancia después de impuestos fue mayor que la media del año
- meses malos - donde la ganancia después de impuestos fue menor que la media durante años
- el mejor mes - donde el beneficio después de impuestos fue máximo para el año
- el peor mes - donde el beneficio después de impuestos fue mínimo para el año

Todos los resultados deben presentarse como vectores.

Los resultados para los valores en dólares deben calcularse con una precisión de $ 0.01, pero deben ser
presentado en Unidades de $ 1,000 (es decir, 1k) sin punto decimal.

Los resultados del índice de margen de beneficio debían presentarse en unidades de% sin
puntos decimales.

Nota: Su colega le advirtió que está bien que los impuestos de un mes determinado sean
negativo (en términos contables, el impuesto negativo se traduce en un activo por impuesto diferido).

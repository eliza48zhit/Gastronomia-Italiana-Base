🇮🇹 Gastronomía Italiana - Smart Contract (Base Mainnet)
Este contrato inteligente rinde homenaje a la vibrante y milenaria cultura culinaria de Italia, desplegado en la red Base. Utiliza una arquitectura de almacenamiento persistente que permite registrar platos de forma individual, creando un museo digital donde la tradición italiana se encuentra con la tecnología blockchain.

🔗 Verificación en Basescan

El contrato está verificado y abierto a la interacción pública. Cualquier usuario puede explorar el menú italiano, proponer nuevas delicias regionales y participar en la votación de los platos más icónicos.

Contract Address: 0xf8a379e8b21766d7068ce81d39fd554e6ec75e2a

Explorer Link: https://basescan.org/address/0xf8a379e8b21766d7068ce81d39fd554e6ec75e2a#code

🛠️ Detalles Técnicos

Esta versión sigue el modelo de gestión de datos avanzado:

Estructuras Dinámicas (struct): Los platos incluyen nombre, descripcion y un contador de likes independiente.

Historial Acumulativo (mapping): A diferencia de los primeros contratos, aquí los platos no se sobrescriben. Cada entrada genera un nuevo ID (1, 2, 3...), preservando toda la información enviada.

Capa de Interacción: Incluye una función de votación para que la comunidad destaque sus platos favoritos.

Optimización de Gas: Límite estricto de 200 caracteres por registro para asegurar transacciones eficientes.

📖 Instrucciones de Interacción

Consultar Menú: En la pestaña Read Contract, usa consultarPlato con un número de ID (ej. 1 para Pizza Margherita) para obtener los detalles.

Registrar Plato: En la pestaña Write Contract, usa registrarPlato para añadir nuevas especialidades (ej. "Pasta Carbonara", "Huevo, queso pecorino romano, guanciale y pimienta negra").

Votar: Usa darLikeAlPlato con el ID correspondiente para sumar tu apoyo a una receta.

🐈 Nota de Autoría
"Este contrato fue desarrollado bajo la curiosa mirada de mi gato y la inspiración de mis lecturas favoritas. Porque la programación, al igual que la cocina italiana, es un arte que requiere pasión, orden y excelentes ingredientes."

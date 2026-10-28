## Cronograma de Entregables y Dependencias Inter-Equipos
*(28 de octubre al 6 de noviembre)*

### Equipo 1: Identificación (Red Team)

**Actividades de Arranque (Inicio: 28 de octubre)**
*   Recolección de logs, análisis de tráfico y trazabilidad preliminar del compromiso.
*   Clasificación inicial de fallas sistémicas detectadas en la infraestructura.

**Entregable: Mapa de la Cadena de Ataque (Kill Chain) — Entrega: 30 de octubre**
*   **Dependencia:** Esta entrega es el insumo obligatorio para que el Equipo 2 pueda comenzar a redactar el Análisis de Impacto (BIA).
*   **Contenido esperado:** Debe mapear el incidente utilizando un estándar de la industria, como el framework MITRE ATT&CK o la Cyber Kill Chain de Lockheed Martin. Debe detallar la táctica (el "qué") y la técnica (el "cómo") en cada fase: Acceso Inicial (credenciales retenidas), Ejecución (envío de phishing), Evasión de Defensas (uso de cuentas legítimas) y Exfiltración/Impacto.
*   **Formato del mundo real:** Un diagrama de flujo visual o una tabla técnica secuencial. En consultoría, esto se entrega como un "Timeline del Incidente" donde cada nodo incluye la fecha/hora estimada, el vector de ataque y el activo comprometido.

**Entregable: Catálogo de Vulnerabilidades — Entrega: 1 de noviembre**
*   **Dependencia:** Requerido por el Equipo 2 para poder cuantificar las variables en la Matriz de Riesgos.
*   **Contenido esperado:** Una lista exhaustiva que no solo mencione la falla, sino que clasifique su origen (Arquitectura, Configuración, Procesos o Factor Humano). Por cada vulnerabilidad, se debe indicar el activo afectado (ej. servidor de correo, directorio activo) y la causa raíz (ej. falta de MFA, sincronización deficiente entre Recursos Humanos y TI).
*   **Formato del mundo real:** Un registro tabular (Vulnerability Register) que incluya un ID único por hallazgo, descripción técnica, vector de explotación y un puntaje base de severidad utilizando el estándar CVSS (Common Vulnerability Scoring System).

### Equipo 2: Evaluación (Auditores)

**Actividades de Arranque (Inicio: 28 de octubre)**
*   Definición de métricas de evaluación, escalas de severidad y criterios de "Probabilidad" e "Impacto".
*   Estructuración del panel GRC y plantillas base del Heatmap.

**Entregable: Análisis de Impacto (BIA Simplificado) — Entrega: 1 de noviembre**
*   **Dependencia:** Requiere la conclusión del Mapa de la Cadena de Ataque (Equipo 1) para evaluar con precisión el daño. Nutre directamente al Protocolo de Comunicación del Equipo 4.
*   **Contenido esperado:** Una evaluación objetiva de las consecuencias en cuatro dimensiones: Legal (violación de leyes de protección de datos por exponer información de alumnos), Reputacional (pérdida de confianza), Operativo (horas-hombre perdidas en la investigación) y Financiero.
*   **Formato del mundo real:** Un reporte ejecutivo de 1 a 2 páginas. En la industria, incluye estimaciones cuantitativas (ej. costo por registro expuesto) y cualitativas, justificando por qué el riesgo cibernético es un riesgo de negocio.

**Entregable: Matriz de Riesgos — Entrega: 3 de noviembre**
*   **Dependencia:** Requiere el Catálogo de Vulnerabilidades del Equipo 1. Es el documento base para que el Equipo 3 diseñe la Arquitectura de Mitigación.
*   **Contenido esperado:** La cuantificación de las vulnerabilidades halladas. Deben definir claramente qué significa "Probabilidad" (ej. Alta = ocurre varias veces al año) e "Impacto" (ej. Crítico = interrupción total o multas millonarias). Deben evaluar el riesgo inherente (el escenario actual del instituto) y proponer el riesgo residual (cómo quedaría tras aplicar controles).
*   **Formato del mundo real:** Un Heatmap (mapa de calor 5x5 o 3x3) codificado por colores (verde, amarillo, rojo). Acompañado de un "Risk Register", un documento ejecutivo en Excel o panel de GRC que los directivos utilizan para decidir dónde invertir presupuesto.

### Equipo 3: Controles (Blue Team)

**Actividades de Arranque (Inicio: 28 de octubre)**
*   Mapeo de herramientas de seguridad actualmente disponibles en la institución.
*   Inicio de redacción de los lineamientos operativos y administrativos de Recursos Humanos.

**Entregable: Política de Offboarding Seguro (SOP) — Entrega: 31 de octubre**
*   **Dependencia:** Se trabaja de forma independiente desde el día 1, pero su entrega temprana permite al Equipo 4 integrar estos pasos en sus manuales de emergencia.
*   **Contenido esperado:** Los pasos técnicos y administrativos obligatorios al despedir personal. Debe incluir tiempos de ejecución (ej. "T-0: Bloqueo de acceso al Directorio Activo"), responsables cruzados (RH notifica a TI, TI ejecuta, Seguridad audita) y gestión de activos físicos y lógicos (revocación de tokens, redirección de correo, desautorización de VPN).
*   **Formato del mundo real:** Un SOP (Standard Operating Procedure) tipo "Checklist" auditable. Cada paso debe tener una casilla de verificación y un espacio para la firma o registro del administrador que ejecutó la baja, garantizando el cumplimiento normativo.

**Entregable: Diseño de Arquitectura de Mitigación — Entrega: 5 de noviembre**
*   **Dependencia:** Exige la Matriz de Riesgos del Equipo 2 para justificar cada control. Define las acciones técnicas que el Equipo 4 plasmará en el Playbook.
*   **Contenido esperado:** Soluciones técnicas viables aplicadas en capas (Defensa en Profundidad). Deben incluir controles Preventivos (ej. políticas de IAM, despliegue forzoso de MFA), Detectivos (ej. ingesta de logs de Office 365/Google Workspace hacia un SIEM como Wazuh para alertar sobre inicios de sesión inusuales) y Correctivos (ej. aislamiento automático de red).
*   **Formato del mundo real:** Un documento de "Security Architecture Design". Utiliza diagramas de red o listas estructuradas por tecnología y proceso, justificando cómo cada control mitiga directamente un riesgo alto identificado por el Equipo 2.

### Equipo 4: Respuesta a Incidentes (Comité de Crisis)

**Actividades de Arranque (Inicio: 28 de octubre)**
*   Selección del framework de respuesta (SANS o NIST) y creación de plantillas de comunicación institucional.
*   Coordinación con el departamento legal y de relaciones públicas (simulada) para aprobar el tono corporativo.

**Entregable: Protocolo de Comunicación — Entrega: 3 de noviembre**
*   **Dependencia:** Requiere el Análisis de Impacto (BIA) del Equipo 2 para conocer exactamente qué datos se exfiltraron y dimensionar el mensaje público.
*   **Contenido esperado:** La gestión de la crisis hacia el exterior. Qué se dice, cuándo se dice y a quién. Deben redactar mensajes que cumplan con la transparencia sin admitir negligencia prematura, ofreciendo instrucciones claras a los afectados (ej. "cambien sus contraseñas en este portal seguro, desconfíen de correos recientes").
*   **Formato del mundo real:** Plantillas de correo electrónico

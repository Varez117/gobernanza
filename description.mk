## Especificaciones de los Equipos

**Equipo 1: Identificación (Red Team)**
Encargado de rastrear y documentar los vectores de ataque y las vulnerabilidades explotadas durante el incidente. Su trabajo forense y de enumeración es el insumo principal para las evaluaciones de riesgo del resto del proyecto.

**Equipo 2: Evaluación (Auditores)**
Responsable de traducir los hallazgos técnicos en métricas y riesgos de negocio. Cuantifican el daño potencial y categorizan las vulnerabilidades descubiertas para priorizar la inversión y los esfuerzos defensivos.

**Equipo 3: Controles (Blue Team)**
Enfocado en la ingeniería de defensa. Diseñan la arquitectura técnica de mitigación y establecen los controles administrativos (como las políticas de offboarding) para asegurar la red y prevenir incidentes similares.

**Equipo 4: Respuesta a Incidentes (Comité de Crisis)**
Gestiona la contención táctica y la imagen institucional. Redactan los manuales prescriptivos para neutralizar la amenaza y los protocolos de comunicación oficial hacia afectados, autoridades y el público en general.

## Descripción de Actividades y Dependencias

**Mapa de la Cadena de Ataque (Kill Chain)**
* **Equipo:** 1 (Identificación)
* **Dependencia:** Actividades de arranque (Sin dependencias externas).
* **Contenido:** Mapeo del incidente utilizando MITRE ATT&CK o Cyber Kill Chain. Detalla la táctica y técnica en cada fase (Acceso Inicial, Ejecución, Evasión, Exfiltración).
* **Formato:** Timeline del Incidente visual o tabla técnica secuencial.

**Catálogo de Vulnerabilidades**
* **Equipo:** 1 (Identificación)
* **Dependencia:** Actividades de arranque (Sin dependencias externas).
* **Contenido:** Lista exhaustiva clasificando el origen (Arquitectura, Configuración, Procesos, Factor Humano), el activo afectado, la causa raíz y un puntaje CVSS.
* **Formato:** Vulnerability Register tabular.

**Análisis de Impacto (BIA Simplificado)**
* **Equipo:** 2 (Evaluación)
* **Dependencia:** Requiere el **Mapa de la Cadena de Ataque** (Equipo 1).
* **Contenido:** Evaluación objetiva de consecuencias en cuatro dimensiones: Legal, Reputacional, Operativo y Financiero.
* **Formato:** Reporte ejecutivo de 1 a 2 páginas con estimaciones cuantitativas y cualitativas.

**Matriz de Riesgos**
* **Equipo:** 2 (Evaluación)
* **Dependencia:** Requiere el **Catálogo de Vulnerabilidades** (Equipo 1).
* **Contenido:** Cuantificación de vulnerabilidades definiendo Probabilidad e Impacto. Evalúa el riesgo inherente actual y propone el riesgo residual tras controles.
* **Formato:** Heatmap codificado por colores y Risk Register ejecutivo.

**Política de Offboarding Seguro (SOP)**
* **Equipo:** 3 (Controles)
* **Dependencia:** Trabajo en paralelo desde el inicio (Sin dependencias externas).
* **Contenido:** Pasos técnicos y administrativos obligatorios al despedir personal, incluyendo tiempos de ejecución, responsables cruzados y gestión de activos lógicos/físicos.
* **Formato:** Standard Operating Procedure tipo Checklist auditable.

**Diseño de Arquitectura de Mitigación**
* **Equipo:** 3 (Controles)
* **Dependencia:** Requiere la **Matriz de Riesgos** (Equipo 2).
* **Contenido:** Soluciones técnicas viables en capas (Defensa en Profundidad). Incluye controles Preventivos, Detectivos y Correctivos para mitigar riesgos críticos.
* **Formato:** Security Architecture Design estructurado con diagramas o listas por tecnología.

**Protocolo de Comunicación**
* **Equipo:** 4 (Respuesta a Incidentes)
* **Dependencia:** Requiere el **Análisis de Impacto / BIA** (Equipo 2).
* **Contenido:** Gestión de la crisis exterior. Qué se dice, cuándo y a quién, con mensajes transparentes, instrucciones claras y sin admitir negligencia prematura.
* **Formato:** Plantillas de correo y comunicados de prensa institucionales pre-aprobados.

**Playbook de Contención y Erradicación**
* **Equipo:** 4 (Respuesta a Incidentes)
* **Dependencia:** Requiere el **Diseño de Arquitectura de Mitigación** (Equipo 3) y la **Política de Offboarding** (Equipo 3).
* **Contenido:** Acciones tácticas inmediatas (SANS o NIST) para detener el ataque bajo estrés. Incluye comandos específicos y clics exactos en consolas de administración.
* **Formato:** Incident Response Playbook manual y altamente prescriptivo.

## Cron

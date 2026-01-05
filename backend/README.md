## Employeer

- router.get("/showCursos/:dni", showCursos)
- router.get("/showCursosInscrito/:dni", showCursosInscrito)
- router.post("/inscribirCurso", inscribirCurso)
- router.get("/getEmployeeName/:dni", getEmployeeName)
- router.get("/enterMisCursos/:dni", enterMisCursos)
- router.get("/enterInscripcion/:dni", enterInscripcion)
- router.get("/enterMisCertificados/:dni", enterMisCertificados)
- router.get("/showCertificados/:dni", showCertificados)

<br>

- router.get("/redirectModulosCurso/:id_curso&:dni", redirectModulosCurso)
- router.get("/showModulos/:id", showModulos)
- router.get("/getModulo/:id_modulo", getModulo)
- router.get("/verDatosCurso/:id", verDatosCurso)

<br>

- router.get("/getCursoByModulo/:id_modulo", getCursoByModulo)

<br>

- router.get("/redirectVideoModulo/:id_modulo&:dni", redirectVideoModulo)
- router.get("/redirectPdfModulo/:id_modulo&:dni", redirectPdfModulo)

<br>

- router.get("/getVideo/:id", getVideo)
- router.get("/getPdf/:id", getPdf)
- router.post("/registrarCurso/:dni", registrarCurso)
- router.post("/verificarCodigo", verificarCodigo)

<br>

- router.post("/uploadpdf", uploadPdf);
- router.get("/pdfs", getPdfs);
- router.get("/pdf/:id_modulo&:dni", getOnePdf);
- router.delete("/deletePdf/:id_evaluacion_empleado", deletePdf);

<br>

- router.get("/volverInicio/:dni", volverInicio)
- router.get("/volverCursos/:dni", volverCursos)
- router.get("/volverModulos/:id_curso&:dni", volverModulos)

<br>

- router.post("/llenarCertificado", llenarCertificado)
- router.get("/obtenerDatosCertificado/:nombre_curso&:dni", obtenerDatosCertificado)

## Admin

- ~~Router.get("/showEmployee", showEmployee)~~
- ~~router.get("/showOneEmployee/:id", showOneEmployee)~~
- ~~router.post("/registerEmployee", registerEmployee)~~
- ~~router.delete("/deleteEmployee/:id", deleteEmployee)~~
- ~~router.patch("/updateEmployee/:id", updateEmployee)~~

<br>

- ~~router.get("/showCursos", showCursos)~~
- ~~router.get("/showOneCurso/:id", showOneCurso)~~
- ~~router.post("/registerCurso", registerCurso)~~
- ~~router.delete("/deleteCurso/:id", deleteCurso)~~
- ~~router.patch("/updateCurso/:id", updateCurso)~~

<br>

- router.get("/showModulos/:id", showModulos)
- router.get("/showExamenesSubidos/:dni&:id_modulo", showExamenesSubidos)

<br>

- router.get("/showReporte/:id", showReporte)

<br>

- router.post("/upload", uploadVideo);
- router.get("/videos", getVideos);
- router.get("/video/:id", getOneVideo);
- router.delete("/deleteVideo/:id", deleteVideo);

<br>

- router.post("/uploadpdf", uploadPdf);
- router.get("/pdfs", getPdfs);
- router.get("/pdf/:id", getOnePdf);
- router.delete("/deletePdf/:id", deletePdf);

<br>

- router.get("/revisarAdmin/:id_empleado&:id_modulo", revisarAdmin)

<br>

- router.get("/getModulo/:id_modulo", getModulo)
- router.get("/redirectCrearEvaluacion/:id_modulo", redirectCrearEvaluacion)

<br>

- router.post("/calificarAdmin/:id_empleado&:id_modulo&:puntuacion", calificarAdmin)
- router.get("/obtenerNotas/:dni", obtenerNotas)
- router.post("/consolidarCertificado", consolidarCertificado)
- router.get("/listarDnis", listarDnis)
- router.get("/contarModulos/:id_curso", contarModulos)
- router.get("/listarCursos", listarCursos)
- router.get("/listarAllCursos", listarAllCursos)
- router.post("/agregarModulo", agregarModulo)
- router.get("/listarModulos/:id_curso", listarModulos)
- router.delete("/eliminarModulo/:id_modulo", eliminarModulo)
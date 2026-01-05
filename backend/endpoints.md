router.get("/showCursos/:dni", showCursos)
router.get("/showCursosInscrito/:dni", showCursosInscrito)
router.post("/inscribirCurso", inscribirCurso)
router.get("/getEmployeeName/:dni", getEmployeeName)
router.get("/enterMisCursos/:dni", enterMisCursos)
router.get("/enterInscripcion/:dni", enterInscripcion)
router.get("/enterMisCertificados/:dni", enterMisCertificados)
router.get("/showCertificados/:dni", showCertificados)

router.get("/redirectModulosCurso/:id_curso&:dni", redirectModulosCurso)
router.get("/showModulos/:id", showModulos)
router.get("/getModulo/:id_modulo", getModulo)
router.get("/verDatosCurso/:id", verDatosCurso)

router.get("/getCursoByModulo/:id_modulo", getCursoByModulo)

router.get("/redirectVideoModulo/:id_modulo&:dni", redirectVideoModulo)
router.get("/redirectPdfModulo/:id_modulo&:dni", redirectPdfModulo)

router.get("/getVideo/:id", getVideo)
router.get("/getPdf/:id", getPdf)
router.post("/registrarCurso/:dni", registrarCurso)
router.post("/verificarCodigo", verificarCodigo)

router.post("/uploadpdf", uploadPdf);
router.get("/pdfs", getPdfs);
router.get("/pdf/:id_modulo&:dni", getOnePdf);
router.delete("/deletePdf/:id_evaluacion_empleado", deletePdf);

router.get("/volverInicio/:dni", volverInicio)
router.get("/volverCursos/:dni", volverCursos)
router.get("/volverModulos/:id_curso&:dni", volverModulos)

router.post("/llenarCertificado", llenarCertificado)
router.get("/obtenerDatosCertificado/:nombre_curso&:dni", obtenerDatosCertificado)
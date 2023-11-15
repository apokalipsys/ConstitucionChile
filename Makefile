PANDOC=pandoc
PDFTEMPLATE=template/template.latex
PDFENGINE=xelatex
BUILDFOLDER=build/
PDFOPTIONS=--toc -V toc-title="Tabla de Contenidos"
MONOOPTIONS=-V mainfont="Courier New" -V title=""
HTMLOPTIONS=-V mainfont="-apple-system,BlinkMacSystemFont,\"Segoe UI\",Roboto,\"Helvetica Neue\",Arial,\"Noto Sans\",sans-serif,\"Apple Color Emoji\",\"Segoe UI Emoji\",\"Segoe UI Symbol\",\"Noto Color Emoji\"" -V fontsize="20px" -V linestretch="1.5"

.PHONY: all
all: clear book mono

clear:
	rm -rf $(BUILDFOLDER)

prebuild:
	mkdir $(BUILDFOLDER)

book: | prebuild
	@echo "Generando libros"
	$(PANDOC) "1980/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1980.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1925/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1925.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1833/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1833.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1828/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1828.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1823/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1823.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1822/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1822.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1818/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1818.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1814/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1814.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1812/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1812.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1811/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1811.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1810/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Provisional_1810.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "2023/propuesta.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_Constitucion_Politica_2023.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "2023/anteproyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Anteproyecto_Constitucion_Politica_2023.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "2022/propuesta.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_Constitucion_2022.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "2022/borrador.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_de_borrador_Constitucional_2022.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)	
	$(PANDOC) "2018/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Proyecto_Constitucion_2018.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)
	$(PANDOC) "1826/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Leyes_Federales_1826.pdf --template=$(PDFTEMPLATE) -s $(PDFOPTIONS)

mono: | prebuild
	@echo "Generando version solo texto"
	$(PANDOC) "1980/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1980_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1925/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1925_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1833/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1833_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1828/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1828_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1823/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1823_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1822/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1822_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1818/constitucion.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Constitucion_Chilena_1818_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1814/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1814_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1812/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1812_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1811/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Constitucional_1811_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1810/reglamento.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Reglamento_Provisional_1810_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2023/propuesta.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_Constitucion_Politica_2023_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2023/anteproyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Anteproyecto_Constitucion_Politica_2023_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2022/propuesta.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_Constitucion_2022_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2022/borrador.md"  --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_de_borrador_Constitucional_2022_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2018/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Proyecto_Constitucion_2018_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1826/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Leyes_Federales_1826_mono.pdf -s $(MONOOPTIONS)

html:
	@echo "Generando version navegable"
	$(PANDOC) -f markdown "1980/constitucion.hmd" -o docs/1980_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1925/constitucion.md" -o docs/1925_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1833/constitucion.md" -o docs/1833_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1828/constitucion.md" -o docs/1828_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1823/constitucion.md" -o docs/1823_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1822/constitucion.md" -o docs/1822_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1818/constitucion.md" -o docs/1818_constitucion.html -s $(HTMLOPTIONS)
	$(PANDOC) "1814/reglamento.md" -o docs/1814_reglamento.html -s $(HTMLOPTIONS)
	$(PANDOC) "1812/reglamento.md" -o docs/1812_reglamento.html -s $(HTMLOPTIONS)
	$(PANDOC) "1811/reglamento.md" -o docs/1811_reglamento.html -s $(HTMLOPTIONS)
	$(PANDOC) "1810/reglamento.md" -o docs/1810_reglamento.html -s $(HTMLOPTIONS)
	$(PANDOC) "2018/proyecto.md" -o docs/2018_proyecto.html -s $(HTMLOPTIONS)
	$(PANDOC) "1826/proyecto.md" -o docs/1826_proyecto.html -s $(HTMLOPTIONS)
	$(PANDOC) -f markdown "2023/propuesta.hmd" -o docs/2023_propuesta.html -s $(HTMLOPTIONS)
	$(PANDOC) -f markdown "2023/anteproyecto.hmd" -o docs/2023_anteproyecto.html -s $(HTMLOPTIONS)
	$(PANDOC) -f markdown "2022/propuesta.hmd" -o docs/2022_propuesta.html -s $(HTMLOPTIONS)
	$(PANDOC) -f markdown "2022/borrador.hmd" -o docs/2022_borrador.html -s $(HTMLOPTIONS)
	$(PANDOC) "pages/index.md" -o docs/index.html -s $(HTMLOPTIONS)


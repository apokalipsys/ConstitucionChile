PANDOC=pandoc
PDFTEMPLATE=template/template.latex
PDFENGINE=xelatex
BUILDFOLDER=build/
PDFOPTIONS=--toc -V toc-title="Tabla de Contenidos"
MONOOPTIONS=-V mainfont="Courier New" -V title=""

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
	$(PANDOC) "2022/propuesta.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_Constitucion_2022_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2022/borrador.md"  --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Propuesta_de_borrador_Constitucional_2022_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "2018/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Proyecto_Constitucion_2018_mono.pdf -s $(MONOOPTIONS)
	$(PANDOC) "1826/proyecto.md" --pdf-engine=$(PDFENGINE) -o $(BUILDFOLDER)Leyes_Federales_1826_mono.pdf -s $(MONOOPTIONS)

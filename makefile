#
# Makefile para crear documentos I-D style
#

txts = draft-ietf-sidr-multiple-publication-points-00.txt
htmls = draft-ietf-sidr-multiple-publication-points-00.html

all: $(txts) $(htmls)

$(txts): %.txt: %.xml
	xml2rfc $< $@

$(htmls): %.html: %.xml
	xml2rfc $< $@

clean:
	rm -v *.txt
	rm -v *.html

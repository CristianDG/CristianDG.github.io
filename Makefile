WIKI_HTML = $(HOME)/vimwiki_html

all: index hbr

index:
	cp $(WIKI_HTML)/Github-page.html index.html

css:
	cp $(WIKI_HTML)/style.css .

hbr:
	cp $(WIKI_HTML)/Hue-br.html .


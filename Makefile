%.pdf: %.md
	pandoc -o $@ $<

docs: zusammenfassung.md
	pandoc -s --toc -o zusammenfassung.pdf zusammenfassung.md

clean:
	rm zusammenfassung.pdf

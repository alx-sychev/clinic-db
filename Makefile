tmp: clean all

all: clinic.svg clinic.png

clinic.png: clinic.svg
	magick -background "#E8DCB8" clinic.svg clinic.png

clinic.svg: clinic.dbml
	dbml-renderer -i clinic.dbml -o clinic.svg

clean:
	rm -f clinic.svg clinic.png

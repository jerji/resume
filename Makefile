##
# Resume
#
# @file
# @version 0.1

.PHONY = all, clean

all: Angel_Ouellet.pdf RESUME.md

Angel_Ouellet.pdf: data.md template.tex
	pandoc data.md -t pdf --template template.tex -o $@ --pdf-engine lualatex

Resume.md: template.md data.md
	pandoc $^ -t markdown --template $< -o $@

clean:
	rm -f Resume.md Angel_Ouellet.pdf

# end

##
# Resume
#
# @file
# @version 0.1

Angel_Ouellet.pdf: data.md template.tex
	pandoc data.md -t pdf --template template.tex -o $@ --pdf-engine lualatex

RESUME.md: template.md data.md
	pandoc $^ -t markdown --template $< -o $@

# end

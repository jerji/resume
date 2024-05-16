##
# Resume
#
# @file
# @version 0.1

RESUME.md: template.md data.md
	pandoc $^ -t markdown --template $< -o $@

# end

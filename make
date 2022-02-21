#!/usr/bin/env bash
FILE_NAME="Aggregating Classifications"

# validate xsl
xsltproc --noout /usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/fo.xsl

asciidoctor -b docbook "${FILE_NAME}.adoc"
jing /usr/share/xml/docbook/schema/rng/5.0/docbook.rng "${FILE_NAME}.xml"
xsltproc mystyle.xsl "${FILE_NAME}.xml" > "${FILE_NAME}.fo"
export FOP_HYPHENATION_PATH=fop-hyph
fop -c fop-config.xml "${FILE_NAME}.fo" "${FILE_NAME}.pdf"


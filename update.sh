#!/bin/sh
rm -f "apa.csl"
rm -f "apa-no-disambiguation.csl"
curl -sSO "https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl"
sed -e 's/disambiguate-add-givenname="true"//g' -e 's/disambiguate-add-givenname="true"//g' -e 's/givenname-disambiguation-rule="primary-name"//g' -e 's/American Psychological Association 6th edition/American Psychological Association 6th edition (no given name disambiguation)/g' -e 's/styles\/apa/styles\/apa-no-disambiguation/g' -e 's/rel="self"\/>/rel="self"\/>\n    <link href="http:\/\/www.zotero.org\/styles\/apa" rel="template"\/>/g'<apa.csl >apa-no-disambiguation.csl
rm -f "apa.csl"

echo "self.addEventListener('message', function (e) {" > xsltproc.js
echo "	postMessage(convertDocbookToHTML(e.data));" >> xsltproc.js
echo "});" >> xsltproc.js

echo "function convertDocbookToHTML(xml) {" >> xsltproc.js
echo "  var Module = {" >> xsltproc.js
echo "    xml: xml," >> xsltproc.js
echo "  };" >> xsltproc.js
cat xsltproc.raw.js >> xsltproc.js
echo "  return Module.return;" >> xsltproc.js
echo "}  " >> xsltproc.js

echo "function validateXML(xml, schema) {" > xmllint.js
echo "  var Module = {" >> xmllint.js
echo "    xml: xml," >> xmllint.js
echo "    schema: schema" >> xmllint.js
echo "  };" >> xmllint.js
cat xmllint.raw.js >> xmllint.js
echo "  return Module.return;" >> xmllint.js
echo "}  " >> xmllint.js
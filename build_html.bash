#!/bin/bash

# first, run WebDocGen on ./WebDocGen/example_input.md, outputting into the
# current directory
if [[ -z "$WEBDOCGEN_COMMAND" ]]; then
    (
        cd WebDocGen &&
        npm install --no-fund --no-audit &&
        npm run build
    )

    WEBDOCGEN_COMMAND="node WebDocGen/lib/cli.js"
fi

$WEBDOCGEN_COMMAND WebDocGen/example_input.md output --viewport 800x800x1

template_basenames=()
# now, run pandoc on `output.md` with every template
for template in "${templates[@]}"; do
    template_basename="$(basename "$template" .html)"
    pandoc output/output.md -f gfm -o "output/$template_basename.html" --template="$template" --toc --metadata title="$template_basename"
done

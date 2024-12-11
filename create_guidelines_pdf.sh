#!/usr/bin/env bash
echo "Generating PDF guidelines from markdown"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || exit

cp -rf "$SCRIPT_DIR/spec-publisher/pandoc/img" "$SCRIPT_DIR/guidelines/pdf/"
cp -rf "$SCRIPT_DIR/spec-publisher/res/md/figs" "$SCRIPT_DIR/guidelines/pdf/"
cp -rf "$SCRIPT_DIR/guidelines/markdown/figs" "$SCRIPT_DIR/guidelines/pdf/"
cd guidelines/pdf || exit

echo " - PANDOC: Generating Preface from markdown"
pandoc  --from gfm \
        --to latex \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        "./preface.md" \
        -o "./preface.tex"
sed -i 's%section{%section*{%' ./preface.tex

echo " - PANDOC: Generating Postface from markdown"
pandoc  --from markdown \
        --to latex \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        "$SCRIPT_DIR/guidelines/markdown/postface/postface.md" \
        -o "./postface.tex"
sed -i 's%section{%section*{%' ./postface.tex

command -v markdown-pp >/dev/null 2>&1 || {
  tmpdir=$(dirname "$(mktemp -u)")
  # shellcheck source=/tmp/.venv-markdown/bin/activate
  source "$tmpdir/.venv-markdown/bin/activate"
}

echo " - MARKDOWN-PP: Preparing PDF markdown"
markdown-pp PDF.md -o 3D_Product_Data_Guideline-pdf.md -e tableofcontents
echo " - MARKDOWN-PP: Preparing PDF markdown"

if [ -d "$SCRIPT_DIR/site/guidelines/pdf" ]
then
  echo " - Removing old guidelines PDF directory"
  rm -rf "$SCRIPT_DIR/site/guidelines/pdf"
fi
mkdir "$SCRIPT_DIR/site/guidelines/pdf"

echo " - PANDOC: Generating Guidelines PDF document from markdown and Tex sources"
pandoc  --from markdown \
        --template "$SCRIPT_DIR/spec-publisher/pandoc/templates/eisvogel.latex" \
        --listings \
        --table-of-contents \
        --metadata-file "$SCRIPT_DIR/spec-publisher/pandoc/metadata.yaml" \
        --include-before-body "./preface.tex" \
        --include-after-body "./postface.tex" \
        --number-sections \
        -o "$SCRIPT_DIR/site/guidelines/pdf/3D_Product_Data_Guideline_v1.0.0.pdf" \
        3D_Product_Data_Guideline-pdf.md

echo " - Finished"

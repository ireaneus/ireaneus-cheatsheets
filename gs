# gs (Ghostscript) — real-world examples

## Reduce the size of a PDF file

```sh
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=output.pdf input.pdf
```

## Shrink harder with a quality preset (scanned sermon notes, etc.)

```sh
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook \
   -sOutputFile=small.pdf input.pdf
# presets: /screen (smallest) < /ebook < /printer < /prepress (best quality)
```

## Merge several PDFs into one

```sh
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=merged.pdf a.pdf b.pdf c.pdf
```

## Extract a page range into a new PDF

```sh
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dFirstPage=3 -dLastPage=7 \
   -sOutputFile=pages3-7.pdf input.pdf
```

## Render a PDF page as a PNG image

```sh
gs -dBATCH -dNOPAUSE -q -sDEVICE=png16m -r150 -dFirstPage=1 -dLastPage=1 \
   -sOutputFile=page1.png input.pdf
```

| Flag | What it does |
| --- | --- |
| -dBATCH | exit when done |
| -dNOPAUSE | no pause between pages |
| -q | quiet |
| -sDEVICE= | output driver (pdfwrite, png16m, ...) |
| -sOutputFile= | output filename |
| -dPDFSETTINGS= | compression preset |
| -dFirstPage/-dLastPage | page range |
| -rN | resolution in DPI for image output |

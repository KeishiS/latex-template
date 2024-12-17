#!/usr/bin/env perl

$pdflatex = 'pdflatex -synctex=1 -file-line-error %O %S';
# $pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# 0: do not generate a pdf , 1: using $pdflatex , 2: using $ps2pdf , 3: using $dvipdf
$pdf_mode = 1;

$out_dir = 'build/';

# bibTeX commands
$biber     = 'biber %O -u -U --output-safechars %B';
$bibtex    = 'bibtex %O %B';
$bibtex_use = 2;

# Other configuration
$clean_ext = "bbl run.xml synctex.gz synctex(busy) nav snm";
$max_repeat = 5;
$pvc_view_file_via_temporary = 0; # overwrite the original pdf file

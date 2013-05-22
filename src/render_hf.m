## 17.5.2013 Andreas Weber
## Render hershey font using octave, export it to an image
## Its purpose is to get an overview over the available glyphs
## Attention: outdir works only once, (not like mkdir -p)

function render_hf (fn, outdir="./")
  [DIR, NAME, EXT, VER] = fileparts (fn);
  fn_png = fullfile(strcat(outdir,"_png"),strcat(NAME,".png"));
  fn_svg = fullfile(strcat(outdir,"_svg"),strcat(NAME,".svg"));
  printf("Rendering %s and %s from %s...\n",fn_png,fn_svg,fn);
  fflush(stdout);

  hf = load_hf (fn);
  figure("visible","off");
  plot_hf(hf), axis square

  print(fn_png,"-S1200,1200")
  print(fn_svg,"-S1200,1200")
endfunction

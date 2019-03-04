if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="slides-pca-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import geometry;

size(200,200);

vector x = (1.25,0.25);
show(Label("$\vec{x}$", 1),x);


vector y = (0.5,0.6);
show(Label("$\vec{y}$", 1),y);


point compY = projection(line((0,0),x))*y;

draw((0,0)--compY,red,Arrow);

draw("$\vec{e}_y$", compY--point(y), red+dashed);

size(0,75.88371pt,keepAspect=true);

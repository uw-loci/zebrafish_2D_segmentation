//Use Process->Batch->Macro to run on a directory of .tif time series
//IJ 1.53q
name = getTitle();
name=substring(name,0,lengthOf(name)-4);
run("Make Substack...", "slices=1-192-12 delete");
run("Image Sequence... ", "dir=D:/ZED/12MIPS/EveryTimePoint/ format=TIFF start=1 name="+name+"_ digits=3");
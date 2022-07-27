//Use Process->Batch->Macro to run on a directory of .tif time series
//IJ 1.53q

//Script created specifically for Alyssa's sample test set, in which the MIPs were already condensed into a time series.
//For Liz' data set the MIPs would first need to be converted into a stack, or the script would need to load the time series into a stack first.
name = getTitle();
//This could be changed to a different naming scheme for Liz' data
name=substring(name,0,lengthOf(name)-4);
run("Make Substack...", "slices=1-192-12 delete");
run("Image Sequence... ", "dir=D:/ZED/12MIPS/EveryTimePoint/ format=TIFF start=1 name="+name+"_ digits=3");
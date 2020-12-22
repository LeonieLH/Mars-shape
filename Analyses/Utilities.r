

#######a little function to check whether landmarks have been placed correctly. NOTE that setting the window size with par3d(windowRect) needs adjusting to your screen. I set it to my requirements here but it can be hashed out to go to the default size

#First_spec_to_view is first specimen to be compared to comparison spec, 
#Last_spec_to_view is lastspecimen to be compared to comparison spec,
#Number_of_comparison_spec is the specimen all the other specimens are to be compared to. I am using the specimen closest to the mean. 

Landm.place.check <- function (First_spec_to_view, Last_spec_to_view, Number_of_comparison_spec){
  
  for (i in c(First_spec_to_view : Last_spec_to_view)){
    
    #open 3d windows, set some bits	
    open3d()
    par3d(windowRect = c(0,0,1000,1000))
    bg3d("white")
    
    plotRefToTarget(GPA_AllSpecimens$coords[,,i],GPA_AllSpecimens$coords[,,Meanspec], 
                    label=TRUE,	
                    method = "vector", 
                    main = dimnames(GPA_AllSpecimens$coords)[[3]][i],
                    gridPars = gridPar(pt.size = 0.5, pt.bg = "hotpink", txt.cex = "1.5" ))
    
  }
}
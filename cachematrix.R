makeCacheMatrix <-function(mt=matrix()){
  invert_mt <- NULL
  
  set_matrix<-function(set_mt){
    
    mt <<-set_mt
    invert_mt<<-NULL
  }
  
  get_matrix<-function(){
    print(mt)
  }
  
  set_invert_mt<-function(y){
    invert_mt<<-y
  }
  
  get_invert_mt<-function(){
    print(invert_mt)
  }
}


cacheSolve <-function(mt,...){
  
  ##IF we have a data 
  if(!(mt$get_invert_mt)){
    print("We already have the data")
    return (mt$get_invert_mt)
  }
  
  ##IF we don't have cached data
  mt$set_invert_mt( solve((mt$get_matrix()), ...))
  
}


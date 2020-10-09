makecacheMatrix<-function(m)
{
inv<-NULL
set<-function(x)
{
m<<-data.frame(x)
inv<-NULL
}
setInverse<-function(m)
{
inv<<-m
}
get<-function()
{
m<-data.frame(m)
}
getInverse<-function()
{
inv
}
}
cacheInverseMatrix<-function(x,...)
{
invmat<-getInverse()
if(!is.null(invmat))
{
print("cache matrix inverse is caught")
return(invmat)
}
data<-get()
invmat<-solve(x)
setInverse(inverse)
invmat
}





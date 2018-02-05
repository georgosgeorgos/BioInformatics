library(rnetcarto)

function_net=function(file, dest)
{
    file=read.csv(file, header = FALSE, sep = " ")
    n1=file[,1]
    n2=file[,2]
    res=list(n1, n2)
    net=netcarto(res, seed=0, iterfac = 1, 
                 coolingfac = 0.999)
    write.csv(net[1], dest)
}

function_net("./data/lcc_i.dat", "net_I.csv")
function_net("./data/lcc_u.dat", "net_U.csv")

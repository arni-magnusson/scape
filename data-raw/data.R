library(scape)

setwd("../inst/example")

x.cod <- importCol("cod.res", Dev=TRUE, Survey=TRUE, CAc=TRUE, CAs=TRUE)
x.ling <- importCol("ling.res",
                    Dev=TRUE, CPUE=TRUE, Survey=TRUE, CAs=TRUE, CLc=TRUE)
x.oreo <- importCol("oreo.res",
                    CPUE=TRUE, Survey=TRUE, CLc=TRUE, CLs=TRUE, LA=TRUE)
x.saithe <- importADCAM("saithe")
x.sbw <- importCol("sbw.res", Dev=TRUE, Survey=TRUE, CAc=TRUE)
xmcmc <- importMCMC("mcmc", pretty.labels=TRUE,
                    l.choose=c("CAc","CAs","Survey","Prior","Total"),
                    p.choose=c("R0","Rinit","uinit","cSleft",
                               "cSfull","sSleft","sSfull","logq"))
xproj <- importProj("mcmc")

save(x.cod, file="../../data/x.cod.rda", version=2, compress="xz")
save(x.ling, file="../../data/x.ling.rda", version=2, compress="xz")
save(x.oreo, file="../../data/x.oreo.rda", version=2, compress="xz")
save(x.saithe, file="../../data/x.saithe.rda", version=2, compress="xz")
save(x.sbw, file="../../data/x.sbw.rda", version=2, compress="xz")
save(xmcmc, file="../../data/xmcmc.rda", version=2, compress="xz")
save(xproj, file="../../data/xproj.rda", version=2, compress="xz")

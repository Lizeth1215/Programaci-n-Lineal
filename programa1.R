install.packages('lpSolve')

library('lpSolve')

obj.fun <- c(5000,8000,6000)
restricciones <- matrix(c(5, 3, 7, 
                          3, 6, 4,
                          4, 3, 3),
                        nrow=3, byrow = TRUE)
direccion <- c("<=", "<=", "<=")
rhs <- c(100, 150, 120)

solucion <- lp("max", obj.fun, restricciones, direccion, rhs, compute.sens = TRUE )

solucion$status


solucion$objval

solucion$solution


optimo <- solucion$solution
names(optimo) <- c("x1","x2","x3")
print(optimo)
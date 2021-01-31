# Operaciones Matriciales

A<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=F)
B<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=T)

# suma y resta

A+B

A-B

# Multiplicación, ojo, habrá un error ya que las dimensiones no permiten hacer la multiplicacion. Compruebalo:

A%*%B

# Transpuesta

t(A)

# Multiplicar transpuesta por B

t(A)%*%B

# CUIDADO: A * B da una multiplicación elemento por elemento (el producto Hadamard o Schur) que rara vez se requiere

A*B

# Productos Kronecker

A%x%B ; B%x%A

# Dimensiones y dimension de matrices y vectores
#Matriz
C<-matrix(c(1,2,3,4,5,6),2,3)

dim(C)
dim(t(C))
length(C)
#Vector
x<-c(1,2,3,4)
length(x)
dim(x)
# Cuidado con las operaciones de matrices que intentas desarrollar en vectores

x
t(x)
dim(x)
dim(matrix(x))
matrix(x)
t(matrix(x))
dim(t(matrix(x)))

# Aquí, parece que la creación de un vector x con x <-c (1, 2, 3, 4) crea una cadena que tiene una longitud de 4, pero R no la considera una matriz hasta que está involucrada en alguna operación que solo se aplica a matrices. El hecho de que la transposición tenga las dimensiones 1 y 4 indica que se supone que x es un vector columna. Sin embargo, lo siguiente muestra que R interpretará x como un vector de columna o como un vector de fila según el contexto, en pre o post multiplicación por una matriz cuadrada de dimensión correcta. Esto se demuestra en el siguiente ejemplo:

x<-c(1,2)
Z<-matrix(c(1,2,3,4),2,2)

Z%*%x

x%*%Z

#Si se obliga a x a ser una matriz (es decir, de una matriz de clase en R), una de estas multiplicaciones dará un error debido a la no conformidad.

class(x)

x<-matrix(x)
class(x)

# Concatenando matrices

A

B

## Por Filas

cbind(A,C)

t(cbind(t(A),t(B)))

## Por columnas

rbind(A,C)

## Cuidado: unir matrices de distinta dimension arrojara error

# Diagonal y traza

E<-matrix(c(1,2,3,4,5,6,7,8,9),3,3,byrow=T)

E

diag(E)

sum(diag(E))

diag(c(1,5,9))
diag(diag(E))

# Traza de productos

F<-matrix(c(1,2,3,4,5,6,7,8,9),3,3,)

F
F%*%E

E%*%F

sum(diag(E%*%F))

um(diag(F%*%E))

# Transpuesta de Productos

t(E%*%F)

## Cuidado!!!

t(E)%*%t(F)

t(F)%*%t(E)


# Hola, en esta repo te mostrare como realizar 
# operaciones matriciales. 

# Introduccion

Resumen de operadores basicos de algebra lineal en R:
Las operaciones que se dan a continuación asumen que los órdenes de las matrices involucradas permiten
operación a evaluar. 

R distingue entre mayúsculas y minúsculas, por lo que A y a denotan objetos distintos.

- Para crear un vector x: x <- c(x1; x2; ... xn).

- Para acceder a un elemento individual en un vector x, el i-ésimo, x [i].

- Para crear una matriz A, A <-matrix (data, nrow = m, ncol = n, byrow = F).

- Para acceder a un elemento individual en una matriz A, el elemento por fila y columna (i; j) n, A[i, j].

- Para acceder a una fila individual en una matriz A, el i-ésimo elemento, A [i,]

- Para acceder a una columna individual en una matriz A, el jth, A [, j].

- Para acceder a un subconjunto de filas en una matriz A, A [i1: i2; ].

- Para acceder a un subconjunto de columnas en una matriz A, A [; j1: j2].

- Para acceder a una submatriz de A, A [i1: i2; j1: j2].

- Suma A + B

- Resta A-B

- Multiplicación AB, A% * %B.

- Transponer A, t(A).

- Matriz de productos cruzados A'B, crossprod(A, B).

- Inversión A^-1, solve(A).

- Moore-Penrose inversa generalizada A^+, ginv(A) (en la biblioteca MASS) [o
MPinv (A) (en la biblioteca gnm)]
Nota: ginv (. Funcionará con casi cualquier matriz, pero es más seguro usar solve (.)
si espera que la matriz no sea singular ya que solve (.) dará un error  si la matriz es singular o no cuadrada, pero ginv (.) no lo hará.

- Determinante, det(A).

- Eigenanálisis, eigen (A).

- Para extraer una diagonal de una matriz A como vector, diag (A).

-Traza de una matriz A, sum(diag (A)).

- Para crear una matriz diagonal, diag(c(x11, x22,..., xpp)).

- Para crear una matriz diagonal a partir de otra matriz, diag(diag(A)).

Para convertir un cuadro de datos en una matriz, data.matrix(objetodataframe).

- Para convertir algún otro objeto en una matriz, as.matrix(objeto).

- Para unir vectores en una matriz como columnas, cbind (vec1, vec2,..., vec_n).

- Para unir vectores en una matriz como filas, rbind (vec1, vec2,..., vecn).

- Para unir las matrices A y B una al lado de la otra, cbind (A, B).

- Para apilar A y B uno encima del otro, rbind(A, B).

- Para encontrar la longitud de un vector x, length(x).

- Para encontrar las dimensiones de una matriz A, dim(A).
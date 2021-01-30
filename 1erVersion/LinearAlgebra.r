## 1)       Los datos de la siguiente tabla pertenecen a la pérdida en toneladas por Ha de patatas después de ser atacadas por un microorganismo y ser combatido éste a su vez por un plaguicida. Queremos analizar si existen diferencias significativas en menores toneladas de producción de pérdidas, mediante un Análisis de Varianza. Las hectáreas fueron dispuestas al azar así como los plaguicidas:

```{r, echo=FALSE}
matrix(c(50,52,54,53,51,65,66,69,64,68,30,32,34,33,31), byrow = T, ncol = 5)
```


## a) ¿Cuáles son nuestras hipótesis a contrastar?

h0 = Hay igualdades significativas en menores toneladas de producción de pérdidas

h1 = Hay diferencias significativas en menores toneladas de producción de pérdidas

```{r, include=FALSE}
library(WRS)

Hola_!

#include <stdio.h>
//#include "cdecl.h"

long long calcular(unsigned int, unsigned int);

long long calcular_cotizacion (unsigned int cripto, unsigned int peso)
{
    long long resultado = calcular(cripto, peso);

    //fprintf(stdout, "%lld \n", resultado);

    return resultado;
}

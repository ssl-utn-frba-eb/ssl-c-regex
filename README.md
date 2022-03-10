# Ejemplos simples de Regex

Estos son ejemplos simples de regex en C estos incluyen


- regex_0.c : Compilacion de una regex
- regex_1.c : Compilacion y matcheo de regex con inpus
- regex_scanf.c : Regex con scanf

### Compilacion de los ejemplos

basta con hacer un `make <nombre_ejemplo_sin_extension_c>` para compilarlo

```bash
make  <nombre_ejemplo_sin_extension_c>
```

un ejemplo puede ser el de compilar el `regex_0.c`, tendremos que hacer algo como:

```bash
make  regex_0
```

Esto permite que se compile el ejecutable `regex_0`, y el mismo estara disponible en  la carpeta `./bin`

despues basta hacer algo como:

```bash
./bin/regex_0
```

### Limpiar el ambiente

Para limpiar los archivos objeto y los ejecutables, tendremos que hacer algo como

```bash
make clean
```

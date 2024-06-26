# ASSEMBLY

* Atividade 1
  
## Como funciona a alocação de memoria dinamica para armazenar seu nome?

A alocação de memória dinâmica é um processo que reserva espaço na memória do computador conforme necessário durante a execução de um programa. Enquanto a alocação estática reserva espaço de memória específico para variáveis conhecidas antecipadamente, a alocação dinâmica permite ajustar o espaço conforme necessário durante a execução do programa. Isso é especialmente útil quando o tamanho exato da memória necessária não é conhecido de antemão ou pode variar. Em contraste com a alocação estática, que pode ser feita atribuindo valores hexadecimais a cada caractere de uma string, a alocação dinâmica é geralmente realizada usando funções como malloc() em linguagens de alto nível ou chamadas de sistema em Assembly. Essas técnicas permitem alocar e liberar memória conforme necessário, tornando o programa mais flexível e eficiente em termos de gerenciamento de recursos.


* Atividade 2

## O que é DOS?

Em Assembly, "DOS" refere-se ao "Disk Operating System", um sistema operacional de disco usado em computadores pessoais nas décadas de 1980 e 1990. Geralmente, programas Assembly para "DOS" interagem diretamente com o hardware do computador, acessando recursos como tela e teclado através de convites do sistema operacional ou chamadas de BIOS. Os registradores são unidades de armazenamento dentro do processador que mantêm dados temporários, endereços de memória e sinais de status, sendo essenciais para operações eficientes.


### Print marie.js

![image](https://github.com/IanSiqueira/ASSEMBLY/assets/101524235/a9e0eb98-3964-4550-a806-805183d5b1ea)

* Programa de início no endereço 000
* Load = Carregando o valor
* Store = Definindo como esse valor vai ser chamado futuramente dentro do processo
* Halt = Encerrar uma execução

### Código do print comentado.

```
.MODEL small;Define o modelo de memoria small
.STACK 64;Aloca 
um escopo de 64 bytes para a pilha

.DATA ;Inicia a seção de dados
message db 'Soldador', '$'; Uma string com o texto "Soldador" e o caractere $ (fim da string)

.CODE ;Inicia a seção de código

.CODE ;Define  o ponto de entrada do programa, é executado automaticamente quando o programa in
main proc ;Define  o procedimento main como o ponto de entrada do programa

mov ax, @data ;Carrega os dados na memória
mov  ds, ax ;Coloca o segmento dos dados no registrador DS

mov ah, 9h ;Prepara o registrador  AH para enviar uma mensagem de saída

mov dx, offset message ;Pega o endereço da variável message e coloca em DX

int 21h ; Instrução de interrupção

main endp ; Marca o fim do procedimento
end main; Indica o fim
```

* Print do código rodando

  ![image](https://github.com/IanSiqueira/ASSEMBLY/assets/101524235/4a562047-aabe-4531-8e10-ea8ccd7aadab)


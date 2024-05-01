.MODEL small ;Define o modelo de memoria
.STACK 64 ;Aloca um espaço de 64 bytes para a pilha

.DATA ;Inicio da seção de dados
message db 'Soldador', '$' ; Define uma mensagem e termina com $

.CODE ; Inicio da seção de código
main proc; Dedine o inicio do procedimento principal

mov ax, @data ;Carrega o endereço em AX
mov ds, ax ;Move o valor de AX para o registrador DS

mov ah, 9h ;Preparar o registrador AH para a função 09h do DOS
mov dx, offset message; Vai fazer o deslocamento da msg

int 21h;

main endp ; Marca o fim
end main ; Indica o fim
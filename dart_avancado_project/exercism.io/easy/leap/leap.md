
# Lead 

**Introdução**

Dado um ano, informe se é um ano bissexto.

O complicado aqui é que ocorre um ano bissexto no calendário gregoriano:

        on every year that is evenly divisible by 4
        except every year that is evenly divisible by 100
            unless the year is also evenly divisible by 400
            
Por exemplo, 1997 não é um ano bissexto, mas 1996 é. 1900 não é um ano bissexto, mas 2000 é.

Notas
Embora nosso exercício adote algumas regras muito simples, há mais para aprender!

Para uma explicação deliciosa de quatro minutos de todo o fenômeno do ano bissexto, vá assistir a este vídeo do youtube .

Para executar os testes:

$ pub run test
Para obter informações mais detalhadas sobre a pista de Dart, consulte as páginas de instalação e teste .

Fonte
JavaRanch Cattle Drive, exercício 3 http://www.javaranch.com/leap.jsp

Envio de soluções incompletas
É possível enviar uma solução incompleta para que você possa ver como outras pessoas concluíram o exercício.
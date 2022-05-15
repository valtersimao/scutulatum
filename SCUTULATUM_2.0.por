programa
{
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> t
	
	inteiro dg1=0,dg2=0,dg3=0,dg4=0,dg5=0,dg6=0,dg7=0,dg8=0,dg9=0,dg10=0,dg11=0,dg12=0,dg13=0,dg14=0
	
	funcao inicio()
	{
		faca
		{	
			inteiro CPFouCNPJ = escolhaCPFouCNPJ()
			se(CPFouCNPJ==1)
			{
				cadeia doc
				interface(3)
				leia(doc)
				doc = doc + "000"
				separaDG(doc)
				logico confirmacao = verificaCPF()
				se(confirmacao)
				{
					interface(4)
				}senao
				{
					interface(5)
				}
			}
			se(CPFouCNPJ==2)
			{
				cadeia doc
				interface(6)
				leia(doc)
				separaDG(doc)
				logico confirmacao = verificaCNPJ()
				se(confirmacao)
				{
					interface(7)
				}senao{
					interface(8)
				}
			}		
		}enquanto(repetir())
		interface(11)
	}
	funcao interface(inteiro x)
	{
		//A interface que será exibida é determinada pelo número 'x' na chamada da função
		escolha(x){
		caso 1:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva(" ESCOLHA O NÚMERO DE ACORDO COM O\n QUE VOCÊ DESEJA VERIFICAR:\n\n")
			escreva(" - 1: CPF\n - 2: CNPJ\n")
			escreva("====================================\n")
			escreva("--> ")
		pare
		
		caso 2:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva(" ESCOLHA O NÚMERO DE ACORDO COM O\n QUE VOCÊ DESEJA VERIFICAR:\n\n")
			escreva(" - 1: CPF\n - 2: CNPJ\n")
			escreva("====================================\n")
			escreva("NÚMERO INVÁLIDO, TENTE NOVAMENTE! \n")
			escreva("====================================\n")
			escreva("--> ")
		pare

		caso 3:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("INSIRA O CPF:\n")
			escreva("--> ")
		pare

		caso 4:
		limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("CPF: ",dg1,dg2,dg3,".",dg4,dg5,dg6,".",dg7,dg8,dg9,"-",dg10,dg11)
			escreva("\n\nSITUAÇÃO: VÁLIDO\n")
			escreva("====================================")
		pare

		caso 5: 
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("CPF: ",dg1,dg2,dg3,".",dg4,dg5,dg6,".",dg7,dg8,dg9,"-",dg10,dg11)
			escreva("\n\nSITUAÇÃO: INVÁLIDO\n")
			escreva("====================================")
		pare

		caso 6:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("INSIRA O CNPJ:\n")
			escreva("--> ")
		pare

		caso 7:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("CNPJ: ",dg1,dg2,".",dg3,dg4,dg5,".",dg6,dg7,dg8,"/",dg9,dg10,dg11,dg12,"-",dg13,dg14,"\n")
			escreva("\nSITUAÇÃO: VÁLIDO\n")
			escreva("====================================")
		pare

		caso 8:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("CNPJ: ",dg1,dg2,".",dg3,dg4,dg5,".",dg6,dg7,dg8,"/",dg9,dg10,dg11,dg12,"-",dg13,dg14,"\n")
			escreva("\nSITUAÇÃO: INVÁLIDO\n")
			escreva("====================================")
		pare

		caso 9:
			escreva("\nVOCÊ DESEJA CONSULTAR NOVAMENTE?\n")
			escreva("\n 1 - SIM\n 2 - NÃO\n")
			escreva("====================================")
			escreva("\n--> ")
		pare

		caso 10:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
			escreva("NÚMERO INVÁLIDO! TENTE NOVAMENTE\n")
			escreva("====================================")
			escreva("\nVOCÊ DESEJA CONSULTAR NOVAMENTE?\n")
			escreva("\n 1 - SIM\n 2 - NÃO\n")
			escreva("====================================")
			escreva("\n--> ")
		pare
		caso 11:
			limpa()
			escreva("====================================\n-------------SCUTULATUM-------------\n====================================\n")
		}
		
	}
	funcao  inteiro escolhaCPFouCNPJ()
	{
		inteiro CPFouCNPJ
		interface(1)//valor para interface
		leia(CPFouCNPJ)
		
		//Caso não seja um resultado previsto 
		
		enquanto(CPFouCNPJ != 1  e CPFouCNPJ != 2)
		{
			interface(2)
			leia(CPFouCNPJ)
		}
		//Valor vai ser utilizado na função inicio
		retorne CPFouCNPJ
	}
	funcao separaDG(cadeia doc)
	{	
		//Separação dos dígitos
		//Obter cada caractér e transformar em um número inteiro
		dg1 = ti.caracter_para_inteiro(t.obter_caracter(doc, 0))
		dg2 = ti.caracter_para_inteiro(t.obter_caracter(doc, 1))
		dg3 = ti.caracter_para_inteiro(t.obter_caracter(doc, 2))
		dg4 = ti.caracter_para_inteiro(t.obter_caracter(doc, 3))
		dg5 = ti.caracter_para_inteiro(t.obter_caracter(doc, 4))
		dg6 = ti.caracter_para_inteiro(t.obter_caracter(doc, 5))
		dg7 = ti.caracter_para_inteiro(t.obter_caracter(doc, 6))
		dg8 = ti.caracter_para_inteiro(t.obter_caracter(doc, 7))
		dg9 = ti.caracter_para_inteiro(t.obter_caracter(doc, 8))
		dg10 = ti.caracter_para_inteiro(t.obter_caracter(doc, 9))
		dg11 = ti.caracter_para_inteiro(t.obter_caracter(doc, 10))
		dg12 = ti.caracter_para_inteiro(t.obter_caracter(doc, 11))
		dg13 = ti.caracter_para_inteiro(t.obter_caracter(doc, 12))
		dg14 = ti.caracter_para_inteiro(t.obter_caracter(doc, 13))

	}
	funcao logico verificaCPF()
	{
		inteiro val1, val2
		//Cálculo do valor verificador 1
		val1=(dg1*10+dg2*9+dg3*8+dg4*7+dg5*6+dg6*5+dg7*4+dg8*3+dg9*2)
		val1= val1 % 11
		se(val1 >= 2){
			val1 = 11-val1
		}senao{
			val1 = 0
		}
		//Cálculo do valor verificador 2
		val2=(dg1*11+dg2*10+dg3*9+dg4*8+dg5*7+dg6*6+dg7*5+dg8*4+dg9*3+dg10*2)
		val2= val2 % 11
				
		se(val2 >= 2){
			val2 = 11-val2
		}senao{
			val2 = 0
		}

		//Verificar se os digitos e os valores correspondem
		
		se(val1 == dg10 e val2 == dg11)
		{
			retorne verdadeiro
		}senao
		{
			retorne falso
		}
	}
	funcao logico verificaCNPJ()
	{
		inteiro val1, val2
		//Cálculo do valor verificador 1
		
		val1 = (dg1*5 + dg2*4 + dg3*3 + dg4*2 + dg5*9 + dg6*8 + dg7*7 + dg8*6 + dg9*5 + dg10*4 + dg11*3 + dg12*2)
		val1 = val1%11
		se(val1 >= 2){
			val1 = 11 - val1
		}senao{
			val1 = 0
		}
		
		//Cálculo do valor verificador 2
		
		val2 = dg1*6 + dg2*5 + dg3*4 + dg4*3 + dg5*2 + dg6*9 + dg7*8 + dg8*7 + dg9*6 + dg10*5 + dg11*4 + dg12*3 + dg13*2
		val2 = val2%11
		se(val2 >= 2){
			val2 = 11-val2
		}senao{
			val2 = 0
		}
		//Verificar se os digitos e os valores correspondem
		se(val1 == dg13 e val2 == dg14)
		{
			retorne verdadeiro
		}senao
		{
			retorne falso
		}
	}
	funcao logico repetir()
	{
		//Determinar um loop para que o código possa ser utilizado múltiplas vezes
		inteiro loop
		interface(9)
		leia(loop)
		enquanto(loop!=1 e loop!=2)
		{
			interface(10)
			leia(loop)
		}se(loop==1)
		{
			retorne verdadeiro
		}senao
		{
			retorne falso
		}
		
	}
/*+-+-+-+-+-+-CRÉDITOS-+-+-+-+-+-+
===================================
------------SCUTULATUM-------------
===================================
PROGRAMA FEITO POR:

-VALTER DOS SANTOS SIMÃO JÚNIOR
-ARTHUR RIBEIRO MELO
===================================
*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6862; 
 * @DOBRAMENTO-CODIGO = [205];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
# Banco de dados

## Tabelas 

### Informações do usuário
* Nome do usuário - Texto
* Senha - texto (hash)
* Salário - Double
* Horas Trabalhadas Por Dia - Inteiro
* Dias trabalhados Por Semana - Inteiro
* Carga horária - Inteiro
* Valor Hora - Double

### Saldo
* Renda Mês
* Débito
* Crédito
* Mês/Ano

### Fluxo de Caixa
* Nome do Gasto/Ganho - Texto
* Data - Texto / Date
* Valor - Double
* Número da Parcela - Inteiro
* Parcelas - Inteiro
* Valor Cheio - Double
* Categoria - Categoria
* Porcetagem - Double
* Tempo Horas - Texto

### Recorrente
* Nome - Texto
* Data Inicio
* Data final
* Valor - Double
* Categoria - Categoria #F
* Porcentagem - Double
* Tempo Horas - Texto

### Categorias
* Nome
* ID 

### Conta
* Nome
* Valor
* Tipo de conta #FK

### Transferências
* Nome Conta Origem
* Nome Conta Destino
* Valor Transferência
* Descrição
* Data da transferência

### Tipo de Conta
* ID
* Tipo

### Metas
* Nome da meta
* Data previsão meta
* Data Inicio meta
* Descrição
* Valor objetivo
* Valor atual
* Concluida
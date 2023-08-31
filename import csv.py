import csv

# Dados de exemplo
dados = [
    ["Produto", "CodProduto", "Valor"],
    ["Arroz", 1, "7,00"],
    ["Feijão", 2, "7,00"],
    ["Batata", 3, "5,00"]
]

# Escrever os dados no arquivo CSV
with open('dados.csv', mode='w', newline='') as arquivo_csv:
    escritor = csv.writer(arquivo_csv)
    escritor.writerows(dados)

print("Arquivo CSV criado com sucesso.")

import csv

# Dados de exemplo
dados = [
    ["Nome", "Idade", "Cidade"],
    ["João", 25, "São Paulo"],
    ["Maria", 30, "Rio de Janeiro"],
    ["Carlos", 22, "Belo Horizonte"]
]

# Escrever os dados no arquivo CSV
with open('dados.csv', mode='w', newline='') as arquivo_csv:
    escritor = csv.writer(arquivo_csv)
    escritor.writerows(dados)

print("Arquivo CSV criado com sucesso.")

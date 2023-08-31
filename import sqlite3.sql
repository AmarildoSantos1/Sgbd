import sqlite3

# Conectar ao banco de dados (criará um novo arquivo caso não exista)
conexao = sqlite3.connect('dados.db')

# Criar uma tabela
conexao.execute('''CREATE TABLE IF NOT EXISTS pessoas
             (id INTEGER PRIMARY KEY AUTOINCREMENT,
              nome TEXT NOT NULL,
              idade INTEGER NOT NULL,
              cidade TEXT NOT NULL);''')

# Ler os dados do arquivo CSV e inserir no banco de dados
with open('dados.csv', 'r') as arquivo_csv:
    leitor = csv.reader(arquivo_csv)
    # Ignorar o cabeçalho
    next(leitor)
    for linha in leitor:
        nome, idade, cidade = linha
        conexao.execute("INSERT INTO pessoas (nome, idade, cidade) VALUES (?, ?, ?);", (nome, idade, cidade))

# Confirmar as alterações e fechar a conexão
conexao.commit()
conexao.close()

print("Dados inseridos no banco de dados.")

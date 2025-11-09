# Estágio de build
FROM python

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo de dependências
COPY requirements.txt .

# Instala as dependências em um ambiente virtual
RUN pip install --no-cache-dir -r requirements.txt

# Copia os arquivos da aplicação
COPY . .

# Expõe a porta que o Gunicorn irá rodar
EXPOSE 8000

# Comando para rodar a aplicação com Gunicorn
CMD ["gunicorn","-w", "4", "--bind", "0.0.0.0:8000", "main:app"]

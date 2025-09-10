# Test Web Server

Este é um servidor web simples em Flask, empacotado em Docker para fins de teste.


## Como usar

1. Construa a imagem Docker:

   ```bash
   docker build -t test-webserver .
   ```

2. Execute o container, mapeando a porta 8080 do container para a porta de sua escolha no host:

   ```bash
   docker run -d -p <SUA_PORTA>:8080 test-webserver
   ```

   Substitua `<SUA_PORTA>` pela porta que deseja usar (por exemplo, 5000).

3. Teste acessando no navegador ou usando `curl`:

   ```bash
   curl http://localhost:<SUA_PORTA>/
   ```

   Você deverá ver a resposta

   ```
    HTTPD SERVER
    THE SERVER IS RUNNING!
   ```
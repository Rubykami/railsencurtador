<h1 align="center"> Encurtador de Links </h1>

---

# O que esse encurtador faz?
	
Ele irá pegar qualquer tipo de link que você possuir e irá transformá-lo em um link minúsculo muito mais fácil de ser armazenado que irá te redirecionador para o site que você encurtou.

---
</hr>

</hr>

1. Primeiramente, você deve criar o banco de dados utilizando o terminal através do comando rails db:create e logo após isso migrar o banco de dados para a sua aplicação utilizando o comando rails db:migrate.
2. Como esta aplicação utiliza PostgreSQL, você deve tê-lo instalado.
3. Vá para o arquivo config/database.yml e troque os campos username e password para o username e password do seu PostgreSQL, aqui eu usei
username: seuusuariopostgreSQL e
password: suasenhapostgreSQL
4. Digite o comando bundle install para instalar todas as gems(bibliotecas) do Rails.
5. O comando usado no terminal para iniciar o servidor é "rails s -p 3001". É muito importante que o comando utilizado seja esse.


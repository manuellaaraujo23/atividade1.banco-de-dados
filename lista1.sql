
use trabalho_at1;

insert into livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, qt_paginas, idioma) VALUES 
("As crônicas de nárnia", "C.S Lewis", 1950, TRUE, "fantasia", "978-0064471190", "Hsappercollins", 768, "ingles");

insert into livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, qt_paginas, idioma) VALUES 
("cem anos de solidão", "Gabriel Garcia Marquez", 1967, TRUE, "ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

insert into  livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, qt_paginas, idioma) VALUES 
("livro historico ficticio", "Manuella Silva", 2000, TRUE, "historica", "146-643547908", "Eduarda Araujo", 300,"portugues");

update livros
set disponivel=false
where ano_publicado<2000;

update livros
set editora="Plume Books"
where titulo="1984";

update livros
set idioma="ingles"
where editora="Penguin Books";

update livros
set titulo="Harry Potter e a Pedra Filosofal"
where isbn="978-0439708180";

delete from livros
where categoria=terror;

delete from livros
where idioma="frances" AND ano_publicação<1970;

delete from livros
where editora="Penguin Books";

select * from livros
where qt_paginas>500;

select categoria, COUNT(*) AS tt_por_categoria
from livro
group by categoria;

select *from livros
limit 5;

select SUM (qt_paginas) AS total_por_paginas, AVG(qt_paginas)
from livros
where categoria="drama";

select AVG(ano_Publicacao) AS media_ano_publicacao
from livros
where disponivel=TRUE; 

select MAX (ano_publicacao) livros_mais_recente, MIN (ano_publicacao) AS livro_mais_antigo
from livros;

select*from livros
order by ano_publicacao DESC;

(select titulo from livros where idioma = 'Inglês')
UNION
(select titulo from livros where idioma = 'Português');

select * from livros
where autor = 'George Orwell';




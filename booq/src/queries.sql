use booqDB;

select title, author, price, genreName from Book
	inner join Genre on Book.genreId = Genre.genreId;

select Book.id, title, author, price, stock, genreName, genreId, description
	from Book inner join Genre
	on Book.genreId = Genre.id
	where genreName like 'Romance';
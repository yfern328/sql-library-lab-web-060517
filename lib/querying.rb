#Pair Programming Lab with Yelstin as Driver and Alex T. as Navigator

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id = 1
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH (characters.motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) AS 'species_counter'
  FROM characters
  GROUP BY characters.species
  ORDER BY species_counter DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id
  INNER JOIN authors
  ON series.author_id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(characters.species) desc LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS 'book_counter'
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.id
  ORDER BY book_counter DESC, characters.name"
end

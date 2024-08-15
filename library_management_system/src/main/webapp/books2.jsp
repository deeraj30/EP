<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f7f7f7, #e0e0e0);
            margin: 0;
            padding: 0;
            color: #333;
        }
        header {
            background: #007BFF;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            margin: 0;
            font-size: 36px;
            font-weight: bold;
        }
        .container {
            width: 80%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        table th {
            background: #007BFF;
            color: #fff;
        }
        table tr:nth-child(even) {
            background: #f9f9f9;
        }
        table tr:hover {
            background: #f1f1f1;
        }
        img {
            width: 50px; /* Adjusted size */
            height: auto;
            border-radius: 4px;
        }
        a {
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
            margin-right: 15px;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .links {
            text-align: center;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Books List</h1>
    </header>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Image</th>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Publisher</th>
                    <th>Year</th>
                    <th>ISBN</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td><img src="images/The Art of Laziness.jpg" alt="The Art of Laziness" class="book-image"></td>
                <td>4</td>
                <td>The Art of Laziness: Overcome Procrastination & Improve Your Productivity</td>
                <td>Library Mindset</td>
                <td>Self-help book</td>
                <td>Indian Press</td>
                <td>2023</td>
                <td>440568901</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/Good Vibes, Good Life.jpg" alt="Good Vibes, Good Life" class="book-image"></td>
                <td>5</td>
                <td>Good Vibes, Good Life</td>
                <td>Vex King</td>
                <td>Self-help book</td>
                <td>Indian Press</td>
                <td>2018</td>
                <td>846135970</td>
                <td>6</td>
            </tr>
            <tr>
                <td><img src="images/To Kill a Mockingbird.jpg" alt="To Kill a Mockingbird" class="book-image"></td>
                <td>6</td>
                <td>To Kill a Mockingbird</td>
                <td>Harper Lee</td>
                <td>Fiction</td>
                <td>J.B. Lippincott & Co.</td>
                <td>1960</td>
                <td>9780061120084</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/1984.jpg" alt="1984" class="book-image"></td>
                <td>7</td>
                <td>1984</td>
                <td>George Orwell</td>

<td>Dystopian</td>
                <td>Secker & Warburg</td>
                <td>1949</td>
                <td>9780451524935</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/pride_and_prejudice.jpg" alt="Pride and Prejudice" class="book-image"></td>
                <td>8</td>
                <td>Pride and Prejudice</td>
                <td>Jane Austen</td>
                <td>Romance</td>
                <td>T. Egerton</td>
                <td>1813</td>
                <td>9781503290563</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/the_great_gatsby.jpg" alt="The Great Gatsby" class="book-image"></td>
                <td>9</td>
                <td>The Great Gatsby</td>
                <td>F. Scott Fitzgerald</td>
                <td>Tragedy</td>
                <td>Charles Scribner's Sons</td>
                <td>1925</td>
                <td>9780743273565</td>
                <td>6</td>
            </tr>
            <tr>
                <td><img src="images/moby_dick.jpg" alt="Moby-Dick" class="book-image"></td>
                <td>10</td>
                <td>Moby-Dick</td>
                <td>Herman Melville</td>
                <td>Adventure</td>
                <td>Harper & Brothers</td>
                <td>1851</td>
                <td>9781503280786</td>
                <td>2</td>
            </tr>
            <tr>
                <td><img src="images/war_and_peace.jpg" alt="War and Peace" class="book-image"></td>
                <td>11</td>
                <td>War and Peace</td>
                <td>Leo Tolstoy</td>
                <td>Historical</td>
                <td>The Russian Messenger</td>
                <td>1869</td>
                <td>9781505224122</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/the_catcher_in_the_rye.jpg" alt="The Catcher in the Rye" class="book-image"></td>
                <td>12</td>
                <td>The Catcher in the Rye</td>
                <td>J.D. Salinger</td>
                <td>Fiction</td>
                <td>Little, Brown and Company</td>
                <td>1951</td>
                <td>9780316769488</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/the_hobbit.jpg" alt="The Hobbit" class="book-image"></td>
                <td>13</td>
                <td>The Hobbit</td>
                <td>J.R.R. Tolkien</td>
                <td>Fantasy</td>
                <td>George Allen & Unwin</td>
                <td>1937</td>
                <td>9780547928227</td>
                <td>8</td>
            </tr>
            <tr>
                <td><img src="images/fahrenheit_451.jpg" alt="Fahrenheit 451" class="book-image"></td>
                <td>14</td>
                <td>Fahrenheit 451</td>
                <td>Ray Bradbury</td>
                <td>Dystopian</td>
                <td>Ballantine Books</td>
                <td>1953</td>
                <td>9781451673319</td>
                <td>7</td>
            </tr>
            <tr>
                <td><img src="images/jane_eyre.jpg" alt="Jane Eyre" class="book-image"></td>
                <td>15</td>
                <td>Jane Eyre</td>
                <td>Charlotte Brontë</td>
                <td>Romance</td>
                <td>Smith, Elder & Co.</td>
                <td>1847</td>
                <td>9781503278196</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/the_odyssey.jpg" alt="The Odyssey" class="book-image"></td>
                <td>16</td>
                <td>The Odyssey</td>
                <td>Homer</td>
                <td>Epic</td>
                <td>Various</td>
                <td>-800</td>
                <td>9780140268867</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/crime_and_punishment.jpg" alt="Crime and Punishment" class="book-image"></td>
                <td>17</td>

<td>Crime and Punishment</td>
                <td>Fyodor Dostoevsky</td>
                <td>Psychological</td>
                <td>The Russian Messenger</td>
                <td>1866</td>
                <td>9780486415871</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/the_brothers_karamazov.jpg" alt="The Brothers Karamazov" class="book-image"></td>
                <td>18</td>
                <td>The Brothers Karamazov</td>
                <td>Fyodor Dostoevsky</td>
                <td>Philosophical</td>
                <td>The Russian Messenger</td>
                <td>1880</td>
                <td>9780374528379</td>
                <td>2</td>
            </tr>
            <tr>
                <td><img src="images/brave_new_world.jpg" alt="Brave New World" class="book-image"></td>
                <td>19</td>
                <td>Brave New World</td>
                <td>Aldous Huxley</td>
                <td>Dystopian</td>
                <td>Chatto & Windus</td>
                <td>1932</td>
                <td>9780060850524</td>
                <td>6</td>
            </tr>
            <tr>
                <td><img src="images/wuthering_heights.jpg" alt="Wuthering Heights" class="book-image"></td>
                <td>20</td>
                <td>Wuthering Heights</td>
                <td>Emily Brontë</td>
                <td>Gothic</td>
                <td>Thomas Cautley Newby</td>
                <td>1847</td>
                <td>9781505313109</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/anna_karenina.jpg" alt="Anna Karenina" class="book-image"></td>
                <td>21</td>
                <td>Anna Karenina</td>
                <td>Leo Tolstoy</td>
                <td>Romance</td>
                <td>The Russian Messenger</td>
                <td>1877</td>
                <td>9780143035008</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/the_adventures_of_huckleberry_finn.jpg" alt="The Adventures of Huckleberry Finn" class="book-image"></td>
                <td>22</td>
                <td>The Adventures of Huckleberry Finn</td>
                <td>Mark Twain</td>
                <td>Adventure</td>
                <td>Chatto & Windus / Charles L. Webster And Company</td>
                <td>1884</td>
                <td>9780486280615</td>
                <td>7</td>
            </tr>
            <tr>
                <td><img src="images/don_quixote.jpg" alt="Don Quixote" class="book-image"></td>
                <td>23</td>
                <td>Don Quixote</td>
                <td>Miguel de Cervantes</td>
                <td>Comedy</td>
                <td>Francisco de Robles</td>
                <td>1605</td>
                <td>9780060934347</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/one_hundred_years_of_solitude.jpg" alt="One Hundred Years of Solitude" class="book-image"></td>
                <td>24</td>
                <td>One Hundred Years of Solitude</td>
                <td>Gabriel García Márquez</td>
                <td>Magic Realism</td>
                <td>Harper & Row</td>
                <td>1967</td>
                <td>9780060883287</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/les_miserables.jpg" alt="Les Misérables" class="book-image"></td>
                <td>25</td>
                <td>Les Misérables</td>
                <td>Victor Hugo</td>
                <td>Historical</td>
                <td>A. Lacroix, Verboeckhoven & Cie.</td>
                <td>1862</td>
                <td>9780451419439</td>
                <td>2</td>
            </tr>
            <tr>
                <td><img src="images/the_divine_comedy.jpg" alt="The Divine Comedy" class="book-image"></td>
                <td>26</td>
                <td>The Divine Comedy</td>
                <td>Dante Alighieri</td>
                <td>Epic</td>

<td>Various</td>
                <td>1320</td>
                <td>9780140448955</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/ulysses.jpg" alt="Ulysses" class="book-image"></td>
                <td>27</td>
                <td>Ulysses</td>
                <td>James Joyce</td>
                <td>Modernist</td>
                <td>Shakespeare and Company</td>
                <td>1922</td>
                <td>9780199535675</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/the_iliad.jpg" alt="The Iliad" class="book-image"></td>
                <td>28</td>
                <td>The Iliad</td>
                <td>Homer</td>
                <td>Epic</td>
                <td>Various</td>
                <td>-750</td>
                <td>9780140275360</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/madame_bovary.jpg" alt="Madame Bovary" class="book-image"></td>
                <td>29</td>
                <td>Madame Bovary</td>
                <td>Gustave Flaubert</td>
                <td>Literary Realism</td>
                <td>Michel Lévy Frères</td>
                <td>1857</td>
                <td>9780140449129</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/a_tale_of_two_cities.jpg" alt="A Tale of Two Cities" class="book-image"></td>
                <td>30</td>
                <td>A Tale of Two Cities</td>
                <td>Charles Dickens</td>
                <td>Historical</td>
                <td>Chapman & Hall</td>
                <td>1859</td>
                <td>9781853260391</td>
                <td>6</td>
            </tr>
            <tr>
                <td><img src="images/dracula.jpg" alt="Dracula" class="book-image"></td>
                <td>31</td>
                <td>Dracula</td>
                <td>Bram Stoker</td>
                <td>Gothic</td>
                <td>Archibald Constable and Company</td>
                <td>1897</td>
                <td>9780486411095</td>
                <td>5</td>
            </tr>
            <tr>
                <td><img src="images/the_count_of_monte_cristo.jpg" alt="The Count of Monte Cristo" class="book-image"></td>
                <td>32</td>
                <td>The Count of Monte Cristo</td>
                <td>Alexandre Dumas</td>
                <td>Adventure</td>
                <td>Pierre-Jules Hetzel</td>
                <td>1844</td>
                <td>9780553213508</td>
                <td>7</td>
            </tr>
            <tr>
                <td><img src="images/frankenstein.jpg" alt="Frankenstein" class="book-image"></td>
                <td>33</td>
                <td>Frankenstein</td>
                <td>Mary Shelley</td>
                <td>Gothic</td>
                <td>Lackington, Hughes, Harding, Mavor & Jones</td>
                <td>1818</td>
                <td>9780486282114</td>
                <td>4</td>
            </tr>
            <tr>
                <td><img src="images/the_picture_of_dorian_gray.jpg" alt="The Picture of Dorian Gray" class="book-image"></td>
                <td>34</td>
                <td>The Picture of Dorian Gray</td>
                <td>Oscar Wilde</td>
                <td>Philosophical</td>
                <td>Ward, Lock & Co.</td>
                <td>1890</td>
                <td>9780141439570</td>
                <td>3</td>
            </tr>
            <tr>
                <td><img src="images/great_expectations.jpg" alt="Great Expectations" class="book-image"></td>
                <td>35</td>
                <td>Great Expectations</td>
                <td>Charles Dickens</td>
                <td>Fiction</td>
                <td>Chapman & Hall</td>
                <td>1861</td>
                <td>9780141439563</td>
                <td>5</td>
            </tr>
        </tbody>
        </table>
    </div>
    <div class="links">
            <a href="home2.jsp">Home</a>
        </div>
    
</body>

</html>
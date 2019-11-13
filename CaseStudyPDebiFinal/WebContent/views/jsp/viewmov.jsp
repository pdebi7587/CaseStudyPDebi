<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movies List</title>
</head>
<body>
<table border="2" width="70%" cellpadding="2">    
<tr><th>Id</th><th>Title</th><th>Release Date</th><th>Imdb Rating</th><th>Runtime Minutes</th><th>Genres</th></tr> 
<tr><th>1</th><th><a href="https://www.imdb.com/title/tt0086439/">Tiger Town</a></th><th>10/9/1983</th><th>	6.7</th><th>95</th><th>Drama, Family, Sport</th></tr> 
<tr><th>2</th><th><a href="https://www.imdb.com/title/tt0087351/">Gone Are the Dayes</a></th><th>5/6/1984</th><th>6</th><th>90</th><th>Comedy, Crime</th></tr>  
<tr><th>3</th><th><a href="https://www.imdb.com/title/tt0087642/">Love Leads the Way: A True Story</a></th><th>10/7/1984</th><th>7.8</th><th>99</th><th>Drama, Family, History</th></tr>
<tr><th>4</th><th><a href="https://www.imdb.com/title/tt0088813/">Black Arrow</a></th><th>5/6/1984</th><th>6.7</th><th>90</th><th>Adventure, History</th></tr>   
<tr><th>5</th><th><a href="https://www.imdb.com/title/tt0089506/">Lots of Luck</a></th><th>2/3/1985</th><th>6.5</th><th>88</th><th>Comedy, Drama, Family</th></tr> 
<tr><th>6</th><th><a href="https://www.imdb.com/title/tt0090232/">The Undergrads</a></th><th>4/1/1985</th><th>6.5</th><th>103</th><th>Drama, Comedy</th></tr> 
<tr><th>7</th><th><a href="https://www.imdb.com/title/tt0091721/">The Parent Trap II</a></th><th>7/26/1986</th><th>6.3</th><th>81</th><th>Family, Comedy</th></tr> 
<tr><th>8</th><th><a href="https://www.imdb.com/title/tt0091999/">Spot Marks the X</a></th><th>10/18/1986</th><th>6.6</th><th>90</th><th>Comedy, Crime, Family</th></tr>
<tr><th>9</th><th><a href="https://www.imdb.com/title/tt0091436/">Louis L'Amour's Down the Long Hills</a></th><th>11/15/1986</th><th>6.8</th><th>97</th><th>Western</th></tr>  
<tr><th>10</th><th><a href="https://www.imdb.com/title/tt0093649/">Not Quite Human</a></th><th>6/19/1987</th><th>6.2</th><th>97</th><th>Family, Sci-Fi, Comedy</th></tr>  
<tr><th>11</th><th><a href="https://www.imdb.com/title/tt0096042/">Save the Dog!</a></th><th>3/19/1988</th><th>6.9</th><th>87</th><th>Family, Comedy</th></tr>   
<tr><th>12</th><th><a href="https://www.imdb.com/title/tt0095733/">The Night Train to Kathmandu</a></th><th>6/5/1988</th><th>6.3</th><th>102</th><th>Adventure, Romance, Fantasy, Mystery, Drama</th></tr>
<tr><th>13</th><th><a href="https://www.imdb.com/title/tt0078328/">Strange Companions</a></th><th>12/4/1983</th><th>7.2</th><th>92</th><th>Family</th></tr>  
<tr><th>14</th><th><a href="https://www.imdb.com/title/tt0098023/">Ollie Hopnoodle's Haven of Bliss</a></th><th>8/6/1988</th><th>7.3</th><th>89</th><th>Comedy, Family</th></tr> 
<tr><th>15</th><th><a href="https://www.imdb.com/title/tt0095181/">A Friendship in Vienna</a></th><th>8/27/1988</th><th>6.8</th><th>100</th><th>Drama, History</th></tr> 
     
   <c:forEach var="movies" items="${movies}">     
   <tr>    
   <td>${movies.movId}</td><td>${movies.movName}</td><td>${movies.reldate}</td><td>${movies.imdbR}</td> 
   <th>${movies.movId}</th><th>${movies.movName}</th><th>${movies.reldate}</th><th>${movies.imdbR}</th> 
															
    
   </tr>    
   </c:forEach>    
   </table>    
   <br/>    
   <a href="/CaseStudyPDebiFinal/viewmov">1</a>     
   <a href="/CaseStudyPDebiFinal/viewmov/2">2</a>     
   <a href="/CaseStudyPDebiFinal/viewmov/3">3</a> 
   <a href="/CaseStudyPDebiFinal/viewmov/3">4</a> 
   <a href="/CaseStudyPDebiFinal/viewmov/3">5</a> 
   <a href="/CaseStudyPDebiFinal/viewmov/3">6</a>    
</body>
</html>
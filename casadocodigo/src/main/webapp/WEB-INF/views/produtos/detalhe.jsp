<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="${produto.titulo }">

<article id="${produto.id }" itemscope>
  <header id="product-highlight" class="clearfix">
    <div id="product-overview" class="container">
      <img itemprop="image" width="280px" height="395px" src="//cdn.shopify.com/s/files/1/0155/7645/products/java8-featured_large.png?v=1411490181" class="product-featured-image" alt="Java 8 Prático: Lambdas, Streams e os novos recursos da linguagem">
      
      <h1 class="product-title" itemprop="name">
      	${produto.titulo }
      </h1>
      <p class="product-author">
        <span class="product-author-link">
        </span>
      </p>

    	  <p itemprop="description" class="book-description">${produto.descricao }</p>
 	
    </div>
  </header>

  
  <section class="buy-options clearfix">  
  <form:form servletRelativeAction="/carrinho/add" method="post" 
  		cssClass="container">
    <ul id="variants" class="clearfix">
    		<input type="hidden" value="${produto.id }" name="produtoId"/>
        <c:forEach items="${produto.precos }" var="preco">  
          <li class="buy-option" itemprop="offers" itemscope >
            <input type="radio" name="tipoPreco" class="variant-radio" 
            			id="${preco.tipo }" value="${preco.tipo }"  checked  >
            <label itemprop="category" for="${preco.tipo }"  itemscope  class="variant-label">${preco.tipo }</label>
            <small class="compare-at-price">R$ 39,90</small>
            <p class="variant-price" itemprop="price">${preco.valor } </p>
          </li>
       </c:forEach>
    </ul>
    
    <button type="submit" class="submit-image icon-basket-alt" 
    			alt="Compre agora" title="Compre agora '${produto.titulo }'!"></button>
    
  </form:form>
</section>
  
<div class="container">
  
  <section class="summary">
    <h3>E muito mais... <a href='/pages/sumario-java8'>veja o sumário</a>.</h3>
  </section>
  
  
  <section class="data product-detail">
    <h2 class="section-title">Dados do livro:</h2>
    <p>Número de páginas: <span itemprop="numberOfPages">${produto.paginas }</span></p>
     
    <p><a rel="nofollow" href="https://groups.google.com/forum/#!forum/java8-casadocodigo">Participe da lista de discuss&#227;o do livro</a></p>
    <p>Data de publicação: <span class="publishedAt">
    		<fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time }" />
    		</span></p>
    <p>Encontrou um erro? <a href='/submissao-errata' target='_blank'>Submeta uma errata</a></p>
  </section>
</div>

  
</article>

</tags:pageTemplate>





















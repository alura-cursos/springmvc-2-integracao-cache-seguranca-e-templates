<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Livros de Java, Android, iOS, Mobile, e muito mais...">

  <section id="index-section" class="container middle">

    <ul class="clearfix book-collection">
      <c:forEach items="${produtos}" var="produto">
        <li>
          <a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }" class="block clearfix">
            <h2 class="product-title">${produto.titulo }</h2>
            <img width="143" height="202" 
            			src="//cdn.shopify.com/s/files/1/0155/7645/products/plsql-miniature.png?v=1434740241" alt=" Livro de PL/SQL" title=" Livro de PL/SQL">
            <small class="buy-button">Compre</small>
          </a>
        </li>
      </c:forEach>
      
    </ul>

    <h2 class="cdc-call">Diferenciais da Casa do Código</h2>
   
    <ul id="cdc-diferenciais" class="clearfix">
      <li class="col-left">
        <h3>E-books sem DRM. Leia onde quiser</h3>
        <p>
          <span class="sprite" id="sprite-drm"></span>
          Nossos e-books não possuem DRM, ou seja, você pode ler em qualquer computador, tablet e smartphone.
        </p>
      </li>
      <li class="col-right">
        <h3>Autores de renome na comunidade</h3>
        <p>
          <span class="sprite" id="sprite-renome"></span>
          Autores que participam ativamente na comunidade com Open Source, listas de discussão, grupos e mais.
        </p>
      </li>
      <li class="col-left">
        <h3>Receba atualizações dos e-books</h3>
        <p>
          <span class="sprite" id="sprite-atualizacoes"></span>
          Quando você compra um e-book, automaticamente tem direito às atualizações e correções dele.
        </p>
      </li>
      <li class="col-right">
        <h3>Livros com curadoria da Caelum</h3>
        <p>
          <span class="sprite" id="sprite-caelum"></span>
          Desenvolvedores experientes que avaliam e revisam os livros constantemente.
        </p>
      </li>
    </ul>
  </section>

</tags:pageTemplate>




















<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <header id="layout-header">
    <div class="clearfix container">
        <a href="${s:mvcUrl('HC#index').build() }" id="logo">
          <!-- <img src="http://cdn.shopify.com/s/files/1/0155/7645/t/177/assets/casa-do-codigo-blue.svg?15063963123751285545" alt="Casa do Codigo"> -->
        </a>
      <div id="header-content">
        <nav id="main-nav">
              <ul class="clearfix">
                  <li>
                      <a href="${s:mvcUrl('CCC#itens').build() }" rel="nofollow">
                      	<s:message code="menu.carrinho"
                      		arguments="${carrinhoCompras.quantidade }" />
                      </a>
                      
                  </li>
                  <li>
                      <a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">
                      	<fmt:message key="menu.sobre" />
                      </a>
                  </li>
                  <li>
                      <a href="?locale=pt" rel="nofollow">
                      	<fmt:message key="menu.pt" />
                      </a>
                  </li>
                  <li>
                      <a href="?locale=en_US" rel="nofollow">
                      	<fmt:message key="menu.en" />
                      </a>
                  </li>
              </ul>
        </nav>
      </div>
    </div>
  </header>
  <nav class="categories-nav">
    <ul class="container">
        <li class="category">
        		<a href="${s:mvcUrl('HC#index').build() }">
        			<fmt:message key="navegacao.categoria.home" /></a>
        	
                <li class="category"><a href="/collections/livros-de-agile">
                		<fmt:message key="navegacao.categoria.agile" /></a>
                <li class="category"><a href="/collections/livros-de-front-end">
                    <fmt:message key="navegacao.categoria.front_end" /></a>
                <li class="category"><a href="/collections/livros-de-games">
                    <fmt:message key="navegacao.categoria.games" />
                  </a>
                <li class="category"><a href="/collections/livros-de-java">
                    <fmt:message key="navegacao.categoria.java" />
                  </a>
                <li class="category"><a href="/collections/livros-de-mobile">
                    <fmt:message key="navegacao.categoria.mobile" />
                  </a>
                <li class="category"><a href="/collections/livros-desenvolvimento-web">
                    <fmt:message key="navegacao.categoria.web" />
                  </a>
                <li class="category"><a href="/collections/outros">
                    <fmt:message key="navegacao.categoria.outros" />
                  </a>
    </ul>
  </nav>
    
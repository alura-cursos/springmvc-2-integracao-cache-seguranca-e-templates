<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Seu carrinho de compras">

<jsp:attribute name="extraScripts">
	<script>
        $(function() {
          $('#checkout').click(function () {
            _gaq.push(['_trackPageview', '/checkout/finalizaCompra']);
          });

          $('.book-suggest').click(function () {
            var book = $(this).data('book');
            _gaq.push(['_trackEvent', 'Recomendação', 'Livro', book]); 
          });
        });
    </script>
    
	<noscript><img height="1" width="1" alt="" style="display:none"
	src="https://www.facebook.com/offsite_event.php?id=6009930053200&amp;value=0&amp;currency=USD"
	/></noscript>
</jsp:attribute>

<jsp:body>
  <section class="container middle">

  <h2 id="cart-title">Seu carrinho de compras</h2>
  
    <table id="cart-table">
      <colgroup>
        <col class="item-col">
        <col class="item-price-col">
        <col class="item-quantity-col">
        <col class="line-price-col">
        <col class="delete-col">
      </colgroup>
      <thead>
        <tr>
          <th class="cart-img-col"></th>
          <th width="65%">Item</th>
          <th width="10%">Preço</th>
          <th width="10%">Quantidade</th>
          <th width="10%">Total</th>
          <th width="5%"></th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${carrinhoCompras.itens }" var="item">
	        <tr>
	          <td class="cart-img-col"><img src="//cdn.shopify.com/s/files/1/0155/7645/products/orientacao-objetos-java-featured_small.png?v=1416402140" /></td>
	          <td class="item-title">${item.produto.titulo }</td>
	          <td class="numeric-cell">${item.preco }</td>
	          <td class="quantity-input-cell">
	          	<input type="number" min="0" id="quantidade" name="quantidade" 
	          		   value="${carrinhoCompras.getQuantidade(item) }"></td>
	          <td class="numeric-cell">${carrinhoCompras.getTotal(item) }</td>
	          <td class="remove-item">
	          	<form:form 
	          		action="${s:mvcUrl('CCC#remover').arg(0,item.produto.id).arg(1,item.tipoPreco).build() }" 
	          			method="post">
	          		<input type="image" 
	          			src="http:////cdn.shopify.com/s/files/1/0155/7645/t/177/assets/excluir.png?1575580795780530083" 
	          			alt="Excluir" title="Excluir" />
	          	</form:form>
	          </td>
	        </tr>
        </c:forEach>
        
      </tbody>
      <tfoot>
        <tr>
          <td colspan="4">
          	<form:form action="${s:mvcUrl('PC#finalizar').build() }" method="post">
          		<input type="submit" class="checkout" name="checkout" 
          			value="Finalizar compra " id="checkout"/>
          	</form:form>
          </td>
          <td class="numeric-cell">${carrinhoCompras.total }</td>
          <td></td>
        </tr>
      </tfoot>
    </table>
    
  <h2>Voçê já conhece os outros livros da Casa do Código?</h2>
  <ul id="collection" class="related-books">
    <li class="col-left">
      <a href="/products/livro-ferramentas-devops" class="block clearfix book-suggest" data-book="Caixa de Ferramentas DevOps: Um guia para construÃ§Ã£o, administraÃ§Ã£o e arquitetura de sistemas modernos">
        <img width="113px" height="160px" src="//cdn.shopify.com/s/files/1/0155/7645/products/oy0mvtYotVNh0eUSt2CAC3Kf7j_qtMIxtd31jNUYP08_size_1024x768_size_mode_2_compact.jpeg?v=1438176025" alt="Caixa de Ferramentas DevOps: Um guia para construÃ§Ã£o, administraÃ§Ã£o e arquitetura de sistemas modernos">
      </a>
    </li>
    <li class="col-right">
      <a href="/products/livro-css-eficiente" class="block clearfix book-suggest" data-book="CSS Eficiente: TÃ©cnicas e ferramentas que fazem a diferenÃ§a nos seus estilos">
        <img width="113px" height="160px" src="//cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_compact.png?v=1435245145" alt="CSS Eficiente: TÃ©cnicas e ferramentas que fazem a diferenÃ§a nos seus estilos">
      </a>
    </li>
    <li class="col-left">
      <a href="/products/livro-banco-mysql" class="block clearfix book-suggest" data-book="MySQL: Comece com o principal banco de dados open source do mercado">
        <img width="113px" height="160px" src="//cdn.shopify.com/s/files/1/0155/7645/products/bancomysql-featured_compact.png?v=1437417574" alt="MySQL: Comece com o principal banco de dados open source do mercado">
      </a>
    </li>
    <li class="col-left">
      <a href="/products/livro-xp-extreme-programming" class="block clearfix book-suggest" data-book="eXtreme Programming: PrÃ¡ticas para o dia a dia no desenvolvimento Ã¡gil de software">
        <img width="113px" height="160px" src="//cdn.shopify.com/s/files/1/0155/7645/products/MWv_cGrvQEiSB16qd6Qrr7_29jPyP0tUVVlSsQ2kAIQ_size_1024x768_size_mode_2_compact.jpeg?v=1438803579" alt="eXtreme Programming: PrÃ¡ticas para o dia a dia no desenvolvimento Ã¡gil de software">
      </a>
    </li>
  </ul>
  
  <h2><a href="${s:mvcUrl('HC#index').build() }">Veja todos os livros que publicamos!</a></h2>
  
  </section>

</jsp:body>

</tags:pageTemplate>
















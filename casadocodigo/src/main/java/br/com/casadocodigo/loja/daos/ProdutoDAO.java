package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Repository
@Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> listar() {
		return manager.createQuery("select distinct(p) from Produto p join fetch p.precos", 
				Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		return manager.createQuery("select distinct(p) from Produto p "
				+ " join fetch p.precos preco where p.id = :id", Produto.class)
				.setParameter("id",	id)
				.getSingleResult();
	}
	
	public BigDecimal somaPrecosPorTipo(TipoPreco tipoPreco) {
		TypedQuery<BigDecimal> query = manager
			.createQuery("select sum(preco.valor) from Produto p "
				+ " join p.precos preco where preco.tipo = :tipoPreco", BigDecimal.class);
		query.setParameter("tipoPreco", tipoPreco);
		
		return query.getSingleResult();
	}
	
}











package br.com.casadocodigo.loja.models;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Embeddable;

@Embeddable
public class Preco implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private BigDecimal valor;
	private TipoPreco tipo;
	
	public BigDecimal getValor() {
		return valor;
	}
	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	public TipoPreco getTipo() {
		return tipo;
	}
	public void setTipo(TipoPreco tipo) {
		this.tipo = tipo;
	}
	
	@Override
	public String toString() {
		return this.tipo.name() + " - " + this.valor;
	}
	
	
}










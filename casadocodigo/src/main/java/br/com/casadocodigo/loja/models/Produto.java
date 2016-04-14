package br.com.casadocodigo.loja.models;


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Produto implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String titulo;
	
	@Lob
	private String descricao;
	private int paginas;
	
	@DateTimeFormat
	private Calendar dataLancamento;
	
	@ElementCollection
	private List<Preco> precos = new ArrayList<>();
	
	private String sumarioPath;
	
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getPaginas() {
		return paginas;
	}
	public void setPaginas(int paginas) {
		this.paginas = paginas;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Preco> getPrecos() {
		return precos;
	}
	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}
	public Calendar getDataLancamento() {
		return dataLancamento;
	}
	public void setDataLancamento(Calendar dataLancamento) {
		this.dataLancamento = dataLancamento;
	}
	@Override
	public String toString() {
		return "Produto [titulo=" + titulo + ", descricao=" + descricao + ", paginas=" + paginas + "]";
	}
	public String getSumarioPath() {
		return sumarioPath;
	}
	public void setSumarioPath(String sumarioPath) {
		this.sumarioPath = sumarioPath;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Produto other = (Produto) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	public BigDecimal precoPara(TipoPreco tipoPreco) {
		return precos.stream().filter(preco -> preco.getTipo().equals(tipoPreco))
				.findFirst().get().getValor();
	}
	
}








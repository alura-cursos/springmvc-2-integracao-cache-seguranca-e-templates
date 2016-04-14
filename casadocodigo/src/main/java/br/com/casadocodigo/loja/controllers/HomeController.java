package br.com.casadocodigo.loja.controllers;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.daos.ProdutoDAO;
import br.com.casadocodigo.loja.daos.UsuarioDAO;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.Role;
import br.com.casadocodigo.loja.models.Usuario;

@Controller
public class HomeController {

	@Autowired
	private ProdutoDAO produtoDao;
	
	@Autowired
	private UsuarioDAO usuarioDao;

	@RequestMapping("/")
	@Cacheable(value="produtosHome")
	public ModelAndView index() {
		List<Produto> produtos = produtoDao.listar();
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("produtos", produtos);
		
		return modelAndView;
	}
	
	@Transactional
	@ResponseBody
	@RequestMapping("/url-magica-maluca-oajksfbvad6584i57j54f9684nvi658efnoewfmnvowefnoeijn")
	public String urlMagicaMaluca() {
		Usuario usuario = new Usuario(); 
		usuario.setNome("Admin");
		usuario.setEmail("admin@casadocodigo.com.br");
		usuario.setSenha("$2a$10$lt7pS7Kxxe5JfP.vjLNSyOXP11eHgh7RoPxo5fvvbMCZkCUss2DGu");
		usuario.setRoles(Arrays.asList(new Role("ROLE_ADMIN")));
		
		usuarioDao.gravar(usuario);
		
		return "Url Mágica executada";
	}
	
}









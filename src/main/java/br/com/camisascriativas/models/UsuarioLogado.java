package br.com.camisascriativas.models;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@SessionScoped
@Named
public class UsuarioLogado implements Serializable {

	private static final long serialVersionUID = 1L;

	private Usuario logado;

	public void login(Usuario usuario) {
		this.logado = usuario;
	}

	public String getNome() {
		return this.logado.getNome();
	}

	public boolean isLogado() {
		return this.logado != null;
	}

	public void logout() {
		this.logado = null;
	}
}

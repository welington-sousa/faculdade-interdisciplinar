package br.com.camisascriativas.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Usuario implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Size(min=3, max=8, message="{usuario.nome.tamanho}")
	private String nome;
	@Column(unique = true) private String login;
	private String senha;
	private String email;

	public void setEmail(String email) {this.email = email;}
	public String getEmail() {return email;}

	public void setNome(String nome) {this.nome = nome;}
	public String getNome() {return nome;}

	public void setLogin(String login) {this.login = login;}
	public String getLogin() {return login;}

	public void setSenha(String senha) {this.senha = senha;}
	public String getSenha() {return senha;}
}

package com.uca.capas.dto;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("deprecation")
public class LoginDTO {

	@NotEmpty(message = "Ingrese su correo electronico")
	@Email(message = "El correo electrónico debe ser válido")
	@Size(message = "La longitud máxima es de 100 carácteres", min = 0, max = 100)
	public String username;
	
	@NotEmpty(message = "Ingrese su contraseña")
	@Size(message = "La longitud máxima es de 100 carácteres", min = 0, max = 100)
	public String password;

	public LoginDTO() {
		super();
	}

	public LoginDTO(
			@NotEmpty(message = "Ingrese el correo electrónico") @Size(message = "La longitud máxima es de 100 carácteres", min = 0, max = 100) @Email(message = "El correo electrónico debe ser válido") String username,
			@NotEmpty(message = "Ingrese la contraseña") @Size(message = "La longitud máxima es de 100 carácteres", min = 0, max = 100) String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}

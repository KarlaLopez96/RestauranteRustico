package com.uca.capas.dto;

import java.math.BigInteger;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

@SuppressWarnings("deprecation")
public class EditarEmpDTO {

	private Integer idEmpleado;
	
	@NotEmpty(message = "Ingrese el nombre del empleado")
	@Size(message = "La longitud maxima es de 100 caracteres", min = 0, max = 100)
	private String nombreEmpleado;
	
	@NotNull(message="Ingresar edad")
	@Digits(message = "La edad sobrepasa de los 100 años", integer = 2, fraction = 0)
	@Range(min = 18, max = 75, message = "Ingrese una edad válida de trabajo [18-75]")
	private BigInteger edadEmpleado;
	
	@NotNull(message="Ingresar genero")
	private Character generoEmpleado;
	
	@NotNull(message="Ingresar estado")
	private String estadoEmpleado;

	public EditarEmpDTO() {
		super();
	}

	public Integer getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(Integer idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public String getNombreEmpleado() {
		return nombreEmpleado;
	}

	public void setNombreEmpleado(String nombreEmpleado) {
		this.nombreEmpleado = nombreEmpleado;
	}

	public BigInteger getEdadEmpleado() {
		return edadEmpleado;
	}

	public void setEdadEmpleado(BigInteger edadEmpleado) {
		this.edadEmpleado = edadEmpleado;
	}

	public Character getGeneroEmpleado() {
		return generoEmpleado;
	}

	public void setGeneroEmpleado(Character generoEmpleado) {
		this.generoEmpleado = generoEmpleado;
	}

	public String getEstadoEmpleado() {
		return estadoEmpleado;
	}

	public void setEstadoEmpleado(String estadoEmpleado) {
		this.estadoEmpleado = estadoEmpleado;
	}
	
	public Boolean getestadoEmpleadoDelegate() {
		Boolean estado = null;
		if(this.estadoEmpleado.equals("Activo")) {
			estado = true;
		} else {
			estado = false;
		}
		return estado;
	}
}

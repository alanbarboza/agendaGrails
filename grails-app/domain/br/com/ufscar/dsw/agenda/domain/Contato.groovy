package br.com.ufscar.dsw.agenda.domain

import br.com.ufscar.dsw.agenda.reference.Sexo

class Contato {
	String nome
	String email
	Date dataNascimento
	Sexo sexo
	String telefone
	String celular

	static constraints = {
		nome (blank: false, size: 1..70)
		email (blank: false, email: true, size: 5..70)
		dataNascimento (blank: false)
		sexo (blank: false, enumType: "ordinal")
	}

	@Override
	public String toString() {
		return getNome();
	}
}

# Agenda Grails
Projeto de Pesquisa Científica - UFSCAR Universidade Federal de São Carlos

### Passo a Passo
Siga o passo a passo detalhado abaixo para gerar a aplicação de **Contatos** utilizando o framework **Grails**.

1. Crie a enum "br.com.ufscar.dsw.agenda.reference.Sexo" conforme exemplo:
```
package br.com.ufscar.dsw.agenda.reference;
public enum Sexo {
	MASCULINO, FEMININO;
}
```

2. Crie o domain "br.com.ufscar.dsw.agenda.domain.Contato" conforme exemplo:
```
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
```

3. Inicie o prompt de comando do Grails e siga os passos:
```
grails generate-all br.com.ufscar.dsw.agenda.domain.Contato
```

### Plugin JasperReports
Siga os passos abaixo para configurar o JasperReports para exportar a lista de contatos em PDF.

1. Crie e compile o layout do relatório usando o iReport Designer no seguinte diretório "/web-app/reports/".

2. Edite o arquivo "/grails-app/conf/BuildConfig.groovy" e acrescente:
```
plugins {
    ...
    compile ":jasper:1.11.0"
    ...
}
```

3. Edite o arquivo "/grails-app/views/contato/index.gsp" e acrescente:
```
    ...
    <g:jasperReport controller="contato" action="exportar" jasper="contatoReportList" format="PDF" name="Exportar PDF" />
    ...
```

4. Edite o controller "br.com.ufscar.dsw.agenda.domain.ContatoController" e acrescente o método:
```
    ...
	def exportar = {
		def registros = Contato.list()
		chain(controller:'jasper',action:'index',model:[data:registros],params:params)
	}
	...
```

License
----
MIT

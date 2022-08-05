using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Models
{
	public class Doutors
	{
		public int IdFuncionario { get; set; }
		public string Nome { get; set; }
		public string Apelido { get; set; }
		public string NOrdemMedicos { get; set; }
		public int IdLogin { get; set; }
		public int idFuncao { get; set; }
	}
	public class login
	{
		[FromHeader]
		public int Idlogin { get; set; }
		[FromHeader]
		public string username { get; set; }
		[FromHeader]
		public string pass { get; set; }
	}
}

import 'models/Categoria.dart';
import 'repository/categoria-repository.dart';
import 'repository/repository.dart';
import 'services/categoria-service.dart';
import 'models/Produto.dart';
import 'repository/produto-repository.dart';
import 'services/produto-service.dart';

main() {
  Categoria categoria = new Categoria();
  categoria.descricao = "cat";

  CategoriaRepository repository = new CategoriaRepository();

  CategoriaService categoriaService = new CategoriaService(repository);

  //categoriaService.cadastrar(categoria);

  //categoriaService.buscarTodos();

  //categoriaService.alterar(categoria, "5fa70a7a92c8752004bf5c6e");

  //categoriaService.excluir("5fa70ac7b4a15531b0bcc437");

  Produto produto = new Produto();
  produto.descricao = "descricao do produto";
  produto.nome = "nomeee";
  produto.valor = 10;
  produto.categoriaId = "5fa711b6b4a15531b0bcc439";
  ProdutoRepository produtoRepository = new ProdutoRepository();

  ProdutoService produtoService = new ProdutoService(produtoRepository);

  // produtoService.cadastrar(produto);

  produtoService.buscarTodos();

  Produto produto2 = new Produto();
  produto.descricao = "descricao do produto";
  produto.nome = "nomeee";
  produto.valor = 10;
  produto.categoriaId = "5fa711b6b4a15531b0bcc439";

  //produtoService.alterar(produto2, "5f7a528c0964492bb47798d8");

  //produtoService.excluir("5fa76ddef2ecb54174abc42a");
}

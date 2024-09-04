import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/create_categoria/create_categoria_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/delete_categoria/delete_categoria_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/get_categorias/get_categorias_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/update_categoria/update_categoria_usecase.dart';

class CategoriaController {
  final CreateCategoriaUsecase _createCategoriaUsecase;
  final DeleteCategoriaUsecase _deleteCategoriaUsecase;
  final GetCategoriasUsecase _getCategoriasUsecase;
  final UpdateCategoriaUsecase _updateCategoriaUsecase;

  CategoriaController(
    this._createCategoriaUsecase,
    this._deleteCategoriaUsecase,
    this._getCategoriasUsecase,
    this._updateCategoriaUsecase,
  ) {
    getCategorias();
  }

  late List<Categoria> categorias;

  createCategoria(Categoria categoria) async {
    return await _createCategoriaUsecase(categoria);
  }

  deleteCategoria(String idCategoria) async {
    return await _deleteCategoriaUsecase(idCategoria);
  }

  getCategorias() async {
    categorias = await _getCategoriasUsecase();
  }

  updateCategoria(Categoria categoria) async {
    return await _updateCategoriaUsecase(categoria);
  }
}

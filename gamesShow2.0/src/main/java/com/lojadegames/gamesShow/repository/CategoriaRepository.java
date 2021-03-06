package com.lojadegames.gamesShow.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.lojadegames.gamesShow.model.CategoriaModel;

@Repository
public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {
	public List<CategoriaModel> findAllByDescricaoCategoriaContainingIgnoreCase(String DescricaoCategoria);

}

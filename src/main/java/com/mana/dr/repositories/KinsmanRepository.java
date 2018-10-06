package com.mana.dr.repositories;

import com.mana.dr.entities.Kinsman;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KinsmanRepository extends JpaRepository<Kinsman,Long>{

}

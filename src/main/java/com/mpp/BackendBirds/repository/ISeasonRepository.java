package com.mpp.BackendBirds.repository;

import com.mpp.BackendBirds.model.Season;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ISeasonRepository extends JpaRepository<Season, Integer> { }

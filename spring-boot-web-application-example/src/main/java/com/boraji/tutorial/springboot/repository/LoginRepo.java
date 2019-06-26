package com.boraji.tutorial.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.boraji.tutorial.springboot.model.Login;


@Repository
public interface LoginRepo extends JpaRepository<Login, Integer> {

}

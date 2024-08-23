package org.jsp.app.entity;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jakarta.transaction.Transactional;

@Repository
public interface InstagramRepository extends JpaRepository<UserAccount, Integer>{
	public boolean existsByUsername(String username);
	public boolean existsByPassword(String password);
	public UserAccount findByUsername(String username);
	
	@Transactional
    @Modifying
    @Query("UPDATE UserAccount u SET u.username = :username, u.password = :password,u.email=:email,u.dob=:dob,u.image=:image,u.video=:video WHERE u.id = :id ")
    public int updateAllById(int id, String username, String password,String email,LocalDate dob,String image,String video);
	
	@Transactional
    @Modifying
    @Query("SELECT u from UserAccount u where u.username!=:username")
    public List<UserAccount> findAllUsersExcept(String username);	


}

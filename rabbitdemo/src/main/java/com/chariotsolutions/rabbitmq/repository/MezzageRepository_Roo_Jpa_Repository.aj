// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariotsolutions.rabbitmq.repository;

import com.chariotsolutions.rabbitmq.domain.Mezzage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect MezzageRepository_Roo_Jpa_Repository {
    
    declare parents: MezzageRepository extends JpaRepository<Mezzage, java.lang.Long>;
    
    declare parents: MezzageRepository extends JpaSpecificationExecutor<Mezzage>;
    
    declare @type: MezzageRepository: @Repository;
    
}

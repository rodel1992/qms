// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.torm.domain;

import com.torm.domain.Staff;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Staff_Roo_Jpa_Entity {
    
    declare @type: Staff: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Staff.id;
    
    @Version
    @Column(name = "version")
    private Integer Staff.version;
    
    public Long Staff.getId() {
        return this.id;
    }
    
    public void Staff.setId(Long id) {
        this.id = id;
    }
    
    public Integer Staff.getVersion() {
        return this.version;
    }
    
    public void Staff.setVersion(Integer version) {
        this.version = version;
    }
    
}

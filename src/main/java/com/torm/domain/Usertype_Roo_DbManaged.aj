// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.torm.domain;

import com.torm.domain.User;
import com.torm.domain.Usertype;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect Usertype_Roo_DbManaged {
    
    @OneToMany(mappedBy = "userType", cascade = CascadeType.ALL)
    private Set<User> Usertype.users;
    
    @Column(name = "name", length = 45)
    private String Usertype.name;
    
    public Set<User> Usertype.getUsers() {
        return users;
    }
    
    public void Usertype.setUsers(Set<User> users) {
        this.users = users;
    }
    
    public String Usertype.getName() {
        return name;
    }
    
    public void Usertype.setName(String name) {
        this.name = name;
    }
    
}

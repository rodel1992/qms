// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.torm.domain;

import com.torm.domain.Visitor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Visitor_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Visitor.entityManager;
    
    public static final EntityManager Visitor.entityManager() {
        EntityManager em = new Visitor().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Visitor.countVisitors() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Visitor o", Long.class).getSingleResult();
    }
    
    public static List<Visitor> Visitor.findAllVisitors() {
        return entityManager().createQuery("SELECT o FROM Visitor o", Visitor.class).getResultList();
    }
    
    public static Visitor Visitor.findVisitor(Long id) {
        if (id == null) return null;
        return entityManager().find(Visitor.class, id);
    }
    
    public static List<Visitor> Visitor.findVisitorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Visitor o", Visitor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Visitor.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Visitor.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Visitor attached = Visitor.findVisitor(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Visitor.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Visitor.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Visitor Visitor.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Visitor merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
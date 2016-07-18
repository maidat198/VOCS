// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerOCS;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TriggerOCS_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TriggerOCS.entityManager;
    
    public static final List<String> TriggerOCS.fieldNames4OrderClauseFilter = java.util.Arrays.asList("triggerName", "status", "description", "categoryId");
    
    public static final EntityManager TriggerOCS.entityManager() {
        EntityManager em = new TriggerOCS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TriggerOCS.countTriggerOCSs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TriggerOCS o", Long.class).getSingleResult();
    }
    
    public static List<TriggerOCS> TriggerOCS.findAllTriggerOCSs() {
        return entityManager().createQuery("SELECT o FROM TriggerOCS o", TriggerOCS.class).getResultList();
    }
    
    public static List<TriggerOCS> TriggerOCS.findAllTriggerOCSs(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerOCS o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerOCS.class).getResultList();
    }
    
    public static TriggerOCS TriggerOCS.findTriggerOCS(Long triggerOcsId) {
        if (triggerOcsId == null) return null;
        return entityManager().find(TriggerOCS.class, triggerOcsId);
    }
    
    public static List<TriggerOCS> TriggerOCS.findTriggerOCSEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TriggerOCS o", TriggerOCS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TriggerOCS> TriggerOCS.findTriggerOCSEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerOCS o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerOCS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TriggerOCS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TriggerOCS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TriggerOCS attached = TriggerOCS.findTriggerOCS(this.triggerOcsId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TriggerOCS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TriggerOCS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TriggerOCS TriggerOCS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TriggerOCS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

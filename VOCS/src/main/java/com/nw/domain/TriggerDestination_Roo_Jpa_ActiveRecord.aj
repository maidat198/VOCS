// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerDestination;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TriggerDestination_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TriggerDestination.entityManager;
    
    public static final List<String> TriggerDestination.fieldNames4OrderClauseFilter = java.util.Arrays.asList("destName", "destDescription", "status", "categoryId");
    
    public static final EntityManager TriggerDestination.entityManager() {
        EntityManager em = new TriggerDestination().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TriggerDestination.countTriggerDestinations() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TriggerDestination o", Long.class).getSingleResult();
    }
    
    public static List<TriggerDestination> TriggerDestination.findAllTriggerDestinations() {
        return entityManager().createQuery("SELECT o FROM TriggerDestination o", TriggerDestination.class).getResultList();
    }
    
    public static List<TriggerDestination> TriggerDestination.findAllTriggerDestinations(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerDestination o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerDestination.class).getResultList();
    }
    
    public static TriggerDestination TriggerDestination.findTriggerDestination(Long destinationId) {
        if (destinationId == null) return null;
        return entityManager().find(TriggerDestination.class, destinationId);
    }
    
    public static List<TriggerDestination> TriggerDestination.findTriggerDestinationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TriggerDestination o", TriggerDestination.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TriggerDestination> TriggerDestination.findTriggerDestinationEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerDestination o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerDestination.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TriggerDestination.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TriggerDestination.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TriggerDestination attached = TriggerDestination.findTriggerDestination(this.destinationId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TriggerDestination.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TriggerDestination.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TriggerDestination TriggerDestination.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TriggerDestination merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

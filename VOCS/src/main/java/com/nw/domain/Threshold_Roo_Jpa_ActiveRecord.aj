// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.Threshold;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Threshold_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Threshold.entityManager;
    
    public static final List<String> Threshold.fieldNames4OrderClauseFilter = java.util.Arrays.asList("isPercentage", "thresholdType", "thresValue", "thresholdName", "externalId", "triggerId");
    
    public static final EntityManager Threshold.entityManager() {
        EntityManager em = new Threshold().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Threshold.countThresholds() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Threshold o", Long.class).getSingleResult();
    }
    
    public static List<Threshold> Threshold.findAllThresholds() {
        return entityManager().createQuery("SELECT o FROM Threshold o", Threshold.class).getResultList();
    }
    
    public static List<Threshold> Threshold.findAllThresholds(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Threshold o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Threshold.class).getResultList();
    }
    
    public static Threshold Threshold.findThreshold(Long thresholdId) {
        if (thresholdId == null) return null;
        return entityManager().find(Threshold.class, thresholdId);
    }
    
    public static List<Threshold> Threshold.findThresholdEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Threshold o", Threshold.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Threshold> Threshold.findThresholdEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Threshold o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Threshold.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Threshold.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Threshold.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Threshold attached = Threshold.findThreshold(this.thresholdId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Threshold.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Threshold.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Threshold Threshold.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Threshold merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

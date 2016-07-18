// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ThresholdBalTypeMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ThresholdBalTypeMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ThresholdBalTypeMap.entityManager;
    
    public static final List<String> ThresholdBalTypeMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("thresholdId", "baltypeId");
    
    public static final EntityManager ThresholdBalTypeMap.entityManager() {
        EntityManager em = new ThresholdBalTypeMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ThresholdBalTypeMap.countThresholdBalTypeMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ThresholdBalTypeMap o", Long.class).getSingleResult();
    }
    
    public static List<ThresholdBalTypeMap> ThresholdBalTypeMap.findAllThresholdBalTypeMaps() {
        return entityManager().createQuery("SELECT o FROM ThresholdBalTypeMap o", ThresholdBalTypeMap.class).getResultList();
    }
    
    public static List<ThresholdBalTypeMap> ThresholdBalTypeMap.findAllThresholdBalTypeMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ThresholdBalTypeMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ThresholdBalTypeMap.class).getResultList();
    }
    
    public static ThresholdBalTypeMap ThresholdBalTypeMap.findThresholdBalTypeMap(Long thresholdBaltypeMapId) {
        if (thresholdBaltypeMapId == null) return null;
        return entityManager().find(ThresholdBalTypeMap.class, thresholdBaltypeMapId);
    }
    
    public static List<ThresholdBalTypeMap> ThresholdBalTypeMap.findThresholdBalTypeMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ThresholdBalTypeMap o", ThresholdBalTypeMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ThresholdBalTypeMap> ThresholdBalTypeMap.findThresholdBalTypeMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ThresholdBalTypeMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ThresholdBalTypeMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ThresholdBalTypeMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ThresholdBalTypeMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ThresholdBalTypeMap attached = ThresholdBalTypeMap.findThresholdBalTypeMap(this.thresholdBaltypeMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ThresholdBalTypeMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ThresholdBalTypeMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ThresholdBalTypeMap ThresholdBalTypeMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ThresholdBalTypeMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

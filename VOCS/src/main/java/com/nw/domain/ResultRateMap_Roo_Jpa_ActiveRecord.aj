// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ResultRateMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ResultRateMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ResultRateMap.entityManager;
    
    public static final List<String> ResultRateMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("rateTableId", "rateTableResultId");
    
    public static final EntityManager ResultRateMap.entityManager() {
        EntityManager em = new ResultRateMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ResultRateMap.countResultRateMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ResultRateMap o", Long.class).getSingleResult();
    }
    
    public static List<ResultRateMap> ResultRateMap.findAllResultRateMaps() {
        return entityManager().createQuery("SELECT o FROM ResultRateMap o", ResultRateMap.class).getResultList();
    }
    
    public static List<ResultRateMap> ResultRateMap.findAllResultRateMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ResultRateMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ResultRateMap.class).getResultList();
    }
    
    public static ResultRateMap ResultRateMap.findResultRateMap(Long resultRateMapId) {
        if (resultRateMapId == null) return null;
        return entityManager().find(ResultRateMap.class, resultRateMapId);
    }
    
    public static List<ResultRateMap> ResultRateMap.findResultRateMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ResultRateMap o", ResultRateMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ResultRateMap> ResultRateMap.findResultRateMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ResultRateMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ResultRateMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ResultRateMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ResultRateMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ResultRateMap attached = ResultRateMap.findResultRateMap(this.resultRateMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ResultRateMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ResultRateMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ResultRateMap ResultRateMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ResultRateMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

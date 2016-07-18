// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.PriceRateMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PriceRateMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PriceRateMap.entityManager;
    
    public static final List<String> PriceRateMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("priceComponentId", "rateTableId");
    
    public static final EntityManager PriceRateMap.entityManager() {
        EntityManager em = new PriceRateMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PriceRateMap.countPriceRateMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PriceRateMap o", Long.class).getSingleResult();
    }
    
    public static List<PriceRateMap> PriceRateMap.findAllPriceRateMaps() {
        return entityManager().createQuery("SELECT o FROM PriceRateMap o", PriceRateMap.class).getResultList();
    }
    
    public static List<PriceRateMap> PriceRateMap.findAllPriceRateMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PriceRateMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PriceRateMap.class).getResultList();
    }
    
    public static PriceRateMap PriceRateMap.findPriceRateMap(Long priceRateMapId) {
        if (priceRateMapId == null) return null;
        return entityManager().find(PriceRateMap.class, priceRateMapId);
    }
    
    public static List<PriceRateMap> PriceRateMap.findPriceRateMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PriceRateMap o", PriceRateMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PriceRateMap> PriceRateMap.findPriceRateMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PriceRateMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PriceRateMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PriceRateMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PriceRateMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PriceRateMap attached = PriceRateMap.findPriceRateMap(this.priceRateMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PriceRateMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PriceRateMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PriceRateMap PriceRateMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PriceRateMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.PriceComponentBlockMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PriceComponentBlockMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PriceComponentBlockMap.entityManager;
    
    public static final List<String> PriceComponentBlockMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("priceComponentId", "blockId");
    
    public static final EntityManager PriceComponentBlockMap.entityManager() {
        EntityManager em = new PriceComponentBlockMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PriceComponentBlockMap.countPriceComponentBlockMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PriceComponentBlockMap o", Long.class).getSingleResult();
    }
    
    public static List<PriceComponentBlockMap> PriceComponentBlockMap.findAllPriceComponentBlockMaps() {
        return entityManager().createQuery("SELECT o FROM PriceComponentBlockMap o", PriceComponentBlockMap.class).getResultList();
    }
    
    public static List<PriceComponentBlockMap> PriceComponentBlockMap.findAllPriceComponentBlockMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PriceComponentBlockMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PriceComponentBlockMap.class).getResultList();
    }
    
    public static PriceComponentBlockMap PriceComponentBlockMap.findPriceComponentBlockMap(Long priceComponentBlockMapId) {
        if (priceComponentBlockMapId == null) return null;
        return entityManager().find(PriceComponentBlockMap.class, priceComponentBlockMapId);
    }
    
    public static List<PriceComponentBlockMap> PriceComponentBlockMap.findPriceComponentBlockMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PriceComponentBlockMap o", PriceComponentBlockMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PriceComponentBlockMap> PriceComponentBlockMap.findPriceComponentBlockMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PriceComponentBlockMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PriceComponentBlockMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PriceComponentBlockMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PriceComponentBlockMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PriceComponentBlockMap attached = PriceComponentBlockMap.findPriceComponentBlockMap(this.priceComponentBlockMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PriceComponentBlockMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PriceComponentBlockMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PriceComponentBlockMap PriceComponentBlockMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PriceComponentBlockMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
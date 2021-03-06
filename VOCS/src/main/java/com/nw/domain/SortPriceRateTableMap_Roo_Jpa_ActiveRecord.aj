// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.SortPriceRateTableMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SortPriceRateTableMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SortPriceRateTableMap.entityManager;
    
    public static final List<String> SortPriceRateTableMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("sortPriceComponentId", "rateTableId", "rateTableIndex");
    
    public static final EntityManager SortPriceRateTableMap.entityManager() {
        EntityManager em = new SortPriceRateTableMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SortPriceRateTableMap.countSortPriceRateTableMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SortPriceRateTableMap o", Long.class).getSingleResult();
    }
    
    public static List<SortPriceRateTableMap> SortPriceRateTableMap.findAllSortPriceRateTableMaps() {
        return entityManager().createQuery("SELECT o FROM SortPriceRateTableMap o", SortPriceRateTableMap.class).getResultList();
    }
    
    public static List<SortPriceRateTableMap> SortPriceRateTableMap.findAllSortPriceRateTableMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SortPriceRateTableMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SortPriceRateTableMap.class).getResultList();
    }
    
    public static SortPriceRateTableMap SortPriceRateTableMap.findSortPriceRateTableMap(Long sortPriceRateTableMapId) {
        if (sortPriceRateTableMapId == null) return null;
        return entityManager().find(SortPriceRateTableMap.class, sortPriceRateTableMapId);
    }
    
    public static List<SortPriceRateTableMap> SortPriceRateTableMap.findSortPriceRateTableMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SortPriceRateTableMap o", SortPriceRateTableMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<SortPriceRateTableMap> SortPriceRateTableMap.findSortPriceRateTableMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM SortPriceRateTableMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, SortPriceRateTableMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SortPriceRateTableMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SortPriceRateTableMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SortPriceRateTableMap attached = SortPriceRateTableMap.findSortPriceRateTableMap(this.sortPriceRateTableMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SortPriceRateTableMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SortPriceRateTableMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SortPriceRateTableMap SortPriceRateTableMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SortPriceRateTableMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

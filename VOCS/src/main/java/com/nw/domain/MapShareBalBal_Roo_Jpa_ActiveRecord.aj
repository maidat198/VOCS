// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.MapShareBalBal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MapShareBalBal_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MapShareBalBal.entityManager;
    
    public static final List<String> MapShareBalBal.fieldNames4OrderClauseFilter = java.util.Arrays.asList("baltypeId");
    
    public static final EntityManager MapShareBalBal.entityManager() {
        EntityManager em = new MapShareBalBal().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MapShareBalBal.countMapShareBalBals() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MapShareBalBal o", Long.class).getSingleResult();
    }
    
    public static List<MapShareBalBal> MapShareBalBal.findAllMapShareBalBals() {
        return entityManager().createQuery("SELECT o FROM MapShareBalBal o", MapShareBalBal.class).getResultList();
    }
    
    public static List<MapShareBalBal> MapShareBalBal.findAllMapShareBalBals(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MapShareBalBal o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MapShareBalBal.class).getResultList();
    }
    
    public static MapShareBalBal MapShareBalBal.findMapShareBalBal(Long shareBalTypeId) {
        if (shareBalTypeId == null) return null;
        return entityManager().find(MapShareBalBal.class, shareBalTypeId);
    }
    
    public static List<MapShareBalBal> MapShareBalBal.findMapShareBalBalEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MapShareBalBal o", MapShareBalBal.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MapShareBalBal> MapShareBalBal.findMapShareBalBalEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MapShareBalBal o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MapShareBalBal.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MapShareBalBal.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MapShareBalBal.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MapShareBalBal attached = MapShareBalBal.findMapShareBalBal(this.shareBalTypeId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MapShareBalBal.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MapShareBalBal.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MapShareBalBal MapShareBalBal.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MapShareBalBal merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
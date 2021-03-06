// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ZoneMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ZoneMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ZoneMap.entityManager;
    
    public static final List<String> ZoneMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("zoneMapName", "remark");
    
    public static final EntityManager ZoneMap.entityManager() {
        EntityManager em = new ZoneMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ZoneMap.countZoneMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ZoneMap o", Long.class).getSingleResult();
    }
    
    public static List<ZoneMap> ZoneMap.findAllZoneMaps() {
        return entityManager().createQuery("SELECT o FROM ZoneMap o", ZoneMap.class).getResultList();
    }
    
    public static List<ZoneMap> ZoneMap.findAllZoneMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ZoneMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ZoneMap.class).getResultList();
    }
    
    public static ZoneMap ZoneMap.findZoneMap(Long zoneMapId) {
        if (zoneMapId == null) return null;
        return entityManager().find(ZoneMap.class, zoneMapId);
    }
    
    public static List<ZoneMap> ZoneMap.findZoneMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ZoneMap o", ZoneMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ZoneMap> ZoneMap.findZoneMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ZoneMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ZoneMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ZoneMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ZoneMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ZoneMap attached = ZoneMap.findZoneMap(this.zoneMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ZoneMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ZoneMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ZoneMap ZoneMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ZoneMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

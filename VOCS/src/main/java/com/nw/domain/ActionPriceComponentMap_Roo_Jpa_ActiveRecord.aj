// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ActionPriceComponentMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ActionPriceComponentMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ActionPriceComponentMap.entityManager;
    
    public static final List<String> ActionPriceComponentMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("actionId", "priceComponentId", "pcIndex");
    
    public static final EntityManager ActionPriceComponentMap.entityManager() {
        EntityManager em = new ActionPriceComponentMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ActionPriceComponentMap.countActionPriceComponentMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ActionPriceComponentMap o", Long.class).getSingleResult();
    }
    
    public static List<ActionPriceComponentMap> ActionPriceComponentMap.findAllActionPriceComponentMaps() {
        return entityManager().createQuery("SELECT o FROM ActionPriceComponentMap o", ActionPriceComponentMap.class).getResultList();
    }
    
    public static List<ActionPriceComponentMap> ActionPriceComponentMap.findAllActionPriceComponentMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ActionPriceComponentMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ActionPriceComponentMap.class).getResultList();
    }
    
    public static ActionPriceComponentMap ActionPriceComponentMap.findActionPriceComponentMap(Long actionPriceComponentMapId) {
        if (actionPriceComponentMapId == null) return null;
        return entityManager().find(ActionPriceComponentMap.class, actionPriceComponentMapId);
    }
    
    public static List<ActionPriceComponentMap> ActionPriceComponentMap.findActionPriceComponentMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ActionPriceComponentMap o", ActionPriceComponentMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ActionPriceComponentMap> ActionPriceComponentMap.findActionPriceComponentMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ActionPriceComponentMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ActionPriceComponentMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ActionPriceComponentMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ActionPriceComponentMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ActionPriceComponentMap attached = ActionPriceComponentMap.findActionPriceComponentMap(this.actionPriceComponentMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ActionPriceComponentMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ActionPriceComponentMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ActionPriceComponentMap ActionPriceComponentMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ActionPriceComponentMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

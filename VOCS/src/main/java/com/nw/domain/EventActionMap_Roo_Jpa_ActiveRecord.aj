// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.EventActionMap;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EventActionMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager EventActionMap.entityManager;
    
    public static final List<String> EventActionMap.fieldNames4OrderClauseFilter = java.util.Arrays.asList("eventId", "actionId");
    
    public static final EntityManager EventActionMap.entityManager() {
        EntityManager em = new EventActionMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EventActionMap.countEventActionMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM EventActionMap o", Long.class).getSingleResult();
    }
    
    public static List<EventActionMap> EventActionMap.findAllEventActionMaps() {
        return entityManager().createQuery("SELECT o FROM EventActionMap o", EventActionMap.class).getResultList();
    }
    
    public static List<EventActionMap> EventActionMap.findAllEventActionMaps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EventActionMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EventActionMap.class).getResultList();
    }
    
    public static EventActionMap EventActionMap.findEventActionMap(Long eventActionMapId) {
        if (eventActionMapId == null) return null;
        return entityManager().find(EventActionMap.class, eventActionMapId);
    }
    
    public static List<EventActionMap> EventActionMap.findEventActionMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM EventActionMap o", EventActionMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<EventActionMap> EventActionMap.findEventActionMapEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM EventActionMap o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, EventActionMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void EventActionMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EventActionMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EventActionMap attached = EventActionMap.findEventActionMap(this.eventActionMapId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EventActionMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EventActionMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EventActionMap EventActionMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EventActionMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

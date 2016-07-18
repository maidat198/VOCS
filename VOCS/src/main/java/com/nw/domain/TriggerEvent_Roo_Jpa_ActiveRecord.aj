// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerEvent;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TriggerEvent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TriggerEvent.entityManager;
    
    public static final List<String> TriggerEvent.fieldNames4OrderClauseFilter = java.util.Arrays.asList("trigger_event_name", "status", "delay_process", "destination_id", "triggerOcsId", "trigger_event_type", "categoryId");
    
    public static final EntityManager TriggerEvent.entityManager() {
        EntityManager em = new TriggerEvent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TriggerEvent.countTriggerEvents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TriggerEvent o", Long.class).getSingleResult();
    }
    
    public static List<TriggerEvent> TriggerEvent.findAllTriggerEvents() {
        return entityManager().createQuery("SELECT o FROM TriggerEvent o", TriggerEvent.class).getResultList();
    }
    
    public static List<TriggerEvent> TriggerEvent.findAllTriggerEvents(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerEvent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerEvent.class).getResultList();
    }
    
    public static TriggerEvent TriggerEvent.findTriggerEvent(Long triggerEventId) {
        if (triggerEventId == null) return null;
        return entityManager().find(TriggerEvent.class, triggerEventId);
    }
    
    public static List<TriggerEvent> TriggerEvent.findTriggerEventEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TriggerEvent o", TriggerEvent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TriggerEvent> TriggerEvent.findTriggerEventEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerEvent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerEvent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TriggerEvent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TriggerEvent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TriggerEvent attached = TriggerEvent.findTriggerEvent(this.triggerEventId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TriggerEvent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TriggerEvent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TriggerEvent TriggerEvent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TriggerEvent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
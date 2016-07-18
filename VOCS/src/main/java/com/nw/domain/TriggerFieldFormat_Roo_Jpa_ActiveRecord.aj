// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerFieldFormat;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TriggerFieldFormat_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TriggerFieldFormat.entityManager;
    
    public static final List<String> TriggerFieldFormat.fieldNames4OrderClauseFilter = java.util.Arrays.asList("langId", "text", "formatType");
    
    public static final EntityManager TriggerFieldFormat.entityManager() {
        EntityManager em = new TriggerFieldFormat().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TriggerFieldFormat.countTriggerFieldFormats() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TriggerFieldFormat o", Long.class).getSingleResult();
    }
    
    public static List<TriggerFieldFormat> TriggerFieldFormat.findAllTriggerFieldFormats() {
        return entityManager().createQuery("SELECT o FROM TriggerFieldFormat o", TriggerFieldFormat.class).getResultList();
    }
    
    public static List<TriggerFieldFormat> TriggerFieldFormat.findAllTriggerFieldFormats(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerFieldFormat o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerFieldFormat.class).getResultList();
    }
    
    public static TriggerFieldFormat TriggerFieldFormat.findTriggerFieldFormat(Long formatTemplateId) {
        if (formatTemplateId == null) return null;
        return entityManager().find(TriggerFieldFormat.class, formatTemplateId);
    }
    
    public static List<TriggerFieldFormat> TriggerFieldFormat.findTriggerFieldFormatEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TriggerFieldFormat o", TriggerFieldFormat.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TriggerFieldFormat> TriggerFieldFormat.findTriggerFieldFormatEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TriggerFieldFormat o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TriggerFieldFormat.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TriggerFieldFormat.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TriggerFieldFormat.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TriggerFieldFormat attached = TriggerFieldFormat.findTriggerFieldFormat(this.formatTemplateId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TriggerFieldFormat.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TriggerFieldFormat.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TriggerFieldFormat TriggerFieldFormat.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TriggerFieldFormat merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

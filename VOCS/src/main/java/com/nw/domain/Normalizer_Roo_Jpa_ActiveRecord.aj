// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.Normalizer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Normalizer_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Normalizer.entityManager;
    
    public static final List<String> Normalizer.fieldNames4OrderClauseFilter = java.util.Arrays.asList("normalizerName", "normalizerType", "normalizerState", "defaultValue", "valueIfNull", "inputField", "specialFields", "categoryId", "queryState");
    
    public static final EntityManager Normalizer.entityManager() {
        EntityManager em = new Normalizer().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Normalizer.countNormalizers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Normalizer o", Long.class).getSingleResult();
    }
    
    public static List<Normalizer> Normalizer.findAllNormalizers() {
        return entityManager().createQuery("SELECT o FROM Normalizer o", Normalizer.class).getResultList();
    }
    
    public static List<Normalizer> Normalizer.findAllNormalizers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Normalizer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Normalizer.class).getResultList();
    }
    
    public static Normalizer Normalizer.findNormalizer(Long normalizerId) {
        if (normalizerId == null) return null;
        return entityManager().find(Normalizer.class, normalizerId);
    }
    
    public static List<Normalizer> Normalizer.findNormalizerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Normalizer o", Normalizer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Normalizer> Normalizer.findNormalizerEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Normalizer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Normalizer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Normalizer.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Normalizer.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Normalizer attached = Normalizer.findNormalizer(this.normalizerId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Normalizer.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Normalizer.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Normalizer Normalizer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Normalizer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

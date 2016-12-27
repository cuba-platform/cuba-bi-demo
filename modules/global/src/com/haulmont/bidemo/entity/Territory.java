/*
 * TODO Copyright
 */
package com.haulmont.bidemo.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@NamePattern("%s|name")
@Table(name = "BIDEMO_TERRITORY")
@Entity(name = "bidemo$Territory")
public class Territory extends StandardEntity {
    private static final long serialVersionUID = 884198280184707529L;

    @Column(name = "NAME")
    protected String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
/*
 * TODO Copyright
 */
package com.haulmont.bidemo.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import java.math.BigDecimal;

@NamePattern("%s|name")
@Table(name = "BIDEMO_PRODUCT")
@Entity(name = "bidemo$Product")
public class Product extends StandardEntity {
    private static final long serialVersionUID = -2887305385393781115L;

    @Column(name = "NAME", nullable = false, length = 50)
    protected String name;

    @Column(name = "PRICE", nullable = false)
    protected BigDecimal price;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_LINE_ID")
    protected ProductLine productLine;

    public void setProductLine(ProductLine productLine) {
        this.productLine = productLine;
    }

    public ProductLine getProductLine() {
        return productLine;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPrice() {
        return price;
    }
}
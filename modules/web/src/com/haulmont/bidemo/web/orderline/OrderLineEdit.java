/*
 * TODO Copyright
 */
package com.haulmont.bidemo.web.orderline;

import com.haulmont.bidemo.entity.OrderLine;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.LookupPickerField;

import javax.inject.Named;
import java.util.Map;

public class OrderLineEdit extends AbstractEditor<OrderLine> {

    @Named("fieldGroup.product")
    private LookupPickerField productField;

    @Override
    public void init(Map<String, Object> params) {
        productField.addOpenAction();
        productField.addLookupAction();
    }
}
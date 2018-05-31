package com.haulmont.bidemo.web.order;

import com.haulmont.bidemo.entity.Order;
import com.haulmont.bidemo.entity.OrderLine;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.actions.CreateAction;
import com.haulmont.cuba.gui.components.actions.EditAction;
import com.haulmont.cuba.gui.data.CollectionDatasource;

import javax.inject.Inject;
import javax.inject.Named;
import java.math.BigDecimal;
import java.util.Map;
import java.util.UUID;

public class OrderEdit extends AbstractEditor<Order> {
    @Named("linesTable.create")
    private CreateAction linesTableCreate;
    @Named("linesTable.edit")
    private EditAction linesTableEdit;

    @Inject
    private CollectionDatasource<OrderLine, UUID> linesDs;

    @Override
    public void init(Map<String, Object> params) {

        linesTableCreate.setOpenType(WindowManager.OpenType.DIALOG);
        linesTableEdit.setOpenType(WindowManager.OpenType.DIALOG);

        linesDs.addCollectionChangeListener(e -> calculateAmount());
    }

    private void calculateAmount() {
        BigDecimal amount = BigDecimal.ZERO;
        for (OrderLine line : linesDs.getItems()) {
            amount = amount.add(line.getProduct().getPrice().multiply(line.getQuantity()));
        }
        getItem().setAmount(amount);
    }
}
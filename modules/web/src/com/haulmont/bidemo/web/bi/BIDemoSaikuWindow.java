/*
 * TODO Copyright
 */

package com.haulmont.bidemo.web.bi;

import com.haulmont.addon.bi.BIConfig;
import com.haulmont.addon.bi.gui.components.BIComponent;
import com.haulmont.cuba.gui.components.AbstractWindow;

import javax.inject.Inject;
import java.util.Map;

public class BIDemoSaikuWindow extends AbstractWindow {
    @Inject
    protected BIComponent biComponent;
    @Inject
    protected BIConfig biConfig;


    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        biComponent.setServerUrl(biConfig.getPentahoServerUrl());
    }
}

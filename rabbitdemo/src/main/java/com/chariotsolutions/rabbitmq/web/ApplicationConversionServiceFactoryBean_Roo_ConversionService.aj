// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chariotsolutions.rabbitmq.web;

import com.chariotsolutions.rabbitmq.domain.Mezzage;
import com.chariotsolutions.rabbitmq.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    MessageService ApplicationConversionServiceFactoryBean.messageService;
    
    public Converter<Mezzage, java.lang.String> ApplicationConversionServiceFactoryBean.getMezzageToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.chariotsolutions.rabbitmq.domain.Mezzage, java.lang.String>() {
            public String convert(Mezzage mezzage) {
                return new StringBuilder().append(mezzage.getMessageBody()).toString();
            }
        };
    }
    
    public Converter<java.lang.Long, Mezzage> ApplicationConversionServiceFactoryBean.getIdToMezzageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.chariotsolutions.rabbitmq.domain.Mezzage>() {
            public com.chariotsolutions.rabbitmq.domain.Mezzage convert(java.lang.Long id) {
                return messageService.findMezzage(id);
            }
        };
    }
    
    public Converter<java.lang.String, Mezzage> ApplicationConversionServiceFactoryBean.getStringToMezzageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.chariotsolutions.rabbitmq.domain.Mezzage>() {
            public com.chariotsolutions.rabbitmq.domain.Mezzage convert(String id) {
                return getObject().convert(getObject().convert(id, java.lang.Long.class), Mezzage.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getMezzageToStringConverter());
        registry.addConverter(getIdToMezzageConverter());
        registry.addConverter(getStringToMezzageConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}

/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

'use strict';

/**
 * Define Themes
 *
 * area: area, one of (frontend|adminhtml|doc),
 * name: theme name in format Vendor/theme-name,
 * locale: locale,
 * files: [
 * 'css/styles-m',
 * 'css/styles-l'
 * ],
 * dsl: dynamic stylesheet language (less|sass)
 *
 */
module.exports = {
    blank: {
        area: 'frontend',
        name: 'Magento/blank',
        locale: 'en_US',
        files: [
            'css/styles-m',
            'css/styles-l',
            'css/email',
            'css/email-inline'
        ],
        dsl: 'less'
    },
    luma: {
        area: 'frontend',
        name: 'Magento/luma',
        locale: 'en_US',
        files: [
            'css/styles-m',
            'css/styles-l'
        ],
        dsl: 'less'
    },
    backend: {
        area: 'adminhtml',
        name: 'Magento/backend',
        locale: 'en_US',
        files: [
            'css/styles-old',
            'css/styles'
        ],
        dsl: 'less'
    },
    porto_tucumancompras: {
        area: 'frontend',
        name: 'Smartwave/porto_tucumancompras',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_solmar: {
        area: 'frontend',
        name: 'Smartwave/porto_solmar',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_tiendamix: {
        area: 'frontend',
        name: 'Smartwave/porto_tiendamix',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_agropac: {
        area: 'frontend',
        name: 'Smartwave/porto_agropac',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_mobel: {
        area: 'frontend',
        name: 'Smartwave/porto_mobel',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_madonnas: {
        area: 'frontend',
        name: 'Smartwave/porto_madonnas',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    },
    porto_beauty: {
        area: 'frontend',
        name: 'Smartwave/porto_beauty',
        locale: 'es_ES',
        files: [
        'css/inchoo'
        ],
        dsl: 'less'
    }
};

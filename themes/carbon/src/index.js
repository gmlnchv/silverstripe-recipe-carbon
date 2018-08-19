import { Accordion, Modal } from 'carbon-components';
const prefix = 'dn';

const init = () => {
  Accordion.init(document, {
    selectorInit: '[data-accordion]',
    selectorAccordionItem: '[data-accordion-item]',
    selectorAccordionItemHeading: `.${prefix}--accordion__heading`,
    selectorAccordionContent: `.${prefix}--accordion__content`,
    classActive: `${prefix}--accordion__item--active`
  });

  Modal.init(document, {
    selectorInit: '[data-modal]',
    selectorModalClose: '[data-modal-close]',
    selectorPrimaryFocus: '[data-modal-primary-focus]',
    selectorsFloatingMenus: [
      `.${prefix}--overflow-menu-options`,
      `.${prefix}--tooltip`,
      '.flatpickr-calendar'
    ],
    classVisible: 'is-visible',
    attribInitTarget: 'data-modal-target',
    initEventNames: ['click'],
    eventBeforeShown: 'modal-beingshown',
    eventAfterShown: 'modal-shown',
    eventBeforeHidden: 'modal-beinghidden',
    eventAfterHidden: 'modal-hidden'
  });
};

document.addEventListener('DOMContentLoaded', init);

import './scss/styles.scss';

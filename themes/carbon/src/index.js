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

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', init);
} else {
  init()
}

// Doing it this way ensures that the rendered CSS is correct. Don’t try to import the SCSS file into another SCSS file unless you want to do major work on relative paths – it’s messy.
// https://shellmonger.com/2016/01/22/working-with-fonts-with-webpack/
import './static/fonts/roboto.scss';
import './scss/styles.scss';

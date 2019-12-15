<?php

namespace Cissee\Webtrees\Module\Gov4Webtrees;

use Fisharebest\Webtrees\I18N;
use Vesta\ControlPanel\Model\ControlPanelCheckbox;
use Vesta\ControlPanel\Model\ControlPanelCheckboxInverted;
use Vesta\ControlPanel\Model\ControlPanelPreferences;
use Vesta\ControlPanel\Model\ControlPanelRadioButton;
use Vesta\ControlPanel\Model\ControlPanelRadioButtons;
use Vesta\ControlPanel\Model\ControlPanelSection;
use Vesta\ControlPanel\Model\ControlPanelSubsection;

trait Gov4WebtreesModuleTrait {

  protected function getMainTitle() {
    return I18N::translate('Vesta Gov4Webtrees');
  }

  public function getShortDescription() {
    return
            I18N::translate('A module integrating GOV (historic gazetteer) data.');
  }

  protected function getFullDescription() {
    $description = array();
    $description[] = I18N::translate('A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended \'Facts and events\' tab.') . ' ' .
            I18N::translate('Place hierarchies are displayed historically, i.e. according to the date of the respective event.') . ' ' .
            I18N::translate('All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally.') . ' ' .
            I18N::translate('Consequently, place hierarchy information can only be changed indirectly, via the GOV website.') . ' ' .
            I18N::translate('GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported.') . ' ' .
            I18N::translate('In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data.');
    $description[] = I18N::translate('Requires the \'%1$s Vesta Common\' module, and the \'%1$s Vesta Facts and events\' module.', $this->getVestaSymbol());
    $description[] = I18N::translate('Provides location data to other custom modules.');
    return $description;
  }

  protected function createPrefs() {
    $generalSub = array();
    $generalSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Displayed title'),
            array(new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Include the ' . $this->getVestaSymbol() . ' symbol in the module title'),
                null,
                'VESTA',
                '1')));

    $generalSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Local GOV data'),
            array(new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('reset all cached data once'),
                /* I18N: Configuration option */ I18N::translate('Subsequently, all data is retrieved again from the GOV server. ') .
                /* I18N: Configuration option */I18N::translate('Usually only required in case of substantial changes of the GOV data. ') .
                /* I18N: Configuration option */I18N::translate('Mappings of places to GOV ids are not affected.'),
                'RESET',
                '0'))); //not a persistent setting, see overridden setSetting/setPreference!
    
    $editingSub = array();
    $editingSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Where to edit and store GOV ids'),
            array(
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Within GEDCOM data (via other custom modules). '),
                /* I18N: Configuration option */I18N::translate('Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags. '). ' ' .
                /* I18N: Configuration option */I18N::translate('If this option is checked, you usually want to disable the following option. '),
                'SUPPORT_EDITING_ELSEWHERE',
                '1'),        
        new ControlPanelCheckboxInverted(
                /* I18N: Configuration option */I18N::translate('Outside GEDCOM data'),
                /* I18N: Configuration option */I18N::translate('In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation. '). ' ' .
                I18N::translate('When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server.'),
                'NO_ONE_MAY_EDIT',
                '0'),
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Outside GEDCOM data - editable by anyone (including visitors)'),
                /* I18N: Configuration option */ I18N::translate('This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option.'),
                'VISITORS_MAY_EDIT',
                '0')));
    
    $factsAndEventsSub = array();
    $factsAndEventsSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Show GOV hierarchy for'),
            array(
        new ControlPanelRadioButtons(
                true,
                array(
            new ControlPanelRadioButton(
                    I18N::translate('date of event'),
                    null,
                    '0'),
            new ControlPanelRadioButton(
                    I18N::translate('present time'),
                    null,
                    '2'),
            new ControlPanelRadioButton(
                   I18N::translate('both'),
                    null,
                    '1')),
                'for events without a date, present time hierarchy will be used regardless of this preference.',
                'SHOW_CURRENT_DATE',
                '0'),
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Show additional info'),
                /* I18N: Configuration option */I18N::translate('Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging.'),
                'DEBUG_GOV_SOURCE',
                '0')));
                
    $factsAndEventsSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Displayed data'),
            array(
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Compact display (administrative levels as tooltips)'),
                null,
                'COMPACT_DISPLAY',
                '1'),
        /*
          new ControlPanelCheckbox(
          I18N::translate('Additionally show GOV hierarchy for present time'),
          null,
          'SHOW_CURRENT_DATE',
          '0'),
         */
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Allow objects of type \'settlement\' in hierarchy'),
                /* I18N: Configuration option */ I18N::translate('According to the current GOV specification, settlements are not supposed to be parents of other settlements.') .
                /* I18N: Configuration option */I18N::translate('This policy hasn\'t been strictly followed though. Check this option if you end up with incomplete hierarchies otherwise.') .
                /* I18N: Configuration option */I18N::translate('Note: Ultimately it\'s probably preferable to correct the respective GOV data itself.'),
                'ALLOW_SETTLEMENTS',
                '1'),
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('For events with a date range, use the median date'),
                /* I18N: Configuration option */ I18N::translate('Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees).'),
                'USE_MEDIAN_DATE',
                '0')));

    $factsAndEventsSub[] = new ControlPanelSubsection(
            /* I18N: Configuration option */I18N::translate('Internals (adjusted automatically if necessary)'),
            array(/* new ControlPanelCheckbox(
          I18N::translate('Use fast ajax requests'),
          I18N::translate('Execute ajax requests directly (not via the regular webtrees entrypoint url). This won\'t work if your server doesn\'t allow non-standard endpoints (*.php files within the module directory), in which case this option is unchecked automatically. Direct requests are faster because requests via the regular webtrees entrypoint url carry out lots of unnecessary initialization tasks.'),
          'FAST_AJAX',
          '1'), */
        new ControlPanelCheckbox(
                /* I18N: Configuration option */I18N::translate('Use NuSOAP instead of SoapClient'),
                /* I18N: Configuration option */ I18N::translate('Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically.'),
                'USE_NUSOAP',
                '0')));

    $sections = array();
    $sections[] = new ControlPanelSection(
            /* I18N: Configuration option */I18N::translate('General'),
            null,
            $generalSub);
    $sections[] = new ControlPanelSection(
            /* I18N: Configuration option */I18N::translate('GOV Id Management'),
            'It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them.',
            $editingSub);
    $sections[] = new ControlPanelSection(
            /* I18N: Configuration option */I18N::translate('Facts and Events Tab Settings'),
            null,
            $factsAndEventsSub);

    return new ControlPanelPreferences($sections);
  }

}

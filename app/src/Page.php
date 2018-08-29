<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Control\Director;

    class Page extends SiteTree
    {
        private static $db = [];

        private static $has_one = [];

        public function isLiveReload() {
          return Director::isDev() && @fsockopen('localhost', 35729, $errno, $errstr, 1);
        }
    }
}

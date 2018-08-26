<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Control\Director;

    class Page extends SiteTree
    {
        private static $db = [];

        private static $has_one = [];

        public function WebpackDevServer()
        {
          return Director::isDev() && @fsockopen('localhost', 4444, $errno, $errstr, 1);
        }
    }
}

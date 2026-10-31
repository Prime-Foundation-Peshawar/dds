-- PMC stories copied in from the DMS seed have no expiry, so they would show on the PDC homepage and news page.
UPDATE `news_posts` SET `status` = 'draft'
WHERE `slug` IN (
  'pmc-retains-1-ranking-among-private-medical-colleges-in-kp',
  'pmc-faculty-research-published-in-international-peer-reviewed-journals'
);

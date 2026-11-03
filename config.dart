/// Central configuration for the HealthboxOPD provider app.
///
/// `kPocketBaseUrl` is the public PocketBase endpoint. The website reverse
/// proxies PocketBase at `/hcgi/platform`, so the production value is the
/// published site domain + that path. Point this at your sandbox preview URL
/// during development.
const String kPocketBaseUrl = 'https://www.healthboxopd.com/hcgi/platform';

/// Branding constants shared with the website.
const String kAppName = 'HealthboxOPD';
const String kAppTagline = 'Doctor & Provider';
const String kSupportEmail = 'support@healthboxopd.com';
const String kSupportPhone = '+91-7307014140';
const String kWebsiteUrl = 'https://www.healthboxopd.com';

/// Provider roles accepted by this app.
const List<String> kProviderRoles = [
  'doctor',
  'nursing',
  'physio',
  'attendant',
  'dietitian',
  'psychologist',
];

/// Role display labels (mirrors website ROLES).
const Map<String, String> kRoleLabels = {
  'doctor': 'Doctor',
  'nursing': 'Nursing Services',
  'physio': 'Physiotherapist',
  'attendant': 'Attendant & Baby Care',
  'dietitian': 'Dietitian',
  'psychologist': 'Psychologist',
};

/// Role-prefixed Healthbox ID prefixes.
const Map<String, String> kRolePrefixes = {
  'patient': 'PT',
  'doctor': 'DR',
  'nursing': 'NR',
  'physio': 'PY',
  'attendant': 'AB',
  'dietitian': 'DT',
  'psychologist': 'PS',
  'hospital': 'HP',
  'health_associate': 'HA',
  'opd_center': 'OC',
};

/// Synthetic mobile-mailbox domain (mirrors website auth-utils).
const String kMobileDomain = 'mobile.healthboxopd.in';

/// Days of the week for availability editor.
const List<Map<String, String>> kWeekDays = [
  {'id': 'mon', 'label': 'Monday'},
  {'id': 'tue', 'label': 'Tuesday'},
  {'id': 'wed', 'label': 'Wednesday'},
  {'id': 'thu', 'label': 'Thursday'},
  {'id': 'fri', 'label': 'Friday'},
  {'id': 'sat', 'label': 'Saturday'},
  {'id': 'sun', 'label': 'Sunday'},
];

/// Broad booking time slots (home services).
const List<String> kTimeSlots = [
  '08:00 – 10:00',
  '10:00 – 12:00',
  '12:00 – 14:00',
  '14:00 – 16:00',
  '16:00 – 18:00',
  '18:00 – 20:00',
];

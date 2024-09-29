class AppFormListData {
  AppFormListData._privateConstructor();
  static final AppFormListData _instance =
      AppFormListData._privateConstructor();
  static AppFormListData get instance => _instance;

  final String _apiKey = "8be5544529bc4c5c63282a94367b7cd3";
  String get getApiKey {
    return _apiKey;
  }

  final Map<String, Map<String, List<String>>> countryMap = {
    "India": {
      'Maharashtra': ['Mumbai', 'Pune', 'Nagpur', 'Nashik', 'Aurangabad'],
      'Karnataka': ['Bangalore', 'Mysore', 'Mangalore', 'Hubli', 'Belgaum'],
      'Tamil Nadu': [
        'Chennai',
        'Coimbatore',
        'Madurai',
        'Salem',
        'Tiruchirappalli'
      ],
      'Uttar Pradesh': ['Lucknow', 'Kanpur', 'Varanasi', 'Agra', 'Noida'],
      'Gujarat': ['Ahmedabad', 'Surat', 'Vadodara', 'Rajkot', 'Bhavnagar'],
      'West Bengal': [
        'Kolkata',
        'Darjeeling',
        'Siliguri',
        'Asansol',
        'Durgapur'
      ],
      'Rajasthan': ['Jaipur', 'Udaipur', 'Jodhpur', 'Ajmer', 'Bikaner'],
      'Kerala': [
        'Thiruvananthapuram',
        'Kochi',
        'Kozhikode',
        'Thrissur',
        'Alappuzha'
      ],
      'Punjab': ['Amritsar', 'Ludhiana', 'Jalandhar', 'Patiala', 'Bathinda'],
      'Haryana': ['Gurugram', 'Faridabad', 'Panipat', 'Ambala', 'Rohtak'],
      'Madhya Pradesh': ['Bhopal', 'Indore', 'Gwalior', 'Jabalpur', 'Ujjain'],
      'Bihar': ['Patna', 'Gaya', 'Bhagalpur', 'Muzaffarpur', 'Darbhanga'],
      'Telangana': [
        'Hyderabad',
        'Warangal',
        'Nizamabad',
        'Karimnagar',
        'Khammam'
      ],
      'Andhra Pradesh': [
        'Visakhapatnam',
        'Vijayawada',
        'Guntur',
        'Nellore',
        'Tirupati'
      ],
      'Odisha': ['Bhubaneswar', 'Cuttack', 'Rourkela', 'Puri', 'Sambalpur'],
      'Assam': ['Guwahati', 'Dibrugarh', 'Silchar', 'Jorhat', 'Tezpur'],
      'Jharkhand': ['Ranchi', 'Jamshedpur', 'Dhanbad', 'Bokaro', 'Hazaribagh'],
      'Chhattisgarh': ['Raipur', 'Bilaspur', 'Durg', 'Korba', 'Rajnandgaon'],
      'Goa': ['Panaji', 'Margao', 'Vasco da Gama', 'Mapusa', 'Ponda'],
      'Uttarakhand': [
        'Dehradun',
        'Haridwar',
        'Rishikesh',
        'Nainital',
        'Haldwani'
      ],
      'Himachal Pradesh': ['Shimla', 'Manali', 'Dharamshala', 'Kullu', 'Solan'],
      'Jammu & Kashmir': ['Srinagar', 'Jammu', 'Anantnag', 'Baramulla', 'Leh'],
      'Meghalaya': ['Shillong', 'Tura', 'Nongstoin', 'Jowai', 'Baghmara'],
      'Tripura': [
        'Agartala',
        'Udaipur',
        'Dharmanagar',
        'Kailashahar',
        'Belonia'
      ],
      'Nagaland': ['Kohima', 'Dimapur', 'Mokokchung', 'Tuensang', 'Wokha'],
      'Manipur': ['Imphal', 'Thoubal', 'Bishnupur', 'Ukhrul', 'Churachandpur'],
      'Mizoram': ['Aizawl', 'Lunglei', 'Serchhip', 'Champhai', 'Kolasib'],
      'Arunachal Pradesh': ['Itanagar', 'Pasighat', 'Ziro', 'Tezu', 'Bomdila'],
      'Sikkim': ['Gangtok', 'Gyalshing', 'Namchi', 'Mangan', 'Rangpo'],
    },
    "Afghanistan": {
      'Kabul': ['Kabul City', 'Bagrami', 'Deh Sabz', 'Khaki Jabbar'],
      'Herat': ['Herat City', 'Gulran', 'Kushk', 'Shindand'],
      'Kandahar': ['Kandahar City', 'Spin Boldak', 'Zhari', 'Panjwai'],
      'Balkh': ['Mazar-i-Sharif', 'Balkh City', 'Sholgara', 'Dihdadi'],
      'Nangarhar': ['Jalalabad', 'Achin', 'Bati Kot', 'Surkh Rod'],
      'Helmand': ['Lashkargah', 'Garmsir', 'Musa Qala', 'Sangin'],
      'Ghazni': ['Ghazni City', 'Andar', 'Giro', 'Nawa'],
      'Badakhshan': ['Fayzabad', 'Jurm', 'Kishim', 'Wurduj'],
      'Paktia': ['Gardez', 'Zadran', 'Zurmat', 'Jaji'],
      'Parwan': ['Charikar', 'Jabal Saraj', 'Sayed Khel', 'Bagram'],
    },
    "Albania": {
      "Berat": ["Berat", "Kuçovë", "Poliçan"],
      "Dibër": ["Peshkopi", "Bulqizë", "Burrel"],
      "Durrës": ["Durrës", "Shijak", "Manëz"],
      "Elbasan": ["Elbasan", "Cërrik", "Peqin"],
      "Fier": ["Fier", "Patos", "Roskovec"],
      "Gjirokastër": ["Gjirokastër", "Tepelenë", "Memaliaj"],
      "Korçë": ["Korçë", "Pogradec", "Maliq"],
      "Kukës": ["Kukës", "Tropojë", "Has"],
      "Lezhë": ["Lezhë", "Laç", "Rrëshen"],
      "Shkodër": ["Shkodër", "Vau i Dejës", "Koplik"],
      "Tiranë": ["Tiranë", "Kamëz", "Vorë"],
      "Vlorë": ["Vlorë", "Sarandë", "Himarë"],
    },
    "Algeria": {
      "Algiers": [
        "Algiers",
        "Bab El Oued",
        "Kouba",
        "Birkhadem",
        "Bir Mourad Rais"
      ],
      "Oran": ["Oran", "Es Senia", "Bir El Djir", "Gdyel", "Arzew"],
      "Constantine": [
        "Constantine",
        "El Khroub",
        "Hamma Bouziane",
        "Ain Smara",
        "Didouche Mourad"
      ],
      "Blida": ["Blida", "Boufarik", "Mouzaia", "Ouled Yaich", "Beni Mered"],
      "Tizi Ouzou": [
        "Tizi Ouzou",
        "Draa Ben Khedda",
        "Ouaguenoun",
        "Larbaa Nath Irathen",
        "Azazga"
      ],
      "Annaba": ["Annaba", "El Hadjar", "Ain Berda", "Berrahal", "Sidi Amar"],
      "Sétif": ["Sétif", "El Eulma", "Ain Arnat", "Guellal", "Ain Abessa"],
      "Bejaia": ["Bejaia", "Tichy", "Amizour", "Kherrata", "Sidi Aich"],
      "Batna": ["Batna", "Timgad", "Barika", "Ain Touta", "Merouana"],
      "Tlemcen": ["Tlemcen", "Maghnia", "Ghazaouet", "Sebdou", "Remchi"]
    },
    "American Samoa": {
      'Tutuila': ['Pago Pago', 'Fagatogo', 'Nu’uuli', 'Tafuna'],
      'Manu’a Islands': ['Ta’u', 'Ofu', 'Olosega'],
      'Swains Island': ['Taulaga'],
    },
    'Australia': {
      'New South Wales': ['Sydney', 'Newcastle', 'Wollongong'],
      'Victoria': ['Melbourne', 'Geelong', 'Ballarat'],
      'Queensland': ['Brisbane', 'Gold Coast', 'Cairns'],
    },
    'Brazil': {
      'São Paulo': ['São Paulo', 'Campinas', 'Santos'],
      'Rio de Janeiro': ['Rio de Janeiro', 'Niterói', 'Petrópolis'],
      'Minas Gerais': ['Belo Horizonte', 'Uberlândia', 'Juiz de Fora'],
    },
    'Canada': {
      'Ontario': ['Toronto', 'Ottawa', 'Hamilton'],
      'Quebec': ['Montreal', 'Quebec City', 'Laval'],
      'British Columbia': ['Vancouver', 'Victoria', 'Kelowna'],
    },
    'China': {
      'Beijing': ['Beijing'],
      'Shanghai': ['Shanghai'],
      'Guangdong': ['Guangzhou', 'Shenzhen', 'Dongguan'],
    },
    'Hong Kong S.A.R': {
      'Hong Kong Island': ['Central', 'Wan Chai', 'Causeway Bay'],
      'Kowloon': ['Tsim Sha Tsui', 'Mong Kok', 'Yau Ma Tei'],
      'New Territories': ['Sha Tin', 'Tsuen Wan', 'Tuen Mun'],
    },
    'Iceland': {
      'Capital Region': ['Reykjavik', 'Kopavogur', 'Hafnarfjordur'],
      'Southern Peninsula': ['Keflavik', 'Grindavik', 'Sandgerdi'],
      'Westfjords': ['Ísafjörður', 'Bolungarvik', 'Patreksfjordur'],
    },
  };
}

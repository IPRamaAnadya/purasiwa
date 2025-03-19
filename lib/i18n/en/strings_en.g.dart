///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsHistoryEn history = TranslationsHistoryEn._(_root);
	late final TranslationsTutorialEn tutorial = TranslationsTutorialEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Siwa Temple';
	String get subtitle => 'The temple of the moon';
	late final TranslationsHomeAboutEn about = TranslationsHomeAboutEn._(_root);
	late final TranslationsHomeEventsEn events = TranslationsHomeEventsEn._(_root);
	late final TranslationsHomeMapEn map = TranslationsHomeMapEn._(_root);
	late final TranslationsHomePartOfTempleEn partOfTemple = TranslationsHomePartOfTempleEn._(_root);
	late final TranslationsHomeNewsEn news = TranslationsHomeNewsEn._(_root);
}

// Path: history
class TranslationsHistoryEn {
	TranslationsHistoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHistoryAppBarEn appBar = TranslationsHistoryAppBarEn._(_root);
	String get title => 'History of the Siwa Temple';
	List<String> get description => [
		'Pura Siwa, located in Tabanan, Bali, is a temple dedicated to the Hindu deity Shiva (locally known as Siwa). Bali is predominantly Hindu, and its temple architecture and practices are deeply intertwined with the island\'s spiritual and cultural heritage.',
		'While historical records specific to Pura Siwa in Tabanan might not be extensively documented, the worship of Shiva in Bali has roots in ancient Hindu-Javanese traditions that spread to Bali during the Majapahit Empire\'s expansion in the 14th century. Shiva is one of the principal deities in Balinese Hinduism, often revered as part of the Trimurti (the trinity of Brahma, Vishnu, and Shiva).',
		'The presence of Pura Siwa in Tabanan reflects Bali’s broader Hindu heritage, where many temples are dedicated to specific deities, and the worship of Siwa/Siwa Pasupati (Shiva as the supreme god) is common. Temples in Bali, including Pura Siwa, typically serve as sacred spaces for offerings, religious ceremonies, and pilgrimages by local worshippers.',
		'If you\'re interested in visiting, Pura Siwa would be a beautiful example of Balinese temple architecture and culture, blending traditional artistry with deep religious significance.',
	];
}

// Path: tutorial
class TranslationsTutorialEn {
	TranslationsTutorialEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsTutorialAppBarEn appBar = TranslationsTutorialAppBarEn._(_root);
	String get title => 'How to pray in Siwa Temple';
	List<String> get description => [
		'Welcome to the Siwa Temple app! This app is designed to help you explore the Siwa Temple and learn more about its history and significance. Here\'s a quick guide on how to use the app:',
	];
	late final TranslationsTutorialOfferingsEn offerings = TranslationsTutorialOfferingsEn._(_root);
	late final TranslationsTutorialFlowEn flow = TranslationsTutorialFlowEn._(_root);
}

// Path: home.about
class TranslationsHomeAboutEn {
	TranslationsHomeAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => 'The Siwa Temple is a temple dedicated to the moon god, Khonsu. It is located in the Siwa Oasis in Egypt. The temple was built during the 26th Dynasty and is one of the best-preserved temples in Egypt. The temple is known for its beautiful carvings and hieroglyphics, which tell the story of the moon god and his importance in ancient Egyptian religion.';
	String get button => 'Learn History';
}

// Path: home.events
class TranslationsHomeEventsEn {
	TranslationsHomeEventsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Events';
	String get subtitle => 'Upcoming events at the Siwa Temple';
	String get button => 'View All Events';
}

// Path: home.map
class TranslationsHomeMapEn {
	TranslationsHomeMapEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Siwa Temple Map';
	String get button => 'Open Map';
}

// Path: home.partOfTemple
class TranslationsHomePartOfTempleEn {
	TranslationsHomePartOfTempleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Part of the Temple';
	String get subtitle => 'Explore the different parts of the Siwa Temple';
	String get button => 'View All Parts';
}

// Path: home.news
class TranslationsHomeNewsEn {
	TranslationsHomeNewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'News';
	String get subtitle => 'Latest news about the Siwa Temple';
	String get button => 'View All News';
}

// Path: history.appBar
class TranslationsHistoryAppBarEn {
	TranslationsHistoryAppBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'History';
	String get back => 'Back';
}

// Path: tutorial.appBar
class TranslationsTutorialAppBarEn {
	TranslationsTutorialAppBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Flow and Offerings';
	String get back => 'Back';
}

// Path: tutorial.offerings
class TranslationsTutorialOfferingsEn {
	TranslationsTutorialOfferingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Making Offerings';
	String get description => 'offerings that can be prepared and brought when visiting the Shiva temple based on the beliefs of Hindus in Bali. You can bring offerings according to your respective beliefs or not bring anything. This is not required.';
	String get closeDescription => 'If you\'re interested in making offerings at the temple, you can order them through the app. Here are some common offerings you can choose from:';
	String get button => 'Order Offerings';
	List<dynamic> get items => [
		TranslationsTutorialOfferings$items$0i0$En._(_root),
		TranslationsTutorialOfferings$items$0i1$En._(_root),
		TranslationsTutorialOfferings$items$0i2$En._(_root),
	];
}

// Path: tutorial.flow
class TranslationsTutorialFlowEn {
	TranslationsTutorialFlowEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Prayer Flow';
	String get description => 'The prayer flow at the Siwa Temple follows a specific sequence of rituals and offerings. Here\'s a general outline of the prayer flow:';
	List<dynamic> get items => [
		TranslationsTutorialFlow$items$0i0$En._(_root),
		TranslationsTutorialFlow$items$0i1$En._(_root),
		TranslationsTutorialFlow$items$0i2$En._(_root),
		TranslationsTutorialFlow$items$0i3$En._(_root),
	];
}

// Path: tutorial.offerings.items.0
class TranslationsTutorialOfferings$items$0i0$En {
	TranslationsTutorialOfferings$items$0i0$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get image => 'assets/images/canang_sari.jpg';
	String get title => 'Canang Sari';
	String get qty => '1 pack';
	String get description => 'Canang Sari is one of the most common offerings in Bali. It is a small woven basket made from coconut leaves and filled with flowers, rice, and incense. The offering is placed at the temple entrance or on shrines as a symbol of gratitude and devotion.';
}

// Path: tutorial.offerings.items.1
class TranslationsTutorialOfferings$items$0i1$En {
	TranslationsTutorialOfferings$items$0i1$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get image => 'assets/images/banten.jpg';
	String get title => 'Banten';
	String get qty => '1 set';
	String get description => 'Banten is a larger offering that consists of fruits, cakes, and other food items. It is usually presented during special ceremonies or festivals to honor the deities and seek their blessings.';
}

// Path: tutorial.offerings.items.2
class TranslationsTutorialOfferings$items$0i2$En {
	TranslationsTutorialOfferings$items$0i2$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get image => 'assets/images/sesajen.jpg';
	String get title => 'Sesajen';
	String get qty => '1 set';
	String get description => 'Sesajen are offerings made from various natural materials like fruits, flowers, and leaves. They are placed on shrines or altars as a sign of respect and reverence to the deities.';
}

// Path: tutorial.flow.items.0
class TranslationsTutorialFlow$items$0i0$En {
	TranslationsTutorialFlow$items$0i0$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no => '1';
	String get title => 'Enter the Temple';
	String get description => 'Start by entering the temple premises and observing the surroundings. Take a moment to appreciate the architecture and ambiance of the temple.';
	List<String> get offerings => [
		'Canang Sari',
		'Banten',
	];
	String get image => 'assets/images/enter_temple.jpg';
}

// Path: tutorial.flow.items.1
class TranslationsTutorialFlow$items$0i1$En {
	TranslationsTutorialFlow$items$0i1$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no => '2';
	String get title => 'Prepare Offerings';
	String get description => 'Prepare your offerings and place them at the designated shrines or altars. Follow the instructions given by the temple priests or guides.';
	List<String> get offerings => [
		'Canang Sari',
		'Sesajen',
	];
	String get image => 'assets/images/prepare_offerings.jpg';
}

// Path: tutorial.flow.items.2
class TranslationsTutorialFlow$items$0i2$En {
	TranslationsTutorialFlow$items$0i2$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no => '3';
	String get title => 'Pray and Meditate';
	String get description => 'Engage in prayer and meditation to connect with the divine and seek blessings for yourself and your loved ones. Offer your prayers with sincerity and devotion.';
	List<String> get offerings => [
		'Banten',
		'Sesajen',
	];
	String get image => 'assets/images/pray_meditate.jpg';
}

// Path: tutorial.flow.items.3
class TranslationsTutorialFlow$items$0i3$En {
	TranslationsTutorialFlow$items$0i3$En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no => '4';
	String get title => 'Receive Blessings';
	String get description => 'Receive blessings from the temple priests or spiritual guides. Express your gratitude and respect for the divine blessings bestowed upon you.';
	List<String> get offerings => [
		'Canang Sari',
		'Sesajen',
	];
	String get image => 'assets/images/receive_blessings.jpg';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.title': return 'Siwa Temple';
			case 'home.subtitle': return 'The temple of the moon';
			case 'home.about.description': return 'The Siwa Temple is a temple dedicated to the moon god, Khonsu. It is located in the Siwa Oasis in Egypt. The temple was built during the 26th Dynasty and is one of the best-preserved temples in Egypt. The temple is known for its beautiful carvings and hieroglyphics, which tell the story of the moon god and his importance in ancient Egyptian religion.';
			case 'home.about.button': return 'Learn History';
			case 'home.events.title': return 'Events';
			case 'home.events.subtitle': return 'Upcoming events at the Siwa Temple';
			case 'home.events.button': return 'View All Events';
			case 'home.map.title': return 'Siwa Temple Map';
			case 'home.map.button': return 'Open Map';
			case 'home.partOfTemple.title': return 'Part of the Temple';
			case 'home.partOfTemple.subtitle': return 'Explore the different parts of the Siwa Temple';
			case 'home.partOfTemple.button': return 'View All Parts';
			case 'home.news.title': return 'News';
			case 'home.news.subtitle': return 'Latest news about the Siwa Temple';
			case 'home.news.button': return 'View All News';
			case 'history.appBar.title': return 'History';
			case 'history.appBar.back': return 'Back';
			case 'history.title': return 'History of the Siwa Temple';
			case 'history.description.0': return 'Pura Siwa, located in Tabanan, Bali, is a temple dedicated to the Hindu deity Shiva (locally known as Siwa). Bali is predominantly Hindu, and its temple architecture and practices are deeply intertwined with the island\'s spiritual and cultural heritage.';
			case 'history.description.1': return 'While historical records specific to Pura Siwa in Tabanan might not be extensively documented, the worship of Shiva in Bali has roots in ancient Hindu-Javanese traditions that spread to Bali during the Majapahit Empire\'s expansion in the 14th century. Shiva is one of the principal deities in Balinese Hinduism, often revered as part of the Trimurti (the trinity of Brahma, Vishnu, and Shiva).';
			case 'history.description.2': return 'The presence of Pura Siwa in Tabanan reflects Bali’s broader Hindu heritage, where many temples are dedicated to specific deities, and the worship of Siwa/Siwa Pasupati (Shiva as the supreme god) is common. Temples in Bali, including Pura Siwa, typically serve as sacred spaces for offerings, religious ceremonies, and pilgrimages by local worshippers.';
			case 'history.description.3': return 'If you\'re interested in visiting, Pura Siwa would be a beautiful example of Balinese temple architecture and culture, blending traditional artistry with deep religious significance.';
			case 'tutorial.appBar.title': return 'Flow and Offerings';
			case 'tutorial.appBar.back': return 'Back';
			case 'tutorial.title': return 'How to pray in Siwa Temple';
			case 'tutorial.description.0': return 'Welcome to the Siwa Temple app! This app is designed to help you explore the Siwa Temple and learn more about its history and significance. Here\'s a quick guide on how to use the app:';
			case 'tutorial.offerings.title': return 'Making Offerings';
			case 'tutorial.offerings.description': return 'offerings that can be prepared and brought when visiting the Shiva temple based on the beliefs of Hindus in Bali. You can bring offerings according to your respective beliefs or not bring anything. This is not required.';
			case 'tutorial.offerings.closeDescription': return 'If you\'re interested in making offerings at the temple, you can order them through the app. Here are some common offerings you can choose from:';
			case 'tutorial.offerings.button': return 'Order Offerings';
			case 'tutorial.offerings.items.0.image': return 'assets/images/canang_sari.jpg';
			case 'tutorial.offerings.items.0.title': return 'Canang Sari';
			case 'tutorial.offerings.items.0.qty': return '1 pack';
			case 'tutorial.offerings.items.0.description': return 'Canang Sari is one of the most common offerings in Bali. It is a small woven basket made from coconut leaves and filled with flowers, rice, and incense. The offering is placed at the temple entrance or on shrines as a symbol of gratitude and devotion.';
			case 'tutorial.offerings.items.1.image': return 'assets/images/banten.jpg';
			case 'tutorial.offerings.items.1.title': return 'Banten';
			case 'tutorial.offerings.items.1.qty': return '1 set';
			case 'tutorial.offerings.items.1.description': return 'Banten is a larger offering that consists of fruits, cakes, and other food items. It is usually presented during special ceremonies or festivals to honor the deities and seek their blessings.';
			case 'tutorial.offerings.items.2.image': return 'assets/images/sesajen.jpg';
			case 'tutorial.offerings.items.2.title': return 'Sesajen';
			case 'tutorial.offerings.items.2.qty': return '1 set';
			case 'tutorial.offerings.items.2.description': return 'Sesajen are offerings made from various natural materials like fruits, flowers, and leaves. They are placed on shrines or altars as a sign of respect and reverence to the deities.';
			case 'tutorial.flow.title': return 'Prayer Flow';
			case 'tutorial.flow.description': return 'The prayer flow at the Siwa Temple follows a specific sequence of rituals and offerings. Here\'s a general outline of the prayer flow:';
			case 'tutorial.flow.items.0.no': return '1';
			case 'tutorial.flow.items.0.title': return 'Enter the Temple';
			case 'tutorial.flow.items.0.description': return 'Start by entering the temple premises and observing the surroundings. Take a moment to appreciate the architecture and ambiance of the temple.';
			case 'tutorial.flow.items.0.offerings.0': return 'Canang Sari';
			case 'tutorial.flow.items.0.offerings.1': return 'Banten';
			case 'tutorial.flow.items.0.image': return 'assets/images/enter_temple.jpg';
			case 'tutorial.flow.items.1.no': return '2';
			case 'tutorial.flow.items.1.title': return 'Prepare Offerings';
			case 'tutorial.flow.items.1.description': return 'Prepare your offerings and place them at the designated shrines or altars. Follow the instructions given by the temple priests or guides.';
			case 'tutorial.flow.items.1.offerings.0': return 'Canang Sari';
			case 'tutorial.flow.items.1.offerings.1': return 'Sesajen';
			case 'tutorial.flow.items.1.image': return 'assets/images/prepare_offerings.jpg';
			case 'tutorial.flow.items.2.no': return '3';
			case 'tutorial.flow.items.2.title': return 'Pray and Meditate';
			case 'tutorial.flow.items.2.description': return 'Engage in prayer and meditation to connect with the divine and seek blessings for yourself and your loved ones. Offer your prayers with sincerity and devotion.';
			case 'tutorial.flow.items.2.offerings.0': return 'Banten';
			case 'tutorial.flow.items.2.offerings.1': return 'Sesajen';
			case 'tutorial.flow.items.2.image': return 'assets/images/pray_meditate.jpg';
			case 'tutorial.flow.items.3.no': return '4';
			case 'tutorial.flow.items.3.title': return 'Receive Blessings';
			case 'tutorial.flow.items.3.description': return 'Receive blessings from the temple priests or spiritual guides. Express your gratitude and respect for the divine blessings bestowed upon you.';
			case 'tutorial.flow.items.3.offerings.0': return 'Canang Sari';
			case 'tutorial.flow.items.3.offerings.1': return 'Sesajen';
			case 'tutorial.flow.items.3.image': return 'assets/images/receive_blessings.jpg';
			default: return null;
		}
	}
}


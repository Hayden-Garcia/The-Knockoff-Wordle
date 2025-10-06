// A homemade version of the game Wordle
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Knockoff Wordle",
      theme: ThemeData(primaryColor: Colors.black),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('The Knockoff Wordle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'THE KNOCKOFF WORDLE',
              style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'Created By: Hayden Garcia',
              style: TextStyle(
                fontSize: 8,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            TextSection(
              description:
                  'This is a home made version on the game "Wordle created by: Josh Wardle." '
                  'I created this new version of the game on September 24, 2025 '
                  'and have been calling this version the Knockoff Wordle '
                  'Please Enjoy!',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("How to Play"),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );

                if (result != null) print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Gist of it'),
        automaticallyImplyLeading: false,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, "Rules have been read");
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextSection(description: ''),
            Text(
              'How the Game Works!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green[100],
              ),
            ),
            SizedBox(height: 50),
            Text(
              '1. You have to guess a five letter word, and you get six tries.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '2. If the word is not in the word list you will be prompted to input a new word.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '3. If a tile turns yellow that tile means the character is correct, but placed in wrong spot.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '4. If a tile turns grey that tile means the character is not used in the word.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '5. If a tile turns green that tile means it is in the right spot and using the right character.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'How to Win!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 7),
            Text(
              'Get all the tiles to turn green before your guesses are up!',
              style: TextStyle(
                fontSize: 11,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),

            ElevatedButton(
              child: Text("Begin the game"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() {
    return _ThirdScreenState();
  }
}

class _ThirdScreenState extends State<ThirdScreen> {
  // the list of words
  List<String> _wordList = <String>[
    'ABACK',
    'ABASE',
    'ABATE',
    'ABBEY',
    'ABIDE',
    'ABOUT',
    'ABOVE',
    'ABYSS',
    'ACORN',
    'ACRID',
    'ACTOR',
    'ACUTE',
    'ADAGE',
    'ADAPT',
    'ADEPT',
    'ADMIN',
    'ADMIT',
    'ADOBE',
    'ADOPT',
    'ADORE',
    'ADULT',
    'AFFIX',
    'AFTER',
    'AGAIN',
    'AGAPE',
    'AGATE',
    'AGENT',
    'BADGE',
    'BADLY',
    'BAGEL',
    'BAKER',
    'BALER',
    'BALMY',
    'BALSA',
    'BANAL',
    'BANJO',
    'BARGE',
    'BASIC',
    'BASIN',
    'BASTE',
    'BATHE',
    'BATON',
    'BATTY',
    'BAWDY',
    'BAYOU',
    'BEACH',
    'BEADY',
    'BEAST',
    'BEAUT',
    'BEEFY',
    'BEGET',
    'BEGIN',
    'BEING',
    'BELCH',
    'CANNY',
    'CANOE',
    'CANON',
    'CAPER',
    'CARAT',
    'CARGO',
    'CAROL',
    'CARRY',
    'CARVE',
    'CATCH',
    'CATER',
    'CAULK',
    'CAUSE',
    'CEASE',
    'CEDAR',
    'CHAFE',
    'CHAIN',
    'CHAIR',
    'CHALK',
    'CHAMP',
    'CHANT',
    'CHAOS',
    'CHARD',
    'CHARM',
    'CHART',
    'CHASE',
    'DEBIT',
    'DEBUG',
    'DEBUT',
    'DECAL',
    'DECAY',
    'DECOY',
    'DECRY',
    'DEFER',
    'DEITY',
    'DELAY',
    'DELTA',
    'DELVE',
    'DENIM',
    'DEPOT',
    'DEPTH',
    'DETER',
    'DEVIL',
    'DIARY',
    'DICEY',
    'DIGIT',
    'DINER',
    'DINGO',
    'DINGY',
    'DIRGE',
    'DISCO',
    'DITTO',
    'DITTY',
    'EARTH',
    'EASEL',
    'EBONY',
    'EDICT',
    'EDIFY',
    'EGRET',
    'EJECT',
    'ELATE',
    'ELBOW',
    'ELDER',
    'ELITE',
    'ELOPE',
    'ELUDE',
    'EMAIL',
    'EMBER',
    'EMPTY',
    'ENACT',
    'ENDOW',
    'ENEMA',
    'ENJOY',
    'ENNUI',
    'ENSUE',
    'ENTER',
    'EPOCH',
    'EPOXY',
    'EQUAL',
    'EQUIP',
    'FAULT',
    'FAVOR',
    'FEAST',
    'FEIGN',
    'FERAL',
    'FERRY',
    'FETCH',
    'FEVER',
    'FEWER',
    'FIBER',
    'FIELD',
    'FIEND',
    'FIFTH',
    'FIFTY',
    'FILET',
    'FINAL',
    'FINCH',
    'FINER',
    'FIRST',
    'FISHY',
    'FIXER',
    'FJORD',
    'FLAIL',
    'FLAIR',
    'FLAKE',
    'FLAME',
    'FLANK',
    'FLARE',
    'GAMER',
    'GAWKY',
    'GECKO',
    'GEESE',
    'GENIE',
    'GENRE',
    'GHOST',
    'GHOUL',
    'GIANT',
    'GIDDY',
    'GIRTH',
    'GIVEN',
    'GLADE',
    'GLAND',
    'GLASS',
    'GLAZE',
    'GLEAM',
    'GLEAN',
    'GLIDE',
    'GLOAT',
    'GLOBE',
    'GLOOM',
    'GLORY',
    'GLOVE',
    'GLYPH',
    'GNASH',
    'GNOME',
    'GOFER',
    'HATCH',
    'HATER',
    'HAUNT',
    'HAVOC',
    'HAZEL',
    'HEADY',
    'HEARD',
    'HEART',
    'HAPPY',
    'HEAVE',
    'HEAVY',
    'HEFTY',
    'HEIST',
    'HELIX',
    'HELLO',
    'HENCE',
    'HERON',
    'HILLY',
    'HINGE',
    'HIPPO',
    'HITCH',
    'HOARD',
    'HOBBY',
    'HOMER',
    'HONEY',
    'HORDE',
    'HORSE',
    'IDLER',
    'IGLOO',
    'IMAGE',
    'IMBUE',
    'IMPEL',
    'INANE',
    'INBOX',
    'INCUR',
    'INDEX',
    'INDIE',
    'INEPT',
    'INERT',
    'INFER',
    'INLAY',
    'INNER',
    'INPUT',
    'INTER',
    'INTRO',
    'IONIC',
    'IRATE',
    'IRONY',
    'ISLET',
    'ISSUE',
    'ITCHY',
    'IVORY',
    'ICING',
    'JAZZY',
    'JELLY',
    'JERKY',
    'JEWEL',
    'JIFFY',
    'JOINT',
    'JOKER',
    'JOLLY',
    'JOUST',
    'JUDGE',
    'JUICE',
    'JUMPY',
    'KARMA',
    'KAYAK',
    'KAZOO',
    'KEBAB',
    'KEFIR',
    'KAHKI',
    'KIOSK',
    'KNACK',
    'KNAVE',
    'KNEAD',
    'KNEEL',
    'KNELL',
    'KNELT',
    'KNIFE',
    'KNOCK',
    'KNOLL',
    'KNOWN',
    'KOALA',
    'KRILL',
    'LABEL',
    'LABOR',
    'LADLE',
    'LAGER',
    'LANKY',
    'LAPEL',
    'LAPSE',
    'LARGE',
    'LARVA',
    'LASER',
    'LASSO',
    'LATER',
    'LATTE',
    'LAUGH',
    'LAYER',
    'LEAFY',
    'LEAKY',
    'LEAPT',
    'LEARN',
    'LEASE',
    'LEASH',
    'LEAST',
    'LEAVE',
    'LEDGE',
    'LEECH',
    'LEERY',
    'LEFTY',
    'LEGGY',
    'LEMON',
    'LEMUR',
    'LEVEL',
    'LIBEL',
    'LIGHT',
    'LILAC',
    'MAGMA',
    'MAIZE',
    'MAJOR',
    'MAMBO',
    'MANGA',
    'MANGO',
    'MANIA',
    'MANLY',
    'MAGIC',
    'MANOR',
    'MAPLE',
    'MARCH',
    'MARRY',
    'MARSH',
    'MASON',
    'MASSE',
    'MATCH',
    'MADLY',
    'MATEY',
    'MATTE',
    'MAUVE',
    'MAXIM',
    'MAYBE',
    'MAYOR',
    'MEALY',
    'MEANT',
    'MEDAL',
    'NANNY',
    'NASAL',
    'NASTY',
    'NATAL',
    'NAVAL',
    'NAVEL',
    'NEEDY',
    'NEIGH',
    'NERDY',
    'NERVE',
    'NERVY',
    'NEVER',
    'NICER',
    'NICHE',
    'NIGHT',
    'NINJA',
    'NINTH',
    'NOBLE',
    'NOISE',
    'NOISY',
    'NOMAD',
    'NORTH',
    'NOVEL',
    'NUDGE',
    'NURSE',
    'NYMPH',
    'OCCUR',
    'OCEAN',
    'OCTET',
    'ODDLY',
    'OFFAL',
    'OFFER',
    'OFTEN',
    'OLDER',
    'OLIVE',
    'OMEGA',
    'ONION',
    'ONSET',
    'OPERA',
    'ORDER',
    'ORGAN',
    'OTHER',
    'PAINT',
    'PANEL',
    'PANIC',
    'PAPAL',
    'PAPER',
    'PARER',
    'PARRY',
    'PARTY',
    'PASTA',
    'PATCH',
    'PATIO',
    'PATSY',
    'PATTY',
    'PAUSE',
    'PEACE',
    'PEACH',
    'PEARL',
    'PEDAL',
    'PENNE',
    'PERCH',
    'PERKY',
    'PESKY',
    'PETAL',
    'PETTY',
    'PHASE',
    'PHONE',
    'PHONY',
    'PHOTO',
    'PIANO',
    'PICKY',
    'QUIAL',
    'QUAKE',
    'QUALM',
    'QUART',
    'QUASH',
    'QUEEN',
    'QUERY',
    'QUEST',
    'QUEUE',
    'QUICK',
    'QUIET',
    'QUILL',
    'QUIRK',
    'QUITE',
    'QUOTA',
    'QUOTE',
    'RADIO',
    'RAINY',
    'RAISE',
    'RAMEN',
    'RANCH',
    'RANGE',
    'RAPID',
    'RATIO',
    'RATTY',
    'RAYON',
    'REACH',
    'REACT',
    'READY',
    'REALM',
    'REBEL',
    'REBUS',
    'REBUT',
    'RECAP',
    'RECUR',
    'REFER',
    'REGAL',
    'RELAX',
    'RELAY',
    'RELIC',
    'RENEW',
    'REPAY',
    'REPEL',
    'RERUN',
    'RESIN',
    'SASSY',
    'SAUCY',
    'SAUNA',
    'SAUTE',
    'SAVOR',
    'SAVVY',
    'SCALD',
    'SCALE',
    'SCANT',
    'SCARE',
    'SCARF',
    'SCENT',
    'SCOFF',
    'SCOLD',
    'SCONE',
    'SCOPE',
    'SCORE',
    'SCORN',
    'SCOUR',
    'SCOUT',
    'SCOWL',
    'SCRAM',
    'SCRAP',
    'SCRUB',
    'SCRUM',
    'SEDAN',
    'SEEDY',
    'TALLY',
    'TALON',
    'TANGY',
    'TAPER',
    'TAPIR',
    'TARDY',
    'TASTE',
    'TASTY',
    'TAUNT',
    'TAUPE',
    'TAWNY',
    'TEACH',
    'TEARY',
    'TEASE',
    'TEETH',
    'TEMPO',
    'TENOR',
    'TENTH',
    'TEPID',
    'TERSE',
    'THANK',
    'THEIR',
    'THEME',
    'THERE',
    'THREW',
    'THROB',
    'THROW',
    'UNDID',
    'UNDUE',
    'UNFED',
    'UNFIT',
    'UNIFY',
    'UNION',
    'UNITE',
    'UNLIT',
    'UNMET',
    'UNTIE',
    'UNTIL',
    'UNZIP',
    'UPPER',
    'UPSET',
    'URBAN',
    'USAGE',
    'USHER',
    'USING',
    'USUAL',
    'USURP',
    'UTTER',
    'UVULA',
    'VAGUE',
    'VALET',
    'VALID',
    'VALUE',
    'VAPID',
    'VAULT',
    'VENOM',
    'VERGE',
    'VERSE',
    'VERVE',
    'VIDEO',
    'VIGOR',
    'VILLA',
    'VINYL',
    'VIOLA',
    'VIRAL',
    'VISOR',
    'VITAL',
    'VIVID',
    'VIXEN',
    'VODKA',
    'VOICE',
    'VOILA',
    'VOTER',
    'VOUCH',
    'VYING',
    'WACKY',
    'WAFER',
    'WAGON',
    'WALTZ',
    'WASTE',
    'WATCH',
    'WATER',
    'WEARY',
    'WEDGE',
    'WEEDY',
    'WEIRD',
    'WHACK',
    'WHALE',
    'WHEAT',
    'WHEEL',
    'WHELP',
    'WHERE',
    'WHICH',
    'WHIFF',
    'WHILE',
    'WHINE',
    'WHINY',
    'WHIRL',
    'WHISK',
    'WHOLE',
    'WHOOP',
    'WHOSE',
    'WIDEN',
    'WIDTH',
    'WINCE',
    'WINDY',
    'WITCH',
    'WITTY',
    'YACHT',
    'YEARN',
    'YEAST',
    'YIELD',
    'YOUNG',
    'YOUTH',
    'ZEBRA',
    'ZESTY',
  ];

  String _solution = '';
  // number of guesses
  int _maxRows = 6;
  // length of the word
  int _wordLen = 5;

  // place to store the guesses
  List<String> _guesses = <String>[];
  String _currentInput = '';
  String? _message;
  bool _gameOver = false;

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Shuffle the word list and pick the first word as the solution
    _wordList.shuffle();
    _solution = _wordList[0];
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged(String value) {
    String upper = value.toUpperCase();

    if (upper.length > _wordLen) {
      upper = upper.substring(0, _wordLen);
    }

    setState(() {
      // changing the characters to upper case
      _currentInput = upper;
      _message = null;
    });
  }

  bool _isValidGuess(String guess) {
    // removes the spaces at the end
    guess = guess.trim();

    // Must be 5 letters
    if (guess.length != _wordLen) {
      return false;
    }

    // reject all same characters words
    bool allSame = true;
    for (int i = 0; i < guess.length; i++) {
      if (guess[i] != guess[0]) {
        allSame = false;
        break;
      }
    }

    // blocks all same character guesses
    if (allSame) {
      return false;
    }

    // the word guessed must be in the word list
    for (int i = 0; i < _wordList.length; i++) {
      if (_wordList[i] == guess) {
        return true;
      }
    }
    // guess not in the list
    return false;
  }

  // 0 = grey, 1 = yellow, 2 = green
  List<int> _evaluate(String guess, String solution) {
    List<int> result = <int>[0, 0, 0, 0, 0];
    guess = guess.toUpperCase();
    solution = solution.toUpperCase();

    List<String> guessChars = guess.split('');
    List<String> solutionChars = solution.split('');

    // count of each letter in solution(excluding greens)
    Map<String, int> letterCount = {};

    // First pass: mark greens
    for (int i = 0; i < _wordLen; i++) {
      String solLetter = solutionChars[i];
      String guessLetter = guessChars[i];

      if (guessLetter == solLetter) {
        result[i] = 2; //green
      } else {
        // only count letter not already matched
        if (letterCount.containsKey(solLetter)) {
          letterCount[solLetter] = letterCount[solLetter]! + 1;
        } else {
          letterCount[solLetter] = 1;
        }
      }
    }

    // second pass: mark yellows
    for (int i = 0; i < _wordLen; i++) {
      if (result[i] == 0) {
        String letter = guessChars[i];
        if (letterCount.containsKey(letter) && letterCount[letter]! > 0) {
          result[i] = 1; //yellow
          letterCount[letter] = letterCount[letter]! - 1;
        }
      }
    }

    return result;
  }

  void _submitGuess() {
    if (_gameOver) return;

    String guess = _currentInput;

    // checking to see if this a valid guess
    if (!_isValidGuess(guess)) {
      setState(() {
        _message = "Enter a valid word!";
      });
      return;
    }
    // checking to see if the input is longer than what is allowed
    if (_guesses.length >= _maxRows) {
      return;
    }
    setState(() {
      _guesses.add(guess);
      _currentInput = '';
      _controller.clear();
      _message = null;
    });

    // End conditons: win or out of guesses
    if (guess == _solution) {
      setState(() {
        _gameOver = true;
        _message = "You win! Press Back to play again.";
      });
    } else if (_guesses.length == _maxRows) {
      setState(() {
        _gameOver = true;
        _message = "The word was $_solution. Press Back to try again.";
      });
    }
  }

  Widget _buildTile(String? letter, int? status) {
    Color bg = Colors.black12;
    if (status == 2) {
      bg = Colors.green;
    } else if (status == 1) {
      bg = Colors.amber;
    } else if (status == 0) {
      bg = Colors.grey;
    }

    String text = (letter ?? '').toUpperCase();

    return Container(
      width: 48,
      height: 48,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black26),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildRow(int rowIndex) {
    List<Widget> tiles = <Widget>[];

    if (rowIndex < _guesses.length) {
      String guess = _guesses[rowIndex];
      List<int> statuses = _evaluate(guess, _solution);
      for (int i = 0; i < _wordLen; i++) {
        tiles.add(_buildTile(guess[i], statuses[i]));
      }
    } else if (rowIndex == _guesses.length) {
      String padded = _currentInput.padRight(_wordLen);
      for (int i = 0; i < _wordLen; i++) {
        String ch = padded[i].trim();
        tiles.add(_buildTile(ch.isEmpty ? null : ch, null));
      }
    } else {
      for (int i = 0; i < _wordLen; i++) {
        tiles.add(_buildTile(null, null));
      }
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: tiles);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Knockoff Wordle")),
      body: new Center(
        child: new Padding(
          padding: EdgeInsets.all(12),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // build game board
              Column(children: List.generate(_maxRows, (i) => _buildRow(i))),
              SizedBox(height: 20),

              // text input
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 280),
                child: TextField(
                  enabled: !_gameOver,
                  controller: _controller,
                  onChanged: _onTextChanged,
                  onSubmitted: (String _) => _submitGuess(),
                  maxLength: _wordLen,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: _gameOver
                        ? 'Game over - press Back'
                        : 'Type a guess, 5 letter word',
                    counterText: '',
                  ),
                ),
              ),
              SizedBox(height: 10),

              // feedback message
              if (_message != null)
                Text(
                  _message!,
                  style: TextStyle(
                    color: _gameOver ? Colors.green : Colors.red,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 10),

              // buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: _gameOver
                        ? null
                        : () {
                            setState(() {
                              _currentInput = '';
                              _controller.clear();
                              _message = null;
                            });
                          },
                    child: Text('Clear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

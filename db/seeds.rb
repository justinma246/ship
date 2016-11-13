# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: 'Barry Allen', provider: 'Facebook', uid: '9152821', age: 23,
 gender: 'Male', interested_in: 'Female', bio: 'My name is Barry Allen and I am the fastest man alive. I am a forensic scientist for the CCPD at day, but at night I save this city from bad guys with superpowers. I am the flash', ships: 0, picture: 'http://cdn.bleedingcool.net/wp-content/uploads/2013/09/Screen-Shot-2013-09-09-at-23.01.34.png'

User.create name: 'Wonder Woman', provider: 'Facebook', uid: '9152822', age: 46,
 gender: 'Female', interested_in: 'Male', bio: 'I am a strong, independent woman who is looking for a man that can deal with me. Prefer good financial status. I am Supermans kryptonite!', ships: 0, picture: 'https://pmcvariety.files.wordpress.com/2013/06/wonder-woman.jpg'

User.create name: 'Joseph Wei', provider: 'Facebook', uid: '9152823', age: 21,
 gender: 'Male', interested_in: 'Female', bio: 'I am the current president of Cal Badminton and the star of Joseph Wei Magazine', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/12369026_10203844569555042_317580205849887025_n.jpg?oh=0e249083324373cbbcc81d6fcda67abd&oe=58D15B43'

 User.create name: 'Ishan Shah', provider: 'Facebook', uid: '9152824', age: 22,
 gender: 'Male', interested_in: 'Female', bio: 'I am the past president of Cal Badminton and a future doctor.', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/14034904_10209595056260830_1188333922917391655_n.jpg?oh=c895168efe9736a5344df459369baff1&oe=58BE8057'

 User.create name: 'Junyi Zheng', provider: 'Facebook', uid: '9152825', age: 20,
 gender: 'Female', interested_in: 'Male', bio: 'I am a dancer and the roommate of Irene Dea', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/33990_1504211890949_4429916_n.jpg?oh=b633666b4ea7d7d017f5b16d83efd379&oe=588B1B3D'

  User.create name: 'Luke Chong', provider: 'Facebook', uid: '9152826', age: 29,
 gender: 'Male', interested_in: 'Female', bio: 'I am an Aussie with a sick accent. Im also 7 feet tall.', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/t31.0-8/14188121_10154328876591071_5280640619206702655_o.jpg'

 User.create name: 'Natasha Hsu', provider: 'Facebook', uid: '9152827', age: 21,
 gender: 'Female', interested_in: 'Male', bio: 'Assertive and independent woman. Be yourself!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/12369231_10153810807806667_419092903838120114_n.jpg?oh=4f0a35135035e684e9e39418f5eb9a4a&oe=58BDA1B9'

 User.create name: 'Austin Liou', provider: 'Facebook', uid: '9152828', age: 22,
 gender: 'Male', interested_in: 'Female', bio: 'The real man. Chef, basketball player, and overall good man', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/t31.0-8/10838220_10206523451748905_6449223185836113552_o.jpg'

 User.create name: 'David Cheng', provider: 'Facebook', uid: '9152829', age: 21,
 gender: 'Male', interested_in: 'Female', bio: 'Strong 61c TA!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/p320x320/14212049_10209032099432640_4093218893671743788_n.jpg?oh=551208466861c255b4983021757f3ba6&oe=58D50823'

User.create name: 'Nanxi Wang', provider: 'Facebook', uid: '9152830', age: 19,
 gender: 'Female', interested_in: 'Male', bio: 'Where am i? What am i doing?', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/p320x320/11219035_872967009442677_2153656188249639584_n.jpg?oh=21278ca6eb5f6d8da7eaa575e6037487&oe=58936A38'

User.create name: 'Adam Liu', provider: 'Facebook', uid: '9152831', age: 19,
 gender: 'Male', interested_in: 'Female', bio: 'Overall cool dude. Lets talk!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/c23.0.320.320/p320x320/11081207_961867253838524_1054123932471705569_n.jpg?oh=579c56ff5e6b81ea7b2348545b41c428&oe=5889A276'

 User.create name: 'Demi Dao', provider: 'Facebook', uid: '9152832', age: 21,
 gender: 'Female', interested_in: 'Male', bio: 'Im down im demi dao!!!!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/p320x320/14102177_1323617374322951_1343658108585114950_n.jpg?oh=6e8c1747a7129e9cccdd9509bff8d8a6&oe=58BE4AED'

  User.create name: 'Alice Liu', provider: 'Facebook', uid: '9152833', age: 21,
 gender: 'Female', interested_in: 'Male', bio: 'Hao wan mai? Taiwanese and sassy', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/l/t1.0-1/p320x320/1497709_10202201886116299_777835848_n.jpg?oh=2376b03e20f8927f700c58d82cd3fe35&oe=588B9354'

 User.create name: 'William Cheung', provider: 'Facebook', uid: '9152834', age: 21,
 gender: 'Male', interested_in: 'Female', bio: 'Badminton player, basketball lover. Go dubs!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/c124.0.320.320/p320x320/12573209_10153822548968468_1215045151335102326_n.jpg?oh=828cfaf02df7f9354b8d695eb3a8db95&oe=58CC6E2B'

 User.create name: 'Christine Yang', provider: 'Facebook', uid: '9152835', age: 19,
 gender: 'Female', interested_in: 'Male', bio: 'Im cooler than you are but lets talk!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/p320x320/14690959_10205869643214997_1267096236267357317_n.jpg?oh=5fbe43d9e9cd5ff6668cc1cac6378c09&oe=58CBDE98'

 User.create name: 'Michael Ligier', provider: 'Facebook', uid: '9152836', age: 19,
 gender: 'Male', interested_in: 'Female', bio: 'Business man, monster man. Halfie!', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/c136.59.488.488/s320x320/13076510_10206836115761316_1093717668098175575_n.jpg?oh=643f1d75c5566760a107ab84b26af5e9&oe=5888043B'

User.create name: 'Chloe Li', provider: 'Facebook', uid: '9152837', age: 19,
 gender: 'Female', interested_in: 'Male', bio: 'Chloe Li magazine and frisbee player', ships: 0, picture: 'https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-1/c143.167.263.263/12295519_10207704323396652_7380941409883626583_n.jpg?oh=f4e32c155c16d7c05ede84be620b2a56&oe=58C4B633'
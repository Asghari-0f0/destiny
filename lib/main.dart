import 'package:flutter/material.dart';

void main() => runApp(Destiny());

class Destiny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class Story {
  final String storyTitle;
  final String choice1;
  final String choice2;
  final int choice1Next;
  final int choice2Next;

  Story({
    required this.storyTitle,
    required this.choice1,
    required this.choice2,
    required this.choice1Next,
    required this.choice2Next,
  });
}

class StoryBrain {
  final List<Story> _storyData = [
    // 0. شروع بازی
    Story(
      storyTitle:
          'خورشید آرام‌آرام پشت کوه‌ها پنهان می‌شود. تو و دوستت متوجه می‌شوید که مسیر اصلی را گم کرده‌اید و درختان بلند جنگل دور و برتان را گرفته‌اند. ناگهان صدای ناله ضعیفی از پشت بوته‌ها به گوش می‌رسد. یک چوچه خرس کوچک و زخمی را می‌بینید که کمک می‌خواهد. کمی آن‌طرف‌تر یک جاده خاکی خلوت نیز به چشم می‌خورد.',
      choice1: 'کمک به چوچه خرس',
      choice2: 'فرار به سمت جاده',
      choice1Next: 1,
      choice2Next: 2,
    ),
    // 1
    Story(
      storyTitle:
          'Pای چوچه خرس در یک تله آهنی صیادان گیر کرده است. دستانت را جلو می‌بری تا تله را باز کنی که ناگهان زمین می‌لرزد! خرس مادر، بزرگ و غول‌پیکر، با چشمانی خشمگین از میان درختان بیرون می‌پرد و با سرعت به سمت شما می‌دوید چون فکر می‌کند می‌خواهید به بچه‌اش آسیب بزنید!',
      choice1: 'ایستادن و باز کردن تله',
      choice2: 'رها کردن خرس و فرار سریع',
      choice1Next: 3,
      choice2Next: 4,
    ),
    // 2
    Story(
      storyTitle:
          'شما به جاده خاکی می‌رسید، اما جاده کاملاً خالی و شب تاریک فرا می‌رسد. سوز سرمای شدیدی می‌وزد و شما سرپناهی ندارید. در همین حین، چراغ‌های یک موتر قدیمی از دور پیدا می‌شود که به سمت شما می‌آید و صدای موتور عجیبی دارد.',
      choice1: 'درخواست کمک از موتر',
      choice2: 'پنهان شدن در بوته‌ها',
      choice1Next: 5,
      choice2Next: 6,
    ),
    // 3
    Story(
      storyTitle:
          'ترس را کنار می‌گذاری و تله را باز می‌کنی. خرس مادر به بالای سرتان می‌رسد، اما وقتی می‌بیند فرزندش آزاد شده، آرام می‌شود. او با مهربانی سرش را تکان می‌دهد و از شما می‌خواهد دنبالش بروید. اما دوستت می‌گوید بهتر است خودمان راه را پیدا کنیم.',
      choice1: 'اعتماد و حرکت پشت خرس',
      choice2: 'خداحافظی و رفتن تنهایی',
      choice1Next: 7,
      choice2Next: 8,
    ),
    // 4
    Story(
      storyTitle:
          'شما با تمام توان می‌دوید و خرس مادر مشغول نجات بچه‌اش می‌شود. حالا شما در یک دشت وسیع پر از مه غلیظ قرار دارید. جلوتر که می‌روید، یک اسب سفید و زیبا را می‌بینید که آرام ایستاده و کمی آن‌طرف‌تر یک کلبه قدیمی تاریک وجود دارد.',
      choice1: 'سوار شدن بر اسب سفید',
      choice2: 'ورود به کلبه قدیمی',
      choice1Next: 9,
      choice2Next: 10,
    ),
    // 5
    Story(
      storyTitle:
          'موتر متوقف می‌شود و راننده مردی عجیب با لباس‌های کثیف است. شما سوار می‌شوید اما او به جای شهر، به سمت یک معدن متروکه می‌رود! شما متوجه می‌شوید گرفتار صیادان غیرقانونی شده‌اید و راه فراری ندارید.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 6
    Story(
      storyTitle:
          'موتر مشکوک صیادان رد می‌شود. بعد از آن، یک طوطی رنگارنگ روی شاخه درخت می‌نشیند و به زبان آدم‌ها می‌گوید: «دنبال من بیایید! راه خروج این‌جاست!» و پرواز می‌کند. کمی جلوتر یک غار تاریک هم دیده می‌شود.',
      choice1: 'دنبال کردن طوطی راهنما',
      choice2: 'ورود به غار برای استراحت',
      choice1Next: 11,
      choice2Next: 12,
    ),
    // 7
    Story(
      storyTitle:
          'خرس مادر راه را باز می‌کند و شما را به یک کلبه چوبی گرم می‌رساند. یک جنگل‌بان مهربان در را باز می‌کند، به شما چای داغ می‌دهد و با بیسیم به خانواده‌هایتان خبر می‌دهد. شما با شجاعت و دوستی نجات پیدا کردید!',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 8
    Story(
      storyTitle:
          'شما تنهایی به راه می‌افتید اما جنگل لحظه به لحظه تاریک‌تر می‌شود. ناگهان به یک دوراهی می‌رسید؛ مسیر راست که صدای خش‌خش وحشتناکی از آن می‌آید و مسیر چپ که کاملاً ساکت و مرموز است.',
      choice1: 'انتخاب مسیر راست (صداها)',
      choice2: 'انتخاب مسیر چپ (سکوت)',
      choice1Next: 13,
      choice2Next: 14,
    ),
    // 9
    Story(
      storyTitle:
          'اسب سفید مهربان اجازه می‌دهد سوارش شوید. او با سرعت باد شروع به دویدن می‌کند، از میان مه غلیظ می‌گذرد و شما دو دوست را دقیقاً پشت دروازه روستایتان پیاده می‌کند! مردم با دیدن شما خوشحال می‌شوند.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 10
    Story(
      storyTitle:
          'شما وارد کلبه می‌شوید، اما سقف چوبی و فرسوده آن ناگهان فرو می‌ریزد و شما درون کلبه زندانی می‌شوید بدون اینکه کسی از جای شما باخبر باشد. طبیعت به ما یاد می‌دهد وارد جاهای فرسوده نشویم.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 11
    Story(
      storyTitle:
          'طوطی شما را از یک مسیر مخفی و زیبا عبور می‌دهد. وسط راه به یک رودخانه آرام می‌رسید که یک قایق چوبی کوچک در کنار آن زنجیر شده است و یک مسیر پیاده‌روی هم به سمت بالای تپه می‌رود.',
      choice1: 'سوار شدن به قایق چوبی',
      choice2: 'بالا رفتن از مسیر تپه',
      choice1Next: 15,
      choice2Next: 16,
    ),
    // 12
    Story(
      storyTitle:
          'غار گرم است اما ناگهان متوجه می‌شوید اینجا لانه یک پلنگ بزرگ است! پلنگ بیدار می‌شود و غرش می‌کند. خوشبختانه یک خروجی در انتهای غار به چشم می‌خورد و راه بازگشت به بیرون غار نیز باز است.',
      choice1: 'فرار از خروجی انتهای غار',
      choice2: 'عقب‌نشینی آهسته به بیرون غار',
      choice1Next: 17,
      choice2Next: 6,
    ),
    // 13
    Story(
      storyTitle:
          'شما به سمت صدا رفتید و ناگهان در محاصره گله‌ای از گرگ‌های گرسنه قرار گرفتید! چشمان درخشان آن‌ها در تاریکی می‌درخشد و شما هیچ وسیله دفاعی ندارید. کاش با خرس‌ها همراه می‌شدید.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 14
    Story(
      storyTitle:
          'مسیر ساکت شما را به لبه یک صخره رساند. در تاریکی پایتان سر می‌خورد و هر دو به داخل یک رودخانه خروشان و سرد پرتاب می‌شوید! جریان آب تند است و شما را با خود به اعماق تاریکی می‌برد.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 15
    Story(
      storyTitle:
          'شما سوار قایق می‌شوید و جریان ملایم آب شما را به جلو می‌برد. پس از مدتی آب رودخانه خروشان‌تر می‌شود و به یک دو راهی آبی می‌رسید؛ یکی به سمت یک آبشار بلند می‌رود و دیگری به سمت یک کانال زیرزمینی تاریک.',
      choice1: 'هدایت قایق به سمت کانال',
      choice2: 'تلاش برای ایستادن در ساحل',
      choice1Next: 18,
      choice2Next: 19,
    ),
    // 16
    Story(
      storyTitle:
          'وقتی به بالای تپه می‌رسید، پیرمردی مهربان با ریش بلند سپید را می‌بینید که مشغول جمع‌آوری گیاهان دارویی است. او به شما لبخند می‌زند و می‌گوید می‌تواند شما را راهنمایی کند، اما ابتدا باید به او در حمل کیسه‌اش کمک کنید.',
      choice1: 'کمک به پیرمرد مهربان',
      choice2: 'رد کردن و ادامه مسیر تنهایی',
      choice1Next: 20,
      choice2Next: 21,
    ),
    // 17
    Story(
      storyTitle:
          'شما از غار بیرون می‌دوید و خود را بالای یک دره بزرگ می‌بینید. یک پل چوبی معلق و قدیمی روی دره کشیده شده است و یک مسیر شیب‌دار سنگی هم به سمت پایین دره وجود دارد.',
      choice1: 'عبور از روی پل معلق چوبی',
      choice2: 'حرکت از مسیر سنگی به پایین',
      choice1Next: 22,
      choice2Next: 23,
    ),
    // 18
    Story(
      storyTitle:
          'قایق وارد کانال زیرزمینی می‌شود و همه جا تاریک مطلق است. ناگهان سقف کانال کوتاه‌تر می‌شود و صدای برخورد آب شدیدتر به گوش می‌رسد. دریچه خروجی نورانی در جلو دیده می‌شود اما جریان آب بسیار سریع است.',
      choice1: 'نشستن کف قایق و صبر کردن',
      choice2: 'پریدن به داخل آب و شنا کردن',
      choice1Next: 24,
      choice2Next: 25,
    ),
    // 19
    Story(
      storyTitle:
          'شما با موفقیت قایق را به کنار صخره‌ها می‌کشانید و پیاده می‌شوید. در آنجا یک جاده آسفالت قدیمی پیدا می‌کنید که به ایستگاه اتوبوس روستای شما ختم می‌شود. شما به سلامت و با تکیه بر عقل خود به خانه برگشتید.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 20
    Story(
      storyTitle:
          'کیسه پیرمرد را برمی‌دارید. او شادمان شده و شما را به کلبه پنهانش در پشت تپه دعوت می‌کند. پیرمرد یک محیط‌بان بازنشسته است؛ او با تلفن همراهش با خانواده شما تماس می‌گیرد و برایتان غذای لذیذی آماده می‌کند.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 21
    Story(
      storyTitle:
          'شما پیرمرد را رها می‌کنید و جلو می‌روید. تاریکی شدیدتر می‌شود و راه را گم می‌کنید. ناگهان در یک باتلاق عمیق جنگلی گیر می‌افتید و هر چه بیشتر حرکت می‌کنید، بیشتر فرو می‌روید. بدون کمک کار تمام است.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 22
    Story(
      storyTitle:
          'در حال عبور از پل هستید که تخته‌های چوبی شروع به شکستن می‌کنند! شما باید سریع تصمیم بگیرید: طنابی که از درخت آویزان است را بگیرید یا با تمام توان به سمت انتهای پل پرش کنید؟',
      choice1: 'گرفتن طناب آویزان با دست',
      choice2: 'پرش بلند به سمت انتهای پل',
      choice1Next: 26,
      choice2Next: 27,
    ),
    // 23
    Story(
      storyTitle:
          'شما به سلامت از مسیر سنگی پایین می‌روید و در کف دره با یک دهکده مخفی از بومیان مهربان روبرو می‌شوید. آن‌ها به گرمی از شما استقبال می‌کنند اما می‌گویند دو مسیر برای خروج وجود دارد: جاده کوهستانی سرسخت یا غار آبی.',
      choice1: 'انتخاب جاده کوهستانی بلند',
      choice2: 'انتخاب غار آبی مهیج',
      choice1Next: 28,
      choice2Next: 29,
    ),
    // 24
    Story(
      storyTitle:
          'شما کف قایق دراز می‌کشید و قایق بدون برخورد با سقف از کانال خارج شده و به یک دریاچه بزرگ و آرام در کنار پارک ساحلی شهرتان می‌رسد. نگهبانان پارک شما را می‌بینند و نجات پیدا می‌کنید!',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 25
    Story(
      storyTitle:
          'پریدن درون آب تاریک و خروشان اشتباه بزرگی بود. جریان تند آب شما را به صخره‌های زیرزمینی می‌کوبد و جراحت شدیدی برمی‌دارید. در طبیعت هرگز نباید بدون جلیقه به آب‌های ناشناخته پرید.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 26
    Story(
      storyTitle:
          'شما طناب را می‌گیرید و مثل یک قهرمان به آن‌سوی دره تاب می‌خورید. در آنجا با یک گروه از کوهنوردان حرفه‌ای روبرو می‌شوید. آن‌ها به شما غذا و لباس گرم می‌دهند و با موتر شاسی‌بلند شما را به خانه می‌رسانند.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 27
    Story(
      storyTitle:
          'شما پرش کردید اما لبه چوبی پل دوام نیاورد و با تخته‌ها به قعر دره عمیق سقوط کردید. ماجراجویی بدون بررسی استحکام مسیرها عواقب سختی به همراه دارد.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
    // 28
    Story(
      storyTitle:
          'شما صعود از کوه را آغاز می‌کنید. هوا بسیار سرد و اکسیژن کمتر می‌شود. در میان راه به یک پناهگاه سنگی کوچک می‌رسید که در داخل آن مقداری هیزم خشک و یک نقشه قدیمی کوهنوردی قرار دارد.',
      choice1: 'روشن کردن آتش و استراحت',
      choice2: 'مطالعه نقشه و حرکت سریع',
      choice1Next: 30,
      choice2Next: 31,
    ),
// 29
    Story(
      storyTitle:
          'شما با قایق دست‌ساز بومیان وارد غار آبی می‌شوید. قندیل‌های یخی زیبایی از سقف آویزان است. جلوتر به یک دو راهی می‌رسید که یکی آبشاری کم‌ارتفاع دارد و دیگری یک خروجی باریک پر از سنگ‌های تیز.',
      choice1: 'عبور از آبشار کم‌ارتفاع',
      choice2: 'رفتن از بین سنگ‌های تیز',
      choice1Next: 32,
      choice2Next: 33,
    ),
// 30
    Story(
      storyTitle:
          'آتش گرمی روشن می‌کنید. گروه امداد و نجات کوهستان که دود آتش شما را از دور دیده‌اند، با هلیکوپتر به سمت پناهگاه می‌آیند. شما با صبر و هوشمندی خود و دوستتان را از سرمای کشنده نجات دادید.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 31
    Story(
      storyTitle:
          'بدن شما به دلیل سرمای شدید و خستگی مفرط دیگر توان حرکت ندارد. در میان طوفان برف ناگهانی کوهستان، توان خود را از دست می‌دهید و روی زمین می‌افتید. کوهستان همیشه نیاز به استراحت و تجهیزات دارد.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 32
    Story(
      storyTitle:
          'قایق به آرامی از آبشار کوچک سرازیر می‌شود و وارد یک دشت باز سرسبز در نزدیکی جاده اصلی شهر می‌شود. یک کامیون حمل میوه شما را سوار می‌کند و به خانه برمی‌گرداند. یک پایان فوق‌العاده!',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 33
    Story(
      storyTitle:
          'قایق شما به سنگ‌های تیز برخورد کرده و سوراخ می‌شود. آب به سرعت وارد قایق شده و شما در اعماق تاریک غار غرق می‌شوید. در مسیرهای آبی همیشه باید ایمن‌ترین راه را انتخاب کرد.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 34
    Story(
      storyTitle:
          'به یک صخره بسیار بلند می‌رسید که یک عقاب طلایی بزرگ روی آن لانه ساخته است. عقاب یک کلید طلایی در نوک خود دارد. یک طناب نجات قدیمی هم از بالای صخره آویزان است.',
      choice1: 'تلاش برای گرفتن کلید طلایی',
      choice2: 'بالا رفتن از طناب قدیمی',
      choice1Next: 36,
      choice2Next: 37,
    ),
// 35
    Story(
      storyTitle:
          'به یک چشمه درخشان با آب فیروزه‌ای می‌رسید. حیوانی شبیه به یک گوزن با شاخ‌های درخشان از آب چشمه می‌نوشد. او به شما نگاه می‌کند و سرش را به سمت یک مسیر مخفی پشت درختان تکان می‌دهد.',
      choice1: 'نوشیدن آب چشمه و تعقیب گوزن',
      choice2: 'نادیده گرفتن گوزن و ادامه مستقیم',
      choice1Next: 38,
      choice2Next: 39,
    ),
// 36
    Story(
      storyTitle:
          'عقاب کلید را به شما می‌دهد. با این کلید، صندوقچه‌ای قدیمی در پای صخره را باز می‌کنید که داخل آن یک بیسیم ماهواره‌ای سالم قرار دارد! با اورژانس تماس می‌گیرید و آنها موقعیت شما را پیدا می‌کنند.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 37
    Story(
      storyTitle:
          'در اواسط صخره، طناب پوسیده قدیمی تاب نمی‌آورد و پاره می‌شود. شما به پایین سقوط می‌کنید. تکیه بر طناب‌های فرسوده در طبیعت کاری بسیار خطرناک و بی‌پروا است.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 38
    Story(
      storyTitle:
          'آت گوارا شما را پرانرژی می‌کند. گوزن شما را از مسیر مخفی عبور داده و مستقیماً به ویلای ییلاقی پدر بزرگت در حاشیه جنگل می‌رساند. یک پایان جادویی و شاد برای این ماجراجویی بزرگ!',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
// 39
    Story(
      storyTitle:
          'مسیر مستقیم شما را به یک منطقه‌ی ممنوعه و پر از گیاهان سمی هدایت می‌کند. بر اثر استنشاق بوی گیاهان بیهوش می‌شوید و راه نجات را از دست می‌دهید. نشناختن نشانه‌های طبیعت خطرناک است.',
      choice1: 'شروع مجدد داستان',
      choice2: '',
      choice1Next: 0,
      choice2Next: 0,
    ),
  ];

  int _storyNumber = 0;

  String getStoryTitle() => _storyData[_storyNumber].storyTitle;

  String getChoice1() => _storyData[_storyNumber].choice1;

  String getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choiceNumber) {
    final currentStory = _storyData[_storyNumber];
    final nextIndex =
        choiceNumber == 1 ? currentStory.choice1Next : currentStory.choice2Next;

    if (nextIndex >= 0 && nextIndex < _storyData.length) {
      _storyNumber = nextIndex;
    } else {
      _storyNumber = 0;
    }
  }

  bool buttonShouldBeVisible() => _storyNumber < _storyData.length - 1;
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final StoryBrain storyBrain = StoryBrain();

  void _handleChoice(int choiceNumber) {
    setState(() {
      storyBrain.nextStory(choiceNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00EBEF), //
              Color(0xFF00BFFF), //
              Color(0xFF0036FA),
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStoryTitle(),
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () => _handleChoice(1),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                  child: Text(
                    storyBrain.getChoice1(),
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () => _handleChoice(2),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                    child: Text(
                      storyBrain.getChoice2(),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

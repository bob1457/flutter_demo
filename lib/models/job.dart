// ignore: empty_constructor_bodies
// ignore_for_file: empty_constructor_bodies

class Job {
  String company;
  String logoUrl;
  bool isBookMarked;
  String title;
  String location;
  String time;
  List<String> requirements;

  Job(this.company, this.logoUrl, this.isBookMarked, this.title, this.location,
      this.time, this.requirements);

  // Mock data
  static List<Job> listedJobs() {
    return [
      Job(
        "Google LLC",
        "assets/images/Google__G__Logo.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Intel Systems",
        "assets/images/intel.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Redwood Capitals",
        "assets/images/Google__G__Logo.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Apple Inc.",
        "assets/images/apple.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Amazon",
        "assets/images/amazon.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Facebook LLC",
        "assets/images/facebook.png",
        true,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Sun Micro Inc.",
        "assets/images/Google__G__Logo.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
      Job(
        "Microsoft Inc",
        "assets/images/Google__G__Logo.png",
        false,
        "Product Designer",
        "4790 Marpole Avenue, San Jose\nCAm USA",
        "Full time",
        [
          "Create and design consumer digital products",
          "with innovative pattern, integrating exsting features and fucntions",
          "from other productionline"
        ],
      ),
    ];
  }
}

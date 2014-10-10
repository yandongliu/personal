Java version of GBDT
======
contact: yandong@

# Motivation
   * cleaner, better organized code
   * written in Java might be easier to work with other computing frameworks (Hadoop, Spark, etc)

# Objective:
   * 100% compatible with original GBDT

# Stats
   * 21 files
   * 2956 lines of code 

# Currently available:
   * GBDT (regression loss)
   * GBRank (pairwise loss)
   * Model applier

# TODO
   * Categorical features
   * Other learners (sdcg, random forest, etc.)
   * Exclude features in config file

# Usage:
   * java JBDT config.txt
   * Note if your sampling rating isn't 1.0 then results won't be exactly the same with GBDT since GBDT uses a fixed seed for random generator

# Output of JBDT
   * ![](https://git.corp.yahoo.com/yandong/jbdt/raw/master/misc/jbdt.png)

# Output of GBDT
   * ![](https://git.corp.yahoo.com/yandong/jbdt/raw/master/misc/gbdt.png)

# The Basics of Code Ocean

> Before publishing, please either edit this template file to provide guidance on your submission, or delete it.

## Code, Data, Results
The three elements of an algorithm are code, data and results. Data goes in one end, the code does its thing, and out come results.

### How do these elements map to the file system?

```
/ [root]
├── code
│   ├── diversifymetric.m
│   ├── README.md, readme.txt
│   ├── knn.m
│   └── Train_SGD_SVM.m
    └── jsgd_train.mexa64


├── data
│   ├── usps_dbm_lastlayer.mat
│   ├─
│   └── 
└── results
    └── 
```

- **Code** goes in the *Code* pane. Your code will be copied to the `/code` directory at the beginning of each run.
- **Data** goes in the *Data* pane. Your data will be copied to the `/data` directory at the beginning of each run.
- **Results** include any plots, figures, and resulting data, which should be saved in the `/results` directory. At the end of the run, these files will appear in the *Results* pane where you can view and download them.

> Note that the entire filesystem is ephemeral: only files saved in `/results` will survive the end of the run.

## Environment and Dependencies

Click the gear icon next to *Run* to find the *Run Environment* screen, where you can choose a base environment and customize it by installing dependencies.

### Base Environment

Choose a different base environment to access another language version (e.g. Python 2.7 vs. 3.4, MATLAB 2013a vs. 2016b), or frameworks whose installation is more involved (e.g. OpenCV or ROS), or utilize a GPU (e.g. TensorFlow or Torch).

### Dependencies

If your code requires additional libraries or packages to run, use [APT (the operating system package manager)](https://help.codeocean.com/faq/what-is-apt-get), or one of the available language-specific package managers, to add them. The changes you make will be applied the next time your algorithm runs.

![Installing dependencies](https://daks2k3a4ib2z.cloudfront.net/5822de40169a2c900985fd0e/58e51004e91a198c1c53abc5_NYC-dependencies.gif)

#### Setup Script

 Use the Setup Script (which is just a glorified shell script) to further customize the environment following package installation - most often to manually download and build dependencies not available through a package repository.

> For languages that lack a package manager, such as MATLAB and C/C++, you can use the Setup Script to download, extract, and install dependencies.

### Environment Caching

The next time you run your algorithm after making changes to any part of the *Run Environment*, a custom environment will be built and cached for reuse in future runs.

> **When you publish an algorithm, its custom environment will be preserved with it, guaranteeing future runs will reuse the same exact environment, thereby ensuring computational reproducibility.**

## Troubleshooting

We try our best to make adapting your code to Code Ocean as painless as possible, but chances are you will hit a bump or two in the road (unless you're used to a Linux environment). Don't despair! Find us on live chat, open a ticket, or, if you prefer, shoot a quick email to [support@codeocean.com](mailto:support@codeocean.com). And while you're at it, why not check our [FAQ](https://help.codeocean.com/faq)?

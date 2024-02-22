## 💾 Fundamentals of Data Transformation

👋 Hello there and welcome! This is the repo for `Fundamentals of Data Transformation`. The full course is available on the [LinkedIn Learning][lil-course-url] platform.

I'm Matt, your course instructor! I'll be here to guide you on your data transformation journey. First, I'll start with an overview of the course and the exercise files. Then, we'll dive into the course content.

If you'd like to learn more about me, feel free to take a look at the following links:

- [Blog](https://mattpalmer.io)
- [Newsletter](https://newsletter.casewhen.xyz)
- [LinkedIn](https://www.linkedin.com/in/matt-palmer)
- [X](https://x.com/mattppal)

Otherwise, on to the course!

## 👨‍🎓 Overview

Our goal is to prepare you with the tools you need to transform data effectively and efficiently, using SQL or Python. We believe that _learning_ takes place through _doing_, so our focus will be on tangible examples and exercises, not rote memorization.

In my experience as a product analyst, analytics engineer, and data engineer, I've found it's a mix of curiosity, passion, and technical aptitude that leads to career-defining projects and opportunities. While we might be able to generate excitement through our course _you'll_ have to bring the enthusiasm.

If you're looking for another certification or a line on your resume, this course might not be for you, _but_ if you're looking to _learn_ and _grow_, you're in the right place! Don't worry about remembering every little tidbit as the videos play— this repo contains _every_ line of code in the course _and_ a dataset you'll be able to play with long after you've finished. Instead, focus on the concepts and ideas we discuss, ask yourself questions along the way, and take time to play with datasets.

As we'll discuss in the next section, this course is built on Jupyter, making it exceedingly easy to run your _own_ queries and experiment with the data.

## 📚 Course Structure

This course is built around the asset I find _most_ helpful for learning— hands on experience. That means rather than walking through a structured guide of basic data transformations, we'll start from a question or a hypothesis, e.g. _"Which National Parks have the most campgrounds?"_ or _"Which number is most often drawn in the first pick of a Powerball lottery?"_ and walk through practical ways of answering those questions.

It's our belief this lends itself to the most "natural" forms of data transformation and the most effective forms of learning. This is largely dependent on the _sources_ and _destinations_ your working with, in the case of a data engineer, or the _questions_ you're asking, in the case of a data analyst.

You might note that a small tidbit is left out or there's a concept you feel should be covered more thoroughly. That's okay! We're not trying to cover _everything_ in this course, but rather provide a solid foundation for you to build upon. The truth is, even professionals use Google, documentation, and Stack Overflow to solve problems. So if you come across something that seems like an impass, check out the corresponding documentation, reach out on GitHub for help, _or_ try to figure it out on your own! That's how we learn.

## 📇 Repo

This repository contains folders denoting each section of the course. You can find them in the `./course` folder. Each section has a folder:
- `01-intro`
- `02-duckdb`
- `03-pandas`
- `04-polars`
- `05-appendix`

For each folder, there will be two sub-folders: `exercises` & `lessons`.
- Code in the videos will be contained within the `exercises` folders.
- To test your knowledge, you can edit code in the `lessons` folders.

## 🤖 Getting Started

This repo has been designed for use with [GitHub Codespaces](https://docs.github.com/codespaces/overview). Codespaces creates an IDE in your browser running on a small virtual machine. Using Codespaces, **no setup or configuration is necessary to run code!** Simply navigate to the file you'd like to interact with and start running cells!

To get started:
- Click the green `Code` button at the top of this page.
- Click `Codespaces`.
    - If you're returning, your existing codespaces will be listed here. Click the ellipsis (`...`) and select "Open in Browser" to resume your learning.
    - If getting started: Select the `+` icon.
    - Click `New` in the upper right to create a new codespace. 🎉

Once your Codespace is loaded, you'll be able to traverse the repo as if you were editing locally. You should be able to interact with notebooks _the same as if you were using Jupyter_. When executing a cell for the first time, you might be prompted to choose a kernel— simply select the default Python interpreter. 🙂

Of course, if you know what you're doing and would rather not use Codespaces, feel free to clone the repo to your machine, create a virtual environment, and use the `requirements.txt` file to install the necessary packages.

- Please note that we will not provide support for problems associated with local development. 🙏

### 🏃‍♂️ Running Code

For a detailed explanation of how VS Code Jupyter Notebooks work, please see the following guide.

This course also uses JupySQL, a Jupyter Notebook extension that enables in-line SQL. If you take a look at a [lesson](/course/02-duckdb/lessons/01-query-basics-columnar-ops.ipynb), you'll notice the following configuration at the top of the notebook:

```python
import duckdb

# Load SQL extension
%load_ext sql

# Initialize 🦆 DuckDB connection
conn = duckdb.connect()

# Import database
%sql conn --alias duckdb
%sql IMPORT DATABASE '../../data/nps';
```

This code loads the SQL extension, imports DuckDB and configures your environment to begin executing code, right away. It then imports the National Parks dataset to your notebook's memory, so that you can query it with DuckDB. Pretty neat!

To run _more_ SQL, just create a new cell and add `%%sql` at the top (that's for multi-line) or `%sql` if you just need to run a single line. To load the data with Pandas or Polars, you'll need the following commands:

```python
# pandas 🐼
df = pd.read_parquet('../../data/nps/nps_public_data_[TABLE].parquet')

# polars 🐻‍❄️
df = pl.read_parquet('./../data/nps/nps_public_data_[TABLE].parquet')
```

## 🏞️ The Dataset

For this course, we're using a dataset based on the United States National Parks Service (NPS) API. The [data](/course/data) provides details on parks, campgrounds, and ancillary park information in the US. In addition to national parks, it also includes details on trails, national forests, and other outdoor destinations across the country.

To learn more about the API, you can find the documentation [here](https://www.nps.gov/subjects/developer/api-documentation.htm). Additionally, we'd like to extend a big thank you to @tonymet, who ported the API to a [BigQuery public dataset](https://github.com/tonymet/nps-public-data), which allowed us to create the database for this course.

We have it as a to-do to create an entity relationship diagram (ERD) for the dataset, which will help viewers understand how the data ties together. If one is not yet published and you'd like to take on the task, feel free to join the discussion in the Issues for this repo.

[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/
[lil-thumbnail-url]: http://

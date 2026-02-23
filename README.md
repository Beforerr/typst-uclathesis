# typst-uclathesis

A [Typst](https://typst.app/) template for UCLA theses and dissertations, based on the [UCLA Thesis and Dissertation Filing Requirements](https://grad.ucla.edu/academics/graduate-study/thesis-and-dissertation-filing-requirements/) (Updated October 2023).

## Quick Start

```typst
#import "lib.typ": uclathesis

#show: uclathesis.with(
  title: [My Dissertation Title],
  author: "Your Name",
  degree: "Doctor of Philosophy",
  major: "Your Major",
  year: 2024,
  doc-type: "dissertation",       // or "thesis" for master's
  committee-chair: "Chair Name",
  committee-members: (
    "Member One",
    "Member Two",
  ),
  abstract: [Your abstract text here.],
  bibliography: bibliography("refs.bib"),
)

= Introduction

Your chapter content here...
```

See [`example/main.typ`](example/main.typ) for a complete example.

## Template Options

| Parameter            | Type         | Description                                                              |
| -------------------- | ------------ | ------------------------------------------------------------------------ |
| `title`              | content      | Thesis/dissertation title                                                |
| `author`             | str          | Author's official name as registered with UCLA                           |
| `degree`             | str          | Full degree name (e.g., `"Doctor of Philosophy"`, `"Master of Science"`) |
| `major`              | str          | Official major name as approved by the Academic Senate                   |
| `year`               | int          | Year the degree is awarded                                               |
| `doc-type`           | str          | `"dissertation"` (doctoral) or `"thesis"` (master's)                     |
| `committee-chair`    | str          | Committee chair's name                                                   |
| `committee-co-chair` | str          | Committee co-chair's name (optional)                                     |
| `committee-members`  | array        | Array of other committee member name strings                             |
| `abstract`           | content      | Abstract text                                                            |
| `dedication`         | content      | Dedication page content (optional)                                       |
| `acknowledgments`    | content      | Acknowledgments content (optional)                                       |
| `preface`            | content      | Preface content (optional, alternative to acknowledgments)               |
| `vita`               | content      | Vita/biographical sketch (required for doctoral, max 2 pages)            |
| `copyright`          | bool         | `true` for copyright page, `false` for blank page (default: `true`)      |
| `bibliography`       | bibliography | Bibliography source                                                      |

## Formatting Details

The template implements the following UCLA requirements:

- **Margins**: 1" on all sides
- **Page numbers**: Centered, 0.75" from bottom of page
- **Font**: 12pt (New Computer Modern by default)
- **Spacing**: Double-spaced throughout
- **Pagination**: Roman numerals for preliminary pages (starting at ii), Arabic numerals for body text (starting at 1)

### Manuscript Arrangement

The template automatically generates pages in the required order:

1. Title Page
2. Copyright Page (or Blank Page)
3. Abstract
4. Committee Page
5. Dedication (optional)
6. Table of Contents
7. List of Figures (auto-generated if figures exist)
8. List of Tables (auto-generated if tables exist)
9. Acknowledgments (optional)
10. Vita/Biographical Sketch (optional; required for doctoral)
11. Body Text (chapters)
12. Appendices (if any)
13. Bibliography (always last)

## Compiling

```sh
typst compile --root . example/main.typ
```

## Related Projects

- [uclathes](https://github.com/uclathes/uclathes): UCLA Thesis LaTeX style
- [thesis-template-typst](https://github.com/ls1intum/thesis-template-typst): TUM AET thesis typst template
- [typst-uwthesis](https://github.com/yangwenbo99/typst-uwthesis): University of Waterloo thesis typst template

---
id: treesitter-hl-groups
aliases: []
tags: []
---

# Treesitter Highlight-Gruppen für Lua

Eine Übersicht der gängigsten Treesitter-Gruppen in **Lua**  
(damit man gezielt Syntax-Elemente einfärben kann).

---

## 🔹 Variablen & Felder

- `@variable` → normale Variablen (`foo`, `hl`, `my_var`)
- `@variable.builtin` → eingebaute Variablen (`nil`, `true`, `false`)
- `@field` → Felder in Tabellen (`hl.Foreground`)
- `@property` → Schlüssel in Tabellen (`fg = ...`, `bg = ...`)

---

## 🔹 Funktionen & Methoden

- `@function` → normale Funktionen (`print`, `my_func`)
- `@function.builtin` → eingebaute Funktionen (`pairs`, `ipairs`, `require`)
- `@function.call` → Funktionsaufrufe (`my_func()`)
- `@method` → Methoden (`object:method()`)

---

## 🔹 Schlüsselwörter

- `@keyword` → allgemeine Keywords (`if`, `then`, `end`)
- `@keyword.function` → Funktions-Keywords (`function`)
- `@keyword.return` → `return`
- `@keyword.operator` → logische Operatoren (`and`, `or`, `not`)

---

## 🔹 Konstanten & Literale

- `@constant` → normale Konstanten
- `@constant.builtin` → eingebaute Konstanten (`vim`, `math`, `os`)
- `@string` → Strings (`"hello"`, `'world'`)
- `@string.escape` → Escape-Sequenzen (`"\n"`, `"\t"`)
- `@number` → Zahlen (`42`, `3.14`)

---

## 🔹 Typen

- `@type` → benutzerdefinierte Typen (in Lua eher selten)
- `@type.builtin` → eingebaute Typen (`table`, `string`, `number`)
- `@type.definition` → Typdefinitionen

---

## 🔹 Operatoren & Satzzeichen

- `@operator` → Operatoren (`+`, `-`, `*`, `/`, `..`)
- `@punctuation.delimiter` → Trenner (`=`, `,`, `;`)
- `@punctuation.bracket` → Klammern (`(`, `)`, `{`, `}`, `[`, `]`)
- `@punctuation.special` → Sonderzeichen (selten, z. B. `...`)

---

## 🔹 Kommentare

- `@comment` → normale Kommentare (`-- Kommentar`)
- `@todo` → TODO-Kommentare

---

## 🔹 Sonstige

- `@boolean` → Wahrheitswerte (`true`, `false`)
- `@error` → Syntaxfehler / Parser-Fehler

---

## 📌 Tipp

Um herauszufinden, welche Gruppe etwas hat:

1. Cursor auf das Element setzen
2. `:Inspect` ausführen  
   → zeigt dir die aktive Treesitter-Gruppe.

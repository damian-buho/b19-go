<!--
SPDX-FileCopyrightText: 2026 Damián Búho <damian.buho@proton.me>

SPDX-License-Identifier: MIT
-->

<!-- textlint-disable terminology,common-misspellings -->

# Декларативне встановлення Go-пакетів (go.deps)

- Go-пакети зі списку `go.deps` автоматично встановлюються через `go install` під час збирання.
- Підтримує перевизначення змінних середовища для окремого пакета (наприклад, build tags, прапорці CGO).
- Декларативно: додайте шлях пакета у файл, перезберіть — і інструмент уже доступний в образі.
- Список залежностей споживається й видаляється після встановлення (не успадковується далі).

<!-- textlint-enable -->

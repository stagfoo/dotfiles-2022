gundo() {   git reset HEAD^1 }
gcap() {    git commit -m "$*" }
gnew() { gcap "🪴　feature ░ $@" }
gref() { gcap "🍱　refactor ░ $@" }
gchore() { gcap "🧼　chore ░ $@" }
gfix() { gcap "🐞　fix ░ $@" }
grls() { gcap "🚀　release ░ $@" }
gdoc() { gcap "📚　docs ░ $@" }
gart() { gcap "💽　assets ░ $@" }
grevert() { gcap "↩️　revert ░ $@" }
gtest() { gcap "🤖　test ░ $@" }
gimp() {
    gc -m "🦄　improve ░ $@"
}

this is a test , i m trying to learn github and git 
# 1. Edit the ignore file
nvim ~/.config/.gitignore

# 2. Verify what WOULD be staged before actually staging it
cd ~/.config
git add -A --dry-run
# scroll and confirm gh/, mozilla/, zen/, dconf/, etc. are NOT listed

# 3. Stage and commit for real
git add -A
git commit -m "track full .config"

# 4. Check what branch name the existing remote actually expects
git ls-remote --heads git@github-personal:snietsk6205/dotfiles.git
# -> if it prints refs/heads/main, rename the local branch (next line)
# -> if it prints master, skip the rename and push as master instead

git branch -M main

# 5. Point this repo at the existing GitHub repo and overwrite it
git remote add origin git@github-personal:snietsk6205/dotfiles.git
git push -u origin main --force

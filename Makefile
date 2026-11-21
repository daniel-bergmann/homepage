.PHONY: git

git:
	@printf "Commit message: "; \
	read msg; \
	test -n "$$msg" || { echo "Commit message is required"; exit 1; }; \
	git add -A; \
	git commit -m "$$msg"

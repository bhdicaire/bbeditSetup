CCRED=\033[0;31m
CCEND=\033[0m

.PHONY: build backup restore clean chezmoi help

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build / update mac setup
	 ansible-playbook -vv provisionMac.yml

list: ## List preferences file and historical backup
	@echo
	@echo "BBEdit Preferences File"
	@echo
	@ls -al ~/Library/Containers/com.barebones.bbedit/Data/Library/Preferences/com.barebones.bbedit.plist
	@echo
	@echo "Ancillary preference data"
	@echo
	@ls -al /Users/bhdicaire/Library/Containers/com.barebones.bbedit/Data/Library/BBEdit/
	@echo
	@echo "List historical backup when enabled"
	@echo
# List historical backup when enabled
	@ls "~/Library/Containers/com.barebones.bbedit/ Support/BBEdit Backups/"

download: ## Download Automator Actions and User manual
	curl https://s3.amazonaws.com/BBSW-download/BBEditAutomatorActionsInstaller_14.0.pkg -o ~/Downloads/BBEditAutomatorActionsInstaller_14.0.pkg
	#echo
	curl https://s3.amazonaws.com/BBSW-download/BBEdit_14.0.4_User_Manual.pdf -o "BBEdit manual v14.pdf"

# https://www.barebones.com/support/bbedit/ExpertPreferences.html
expertpref: ## Enable Expert Preferences
	@echo
	@echo "Clippings, Editing and Text Completion"
	@echo
	defaults write com.barebones.bbedit Editor_AutoWordCountSizeThreshold -int 4194304
	defaults write com.barebones.bbedit UseTabKeyAsCompletionTrigger -bool YES
	@echo
	@echo "FTP/SFTP"
	@echo
	defaults write com.barebones.bbedit SSHServerKeepaliveInterval -int 90
	defaults write com.barebones.bbedit SFTPConnectionTimeout -int 20
	@echo
	@echo "Interacting with Other Applications"
	@echo
	defaults write com.barebones.bbedit UseDashForReferenceLookups -bool NO
	@echo
	@echo "Language Support"
	@echo
	defaults write com.barebones.bbedit DefaultLanguageNameForNewDocuments -string "Markdown"
	@echo
	@echo "Projects"
	@echo
	defaults write com.barebones.bbedit AutoRevealSelectedDocumentInProjectList -bool YES
	@echo
	@echo "Reading and Writing Files"
	@echo
	defaults write com.barebones.bbedit WarnMalformedUTF8 -bool YES
	@echo
	@echo "Text Search and Replace"
	@echo
	defaults write com.barebones.bbedit FindDialog_UsesFindScrap -bool NO
	defaults write com.barebones.bbedit Editor_AlwaysOpenQuickFind -bool YES
	defaults write com.barebones.bbedit ReportReplaceAllResults -bool YES
	defaults write com.barebones.bbedit FindAndReplaceHistorySize -int 24
	@echo
	@echo "Windows and UI Tweaking"
	@echo
	defaults write com.barebones.bbedit NSRecentDocumentsLimit_Images -int 0
	@echo
	@echo "Miscellaneous"
	@echo
	defaults write com.barebones.bbedit AlwaysShowAnnunciatorForNotFound -bool YES
	@echo "**********************************************"
	@echo "Expert preferences are updated"
	@echo "**********************************************"

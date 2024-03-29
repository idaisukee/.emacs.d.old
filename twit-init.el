(require 'twittering-mode)

(add-hook 'twittering-mode-hook
	  '(lambda ()
	     (define-key twittering-mode-map (kbd "f") 'twittering-favorite)))

(setq twittering-status-format "%p %S (%s), %C (%@):\n%t\nvia %f\t %L %f \n%d\n---%'")
;; %s - screen_name
;; %S - name
;; %i - profile_image
;; %d - description
;; %l - location
;; %L - " [location]"
;; %u - url
;; %j - user.id
;; %p - protected?
;; %c - created_at (raw UTC string)
;; %C{time-format-str} - created_at (formatted with time-format-str)
;; %@ - X seconds ago
;; %t - text
;; %' - truncated
;; %f - source
;; %# - id

(defadvice twittering-update-status-interactive (before delete-other-windows-before-update-status-interactive activate)
  "delete other windows before update status interactive"
  (delete-other-windows))

(setq twittering-use-master-password t)
(setq twittering-timer-interval 300)

(setq twittering-use-ssl t)


(provide 'twit-init)

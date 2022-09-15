function acp {
  param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [String[]] $message
  )
  git add .
  git commit -a -m "$message"
  git push
}
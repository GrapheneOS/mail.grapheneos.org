require ["duplicate", "fileinto", "mailbox"];

if duplicate {
  discard;
}

if header :is "X-Spam" "yes" {
  fileinto :create "Spam";
}

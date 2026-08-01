require ["duplicate", "fileinto", "mailbox"];

if duplicate {
  discard;
  stop;
}

if header :is "X-Spam" "yes" {
  fileinto :create "Spam";
}

require ["fileinto", "mailbox"];

if header :is "X-Spam" "yes" {
    fileinto :create "Spam";
}

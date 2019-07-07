class UserInfoDetails {
  UserInfoDetails(this.providerId, this.uid, this.displayName, this.photoUrl,
      this.email, this.isAnonymous, this.isEmailVerified, this.providerData);
  final String providerId;
  final String uid;
  final String displayName;
  final String photoUrl;
  final String email;
  final bool isAnonymous;
  final bool isEmailVerified;
  final List<ProviderDetails> providerData;
}

class ProviderDetails {
  final String providerId;
  final String uid;
  final String displayName;
  final String photoUrl;
  final String email;
  ProviderDetails(
      this.providerId, this.uid, this.displayName, this.photoUrl, this.email);
}
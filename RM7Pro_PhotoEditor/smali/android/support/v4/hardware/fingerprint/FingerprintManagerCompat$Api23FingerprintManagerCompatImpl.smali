.class Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23FingerprintManagerCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
    .locals 1

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6

    invoke-static {p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    invoke-static {p5}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    move-result-object v4

    move-object v0, p1

    move v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isHardwareDetected(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->isHardwareDetected(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

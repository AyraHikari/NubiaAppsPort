.class public abstract Lcom/loc/ak;
.super Ljava/lang/Object;
.source "EncryptProcessor.java"


# instance fields
.field a:Lcom/loc/ak;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/loc/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ak;->a:Lcom/loc/ak;

    return-void
.end method


# virtual methods
.method protected abstract a([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation
.end method

.method public final b([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ak;->a:Lcom/loc/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ak;->a:Lcom/loc/ak;

    invoke-virtual {v0, p1}, Lcom/loc/ak;->b([B)[B

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/ak;->a([B)[B

    move-result-object v0

    return-object v0
.end method

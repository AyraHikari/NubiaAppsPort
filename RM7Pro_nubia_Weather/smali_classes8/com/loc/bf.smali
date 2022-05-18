.class public final Lcom/loc/bf;
.super Lcom/loc/bk;
.source "EncryptRsaDataStrategy.java"


# instance fields
.field private a:Lcom/loc/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bk;-><init>()V

    new-instance v0, Lcom/loc/an;

    invoke-direct {v0}, Lcom/loc/an;-><init>()V

    iput-object v0, p0, Lcom/loc/bf;->a:Lcom/loc/ak;

    return-void
.end method

.method public constructor <init>(Lcom/loc/bk;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/bk;-><init>(Lcom/loc/bk;)V

    new-instance v0, Lcom/loc/an;

    invoke-direct {v0}, Lcom/loc/an;-><init>()V

    iput-object v0, p0, Lcom/loc/bf;->a:Lcom/loc/ak;

    return-void
.end method


# virtual methods
.method protected final a([B)[B
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

    iget-object v0, p0, Lcom/loc/bf;->a:Lcom/loc/ak;

    invoke-virtual {v0, p1}, Lcom/loc/ak;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/loc/bg;
.super Lcom/loc/bk;
.source "HeaderAddStrategy.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private e:Lcom/loc/ak;

.field private f:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/loc/bk;Lcom/loc/ak;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/loc/bk;-><init>(Lcom/loc/bk;)V

    iput-object p1, p0, Lcom/loc/bg;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/loc/bg;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/bg;->e:Lcom/loc/ak;

    iput-object p5, p0, Lcom/loc/bg;->f:[Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/loc/bg;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bg;->f:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "ofm"

    const-string v3, "gpj"

    invoke-static {v1, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a([B)[B
    .locals 4
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

    invoke-static {p1}, Lcom/loc/u;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/bg;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bg;->e:Lcom/loc/ak;

    invoke-static {v1}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/loc/ak;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/u;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"pinfo\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"els\":["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

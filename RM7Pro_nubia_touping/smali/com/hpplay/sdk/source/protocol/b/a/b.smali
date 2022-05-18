.class public Lcom/hpplay/sdk/source/protocol/b/a/b;
.super Lcom/hpplay/sdk/source/protocol/b/e;
.source "SourceFile"


# instance fields
.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/e;-><init>()V

    .line 18
    const-string v0, "ClientSessionImpl"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->r:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/b/a/a;-><init>(Lcom/hpplay/sdk/source/protocol/b/e;)V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/b;->setClientEvidenceRoutine(Lcom/hpplay/sdk/source/protocol/b/b;)V

    .line 23
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/g;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/b/a/g;-><init>(Lcom/hpplay/sdk/source/protocol/b/e;)V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/b;->setServerEvidenceRoutine(Lcom/hpplay/sdk/source/protocol/b/m;)V

    .line 24
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/q;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/b;->setXRoutine(Lcom/hpplay/sdk/source/protocol/b/p;)V

    .line 25
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/b;->setHashedKeysRoutine(Lcom/hpplay/sdk/source/protocol/b/n;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getSessionKeyHash()[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->l:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hash algorithm \'H\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    iget-object v2, v2, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->l:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/a/b;->l:Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 54
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "ClientSessionImpl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 47
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 51
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

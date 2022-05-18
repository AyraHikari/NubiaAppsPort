.class Lcom/hpplay/sdk/source/protocol/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/b/b;


# instance fields
.field private final a:Lcom/hpplay/sdk/source/protocol/b/e;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/b/e;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/a/a;->a:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 24
    return-void
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    .line 64
    array-length v0, p0

    new-array v1, v0, [B

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 66
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/d;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 45
    iget-object v2, p1, Lcom/hpplay/sdk/source/protocol/b/f;->i:Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/protocol/b/a/a;->a([B[B)[B

    move-result-object v1

    .line 50
    iget-object v2, p2, Lcom/hpplay/sdk/source/protocol/b/d;->a:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 55
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/d;->b:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/d;->c:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/d;->d:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/a/a;->a:Lcom/hpplay/sdk/source/protocol/b/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not locate requested algorithm"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

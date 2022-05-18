.class Lcom/hpplay/sdk/source/protocol/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/b/n;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/o;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/o;->a:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/o;->b:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not locate requested algorithm"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

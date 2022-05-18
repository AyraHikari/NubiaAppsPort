.class Lcom/hpplay/sdk/source/protocol/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/b/m;


# instance fields
.field private final a:Lcom/hpplay/sdk/source/protocol/b/e;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/b/e;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/a/g;->a:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/i;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/i;->a:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 34
    iget-object v1, p2, Lcom/hpplay/sdk/source/protocol/b/i;->b:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/a/g;->a:Lcom/hpplay/sdk/source/protocol/b/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not locate requested algorithm"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

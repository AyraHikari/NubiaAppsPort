.class public Lcom/hpplay/sdk/source/protocol/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/hpplay/sdk/source/protocol/b/h;

.field private b:Lcom/hpplay/sdk/source/protocol/b/f;

.field private c:Lcom/hpplay/sdk/source/protocol/b/p;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/b/f;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/h;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/b/l;-><init>(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/h;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/h;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->c:Lcom/hpplay/sdk/source/protocol/b/p;

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The SRP-6a crypto parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/l;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    .line 58
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hpplay/sdk/source/protocol/b/l;->a(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    if-eqz p2, :cond_0

    .line 201
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 203
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 205
    invoke-static {p1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 207
    invoke-virtual {p0, v2, v0, v1}, Lcom/hpplay/sdk/source/protocol/b/l;->a([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a([B[B)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hpplay/sdk/source/protocol/b/l;->a([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a([B[B[B)Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The salt \'s\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p3, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The password \'P\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->c:Lcom/hpplay/sdk/source/protocol/b/p;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->c:Lcom/hpplay/sdk/source/protocol/b/p;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/l;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/hpplay/sdk/source/protocol/b/p;->a(Ljava/security/MessageDigest;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/l;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    iget-object v2, v2, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/l;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    iget-object v3, v3, Lcom/hpplay/sdk/source/protocol/b/f;->i:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/l;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/security/MessageDigest;[B[B)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/protocol/b/p;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/l;->c:Lcom/hpplay/sdk/source/protocol/b/p;

    .line 117
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/b/h;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public a(I)[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/protocol/b/h;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/security/SecureRandom;)[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/protocol/b/h;->a(ILjava/security/SecureRandom;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/hpplay/sdk/source/protocol/b/p;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/l;->c:Lcom/hpplay/sdk/source/protocol/b/p;

    return-object v0
.end method

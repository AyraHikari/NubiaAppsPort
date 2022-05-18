.class public Lcom/hpplay/sdk/source/protocol/b/a/e;
.super Lcom/hpplay/sdk/source/protocol/b/a/f;
.source "SourceFile"


# instance fields
.field protected a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;-><init>()V

    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/e;->a:Ljava/security/SecureRandom;

    .line 35
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/e;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;-><init>()V

    .line 129
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->a()V

    .line 130
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "*** Nimbus SRP-6a server ***"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 47
    const-string v0, "Initialize server session"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 48
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/f;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/hpplay/sdk/source/protocol/b/a/e$1;

    invoke-direct {v1, p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e$1;-><init>(Lcom/hpplay/sdk/source/protocol/b/a/e;Lcom/hpplay/sdk/source/protocol/b/f;)V

    .line 60
    const-string v0, "Server session step 1"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 62
    const-string v0, "\tEnter user identity \'I\': "

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->g(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v2, "\tEnter password salt \'s\' (hex): "

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/e;->g(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->c()Ljava/math/BigInteger;

    move-result-object v2

    .line 68
    const-string v3, "\tEnter password verifier \'v\' (hex): "

    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/protocol/b/a/e;->g(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->c()Ljava/math/BigInteger;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b/j;->step1(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 74
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 79
    const-string v0, "Server session step 2"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 81
    const-string v0, "\tEnter client public value \'A\' (hex): "

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->g(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->c()Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    const-string v2, "\tEnter client evidence message \'M1\' (hex): "

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/e;->g(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->c()Ljava/math/BigInteger;

    move-result-object v2

    .line 90
    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/hpplay/sdk/source/protocol/b/j;->step2(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_0
    .catch Lcom/hpplay/sdk/source/protocol/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 99
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 103
    const-string v0, "Mutual authentication successfully completed"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->d()V

    .line 105
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/j;->getSessionKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->i(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/b/j;->getSessionKeyHash()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->a([B)V

    .line 107
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tComputed server evidence message \'M2\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tComputed public server value \'B\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/e;->h(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.class public Lcom/hpplay/sdk/source/protocol/b/a/d;
.super Lcom/hpplay/sdk/source/protocol/b/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/protocol/b/a/d$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;-><init>()V

    .line 153
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/d;->a:Ljava/security/SecureRandom;

    .line 67
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;-><init>()V

    .line 283
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->a()V

    .line 284
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 113
    const-string v0, "Initialize verifier generator"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 114
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/f;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/hpplay/sdk/source/protocol/b/l;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/protocol/b/l;-><init>(Lcom/hpplay/sdk/source/protocol/b/f;)V

    .line 118
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->j(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/a/d$a;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 121
    const-string v2, "Enter preferred salt \'s\' byte size [16]: "

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 123
    const-string v2, "16"

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/a/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b/l;->a(ILjava/security/SecureRandom;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 138
    iget-object v3, v0, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->I:Ljava/lang/String;

    iget-object v0, v0, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->P:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/protocol/b/l;->a(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 140
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->b(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 142
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->a(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t parse salt \'s\' byte size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 166
    const-string v0, "Client session step 1"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/a/d$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/b/a/d$1;-><init>(Lcom/hpplay/sdk/source/protocol/b/a/d;)V

    .line 177
    const-string v1, "\t"

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->j(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/a/d$a;

    move-result-object v1

    .line 178
    iget-object v2, v1, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->I:Ljava/lang/String;

    iget-object v1, v1, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/sdk/source/protocol/b/e;->step1(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 185
    const-string v1, "Client session step 2"

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 187
    const-string v1, "\t"

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/f;

    move-result-object v1

    .line 189
    const-string v2, "\tEnter salt \'s\' (hex): "

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->c()Ljava/math/BigInteger;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 193
    const-string v3, "\tEnter public server value \'B\' (hex): "

    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->c()Ljava/math/BigInteger;

    move-result-object v3

    .line 195
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 200
    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b/e;->step2(Lcom/hpplay/sdk/source/protocol/b/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/hpplay/sdk/source/protocol/b/c;
    :try_end_0
    .catch Lcom/hpplay/sdk/source/protocol/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    iget-object v2, v1, Lcom/hpplay/sdk/source/protocol/b/c;->a:Ljava/math/BigInteger;

    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d(Ljava/lang/String;)V

    .line 209
    iget-object v1, v1, Lcom/hpplay/sdk/source/protocol/b/c;->b:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->c(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 215
    const-string v1, "Client session step 3"

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 217
    const-string v1, "\tEnter server evidence message \'M2\' (hex): "

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->c()Ljava/math/BigInteger;

    move-result-object v1

    .line 222
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/b/e;->step3(Ljava/math/BigInteger;)V
    :try_end_1
    .catch Lcom/hpplay/sdk/source/protocol/b/g; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 233
    const-string v1, "Client authentication successfully completed"

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 235
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKey()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->i(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->a([B)V

    .line 237
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 226
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/g;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 227
    throw v0
.end method

.method private j(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/a/d$a;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Enter user identity \'I\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Enter user password \'P\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/hpplay/sdk/source/protocol/b/a/d$a;

    invoke-direct {v2, v0, v1}, Lcom/hpplay/sdk/source/protocol/b/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "*** Nimbus SRP-6a client / verifier generator ***"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 79
    const-string v0, "Choose mode: "

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 80
    const-string v0, "\t1 = generate password verifier"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 81
    const-string v0, "\t2 = client auth session"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 83
    const-string v0, "Your choice [1]: "

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->g(Ljava/lang/String;)V

    .line 85
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 98
    const-string v0, "Unknown choice, aborting..."

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 101
    :goto_1
    return-void

    .line 87
    :pswitch_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 91
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->e()V

    goto :goto_1

    .line 94
    :pswitch_3
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->d()V

    .line 95
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->f()V

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Computed password verifier \'v\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated salt \'s\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tComputed evidence message \'M1\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tComputed public value \'A\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/d;->h(Ljava/lang/String;)V

    .line 245
    return-void
.end method

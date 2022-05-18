.class public abstract Lcom/hpplay/sdk/source/protocol/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final r:J = 0x34ebb85462a2d6feL


# instance fields
.field protected final a:Lcom/hpplay/sdk/source/protocol/b/h;

.field protected b:Lcom/hpplay/sdk/source/protocol/b/f;

.field protected c:Ljava/security/SecureRandom;

.field protected final d:I

.field protected e:J

.field protected f:Ljava/lang/String;

.field protected g:Ljava/math/BigInteger;

.field protected h:Ljava/math/BigInteger;

.field protected i:Ljava/math/BigInteger;

.field protected j:Ljava/math/BigInteger;

.field protected k:Ljava/math/BigInteger;

.field protected l:Ljava/math/BigInteger;

.field protected m:Ljava/math/BigInteger;

.field protected n:Ljava/math/BigInteger;

.field protected o:Lcom/hpplay/sdk/source/protocol/b/b;

.field protected p:Lcom/hpplay/sdk/source/protocol/b/m;

.field protected q:Lcom/hpplay/sdk/source/protocol/b/n;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    new-instance v1, Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/b/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/protocol/b/k;-><init>(ILcom/hpplay/sdk/source/protocol/b/h;)V

    .line 173
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b/h;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/b/k;-><init>(ILcom/hpplay/sdk/source/protocol/b/h;)V

    .line 165
    return-void
.end method

.method public constructor <init>(ILcom/hpplay/sdk/source/protocol/b/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->c:Ljava/security/SecureRandom;

    .line 60
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->f:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->g:Ljava/math/BigInteger;

    .line 72
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->h:Ljava/math/BigInteger;

    .line 78
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->i:Ljava/math/BigInteger;

    .line 84
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->j:Ljava/math/BigInteger;

    .line 90
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->k:Ljava/math/BigInteger;

    .line 96
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->l:Ljava/math/BigInteger;

    .line 102
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->m:Ljava/math/BigInteger;

    .line 108
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->n:Ljava/math/BigInteger;

    .line 114
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->o:Lcom/hpplay/sdk/source/protocol/b/b;

    .line 120
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->p:Lcom/hpplay/sdk/source/protocol/b/m;

    .line 126
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->q:Lcom/hpplay/sdk/source/protocol/b/n;

    .line 132
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    .line 147
    if-gez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The timeout must be zero (no timeout) or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput p1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->d:I

    .line 151
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/k;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    .line 152
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->e:J

    .line 180
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientEvidenceMessage()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->m:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getClientEvidenceRoutine()Lcom/hpplay/sdk/source/protocol/b/b;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->o:Lcom/hpplay/sdk/source/protocol/b/b;

    return-object v0
.end method

.method public getCryptoParams()Lcom/hpplay/sdk/source/protocol/b/f;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    return-object v0
.end method

.method public getHashedKeysRoutine()Lcom/hpplay/sdk/source/protocol/b/n;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->q:Lcom/hpplay/sdk/source/protocol/b/n;

    return-object v0
.end method

.method public getLastActivityTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->e:J

    return-wide v0
.end method

.method public getPublicClientValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicServerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSalt()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getServerEvidenceMessage()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getServerEvidenceRoutine()Lcom/hpplay/sdk/source/protocol/b/m;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->p:Lcom/hpplay/sdk/source/protocol/b/m;

    return-object v0
.end method

.method public getSessionKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->l:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSessionKeyHash()[B
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->l:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 414
    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hash algorithm \'H\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/k;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    iget-object v2, v2, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->l:Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->d:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimedOut()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 203
    iget v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->d:I

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 208
    iget-wide v4, p0, Lcom/hpplay/sdk/source/protocol/b/k;->e:J

    iget v1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/k;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void
.end method

.method public setClientEvidenceRoutine(Lcom/hpplay/sdk/source/protocol/b/b;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->o:Lcom/hpplay/sdk/source/protocol/b/b;

    .line 259
    return-void
.end method

.method public setHashedKeysRoutine(Lcom/hpplay/sdk/source/protocol/b/n;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->q:Lcom/hpplay/sdk/source/protocol/b/n;

    .line 326
    return-void
.end method

.method public setServerEvidenceRoutine(Lcom/hpplay/sdk/source/protocol/b/m;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/k;->p:Lcom/hpplay/sdk/source/protocol/b/m;

    .line 287
    return-void
.end method

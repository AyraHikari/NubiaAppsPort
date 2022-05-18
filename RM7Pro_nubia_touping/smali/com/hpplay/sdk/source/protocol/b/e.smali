.class public Lcom/hpplay/sdk/source/protocol/b/e;
.super Lcom/hpplay/sdk/source/protocol/b/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/protocol/b/e$a;
    }
.end annotation


# static fields
.field private static final r:J = -0x6a5f6ba95ef7a96L


# instance fields
.field private s:Ljava/lang/String;

.field private t:Ljava/math/BigInteger;

.field private u:Ljava/math/BigInteger;

.field private v:Lcom/hpplay/sdk/source/protocol/b/e$a;

.field private w:Lcom/hpplay/sdk/source/protocol/b/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/e;-><init>(I)V

    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/protocol/b/k;-><init>(I)V

    .line 95
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->t:Ljava/math/BigInteger;

    .line 101
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->u:Ljava/math/BigInteger;

    .line 113
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->w:Lcom/hpplay/sdk/source/protocol/b/p;

    .line 129
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b/e$a;->INIT:Lcom/hpplay/sdk/source/protocol/b/e$a;

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    .line 131
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->a()V

    .line 132
    return-void
.end method


# virtual methods
.method public getState()Lcom/hpplay/sdk/source/protocol/b/e$a;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    return-object v0
.end method

.method public getXRoutine()Lcom/hpplay/sdk/source/protocol/b/p;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->w:Lcom/hpplay/sdk/source/protocol/b/p;

    return-object v0
.end method

.method public setXRoutine(Lcom/hpplay/sdk/source/protocol/b/p;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->w:Lcom/hpplay/sdk/source/protocol/b/p;

    .line 155
    return-void
.end method

.method public step1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user identity \'I\' must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->f:Ljava/lang/String;

    .line 196
    if-nez p2, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user password \'P\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->s:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/e$a;->INIT:Lcom/hpplay/sdk/source/protocol/b/e$a;

    if-eq v0, v1, :cond_3

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State violation: Session must be in INIT state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_3
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b/e$a;->STEP_1:Lcom/hpplay/sdk/source/protocol/b/e$a;

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    .line 207
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->a()V

    .line 208
    return-void
.end method

.method public step2(Lcom/hpplay/sdk/source/protocol/b/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/hpplay/sdk/source/protocol/b/c;
    .locals 9

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The SRP-6a crypto parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    .line 245
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v8

    .line 247
    if-nez v8, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hash algorithm \'H\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/hpplay/sdk/source/protocol/b/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    if-nez p2, :cond_2

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The salt \'s\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->g:Ljava/math/BigInteger;

    .line 257
    if-nez p3, :cond_3

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public server value \'B\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_3
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->i:Ljava/math/BigInteger;

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/e$a;->STEP_1:Lcom/hpplay/sdk/source/protocol/b/e$a;

    if-eq v0, v1, :cond_4

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State violation: Session must be in STEP_1 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->hasTimedOut()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g;

    const-string v1, "Session timeout"

    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/g$a;->TIMEOUT:Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/g;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/b/g$a;)V

    throw v0

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, p3}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 275
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g;

    const-string v1, "Bad server public value \'B\'"

    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_PUBLIC_VALUE:Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/g;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/b/g$a;)V

    throw v0

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->w:Lcom/hpplay/sdk/source/protocol/b/p;

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->w:Lcom/hpplay/sdk/source/protocol/b/p;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v1

    .line 283
    invoke-static {p2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->f:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 284
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/b/e;->s:Ljava/lang/String;

    const-string v5, "UTF-8"

    .line 285
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 282
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/b/p;->a(Ljava/security/MessageDigest;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->t:Ljava/math/BigInteger;

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->c:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->u:Ljava/math/BigInteger;

    .line 295
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 297
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/hpplay/sdk/source/protocol/b/f;->i:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b/h;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    .line 301
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/hpplay/sdk/source/protocol/b/f;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v8, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->k:Ljava/math/BigInteger;

    .line 302
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 304
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->q:Lcom/hpplay/sdk/source/protocol/b/n;

    if-eqz v0, :cond_8

    .line 305
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/o;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p3}, Lcom/hpplay/sdk/source/protocol/b/o;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 306
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->q:Lcom/hpplay/sdk/source/protocol/b/n;

    invoke-interface {v1, p1, v0}, Lcom/hpplay/sdk/source/protocol/b/n;->a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/o;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->j:Ljava/math/BigInteger;

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/hpplay/sdk/source/protocol/b/f;->i:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->k:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/b/e;->t:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/b/e;->j:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/hpplay/sdk/source/protocol/b/e;->u:Ljava/math/BigInteger;

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->l:Ljava/math/BigInteger;

    .line 315
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->o:Lcom/hpplay/sdk/source/protocol/b/b;

    if-eqz v0, :cond_9

    .line 318
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/b/e;->l:Ljava/math/BigInteger;

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/protocol/b/d;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 319
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->o:Lcom/hpplay/sdk/source/protocol/b/b;

    invoke-interface {v1, p1, v0}, Lcom/hpplay/sdk/source/protocol/b/b;->a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/d;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->m:Ljava/math/BigInteger;

    .line 327
    :goto_2
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b/e$a;->STEP_2:Lcom/hpplay/sdk/source/protocol/b/e$a;

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    .line 329
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->a()V

    .line 331
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->m:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    invoke-static {p2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->s:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/security/MessageDigest;[B[B)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->t:Ljava/math/BigInteger;

    .line 290
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    goto/16 :goto_0

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p1, Lcom/hpplay/sdk/source/protocol/b/f;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    invoke-virtual {v0, v8, v1, v2, p3}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->j:Ljava/math/BigInteger;

    .line 309
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    goto :goto_1

    .line 323
    :cond_9
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->l:Ljava/math/BigInteger;

    invoke-virtual {v0, v8, v1, p3, v2}, Lcom/hpplay/sdk/source/protocol/b/h;->b(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->m:Ljava/math/BigInteger;

    .line 324
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    goto :goto_2
.end method

.method public step3(Ljava/math/BigInteger;)V
    .locals 5

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The server evidence message \'M2\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->n:Ljava/math/BigInteger;

    .line 366
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/e$a;->STEP_2:Lcom/hpplay/sdk/source/protocol/b/e$a;

    if-eq v0, v1, :cond_1

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State violation: Session must be in STEP_2 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->hasTimedOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g;

    const-string v1, "Session timeout"

    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/g$a;->TIMEOUT:Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/g;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/b/g$a;)V

    throw v0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->p:Lcom/hpplay/sdk/source/protocol/b/m;

    if-eqz v0, :cond_3

    .line 380
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->m:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->l:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b/i;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 382
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->p:Lcom/hpplay/sdk/source/protocol/b/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/b/m;->a(Lcom/hpplay/sdk/source/protocol/b/f;Lcom/hpplay/sdk/source/protocol/b/i;)Ljava/math/BigInteger;

    move-result-object v0

    .line 390
    :goto_0
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 391
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g;

    const-string v1, "Bad server credentials"

    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_CREDENTIALS:Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/g;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/b/g$a;)V

    throw v0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->b:Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/f;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/e;->a:Lcom/hpplay/sdk/source/protocol/b/h;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b/e;->h:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b/e;->m:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/b/e;->l:Ljava/math/BigInteger;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/b/h;->c(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_4
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b/e$a;->STEP_3:Lcom/hpplay/sdk/source/protocol/b/e$a;

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/e;->v:Lcom/hpplay/sdk/source/protocol/b/e$a;

    .line 395
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/e;->a()V

    .line 396
    return-void
.end method

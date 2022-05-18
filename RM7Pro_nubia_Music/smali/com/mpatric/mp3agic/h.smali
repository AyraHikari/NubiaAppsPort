.class public Lcom/mpatric/mp3agic/h;
.super Ljava/lang/Object;
.source "ID3v1Tag.java"

# interfaces
.implements Lcom/mpatric/mp3agic/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/mpatric/mp3agic/h;->f:I

    .line 34
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/mpatric/mp3agic/h;->f:I

    .line 34
    iput-object v1, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/h;->a([B)V

    .line 41
    return-void
.end method

.method private a([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3f

    const/16 v4, 0x21

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x1e

    .line 44
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/h;->b([B)V

    .line 45
    invoke-static {p1, v3, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    .line 46
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 47
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/mpatric/mp3agic/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-static {p1, v4, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    .line 55
    new-array v0, v2, [B

    .line 56
    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :try_start_1
    invoke-static {v0}, Lcom/mpatric/mp3agic/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :goto_1
    invoke-static {p1, v5, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    .line 65
    new-array v0, v2, [B

    .line 66
    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :try_start_2
    invoke-static {v0}, Lcom/mpatric/mp3agic/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    :goto_2
    const/16 v0, 0x5d

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    .line 74
    const/16 v0, 0x7f

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mpatric/mp3agic/h;->f:I

    .line 75
    iget v0, p0, Lcom/mpatric/mp3agic/h;->f:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mpatric/mp3agic/h;->f:I

    .line 78
    :cond_0
    const/16 v0, 0x7d

    aget-byte v0, p1, v0

    if-eqz v0, :cond_1

    .line 79
    const/16 v0, 0x61

    invoke-static {p1, v0, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    .line 90
    :goto_3
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 82
    :cond_1
    const/16 v0, 0x61

    const/16 v1, 0x1c

    invoke-static {p1, v0, v1}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpatric/mp3agic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    .line 83
    const/16 v0, 0x7e

    aget-byte v0, p1, v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    goto :goto_3

    .line 87
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    goto :goto_3
.end method

.method private b([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/NoSuchTagException;
        }
    .end annotation

    .prologue
    .line 93
    array-length v0, p1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 94
    new-instance v0, Lcom/mpatric/mp3agic/NoSuchTagException;

    const-string v1, "Buffer length wrong"

    invoke-direct {v0, v1}, Lcom/mpatric/mp3agic/NoSuchTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const-string v0, "TAG"

    const/4 v1, 0x0

    const-string v2, "TAG"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/mpatric/mp3agic/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/mpatric/mp3agic/NoSuchTagException;

    invoke-direct {v0}, Lcom/mpatric/mp3agic/NoSuchTagException;-><init>()V

    throw v0

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    if-ne p0, p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/h;

    .line 259
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 260
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 261
    goto :goto_0

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 263
    goto :goto_0

    .line 264
    :cond_5
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 265
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 266
    goto :goto_0

    .line 267
    :cond_6
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 268
    goto :goto_0

    .line 269
    :cond_7
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 270
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 271
    goto :goto_0

    .line 272
    :cond_8
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 273
    goto :goto_0

    .line 274
    :cond_9
    iget v2, p0, Lcom/mpatric/mp3agic/h;->f:I

    iget v3, p1, Lcom/mpatric/mp3agic/h;->f:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 275
    goto :goto_0

    .line 276
    :cond_a
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 277
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    .line 278
    goto :goto_0

    .line 279
    :cond_b
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 280
    goto :goto_0

    .line 281
    :cond_c
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 282
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    if-eqz v2, :cond_e

    move v0, v1

    .line 283
    goto :goto_0

    .line 284
    :cond_d
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 285
    goto/16 :goto_0

    .line 286
    :cond_e
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 287
    iget-object v2, p1, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 288
    goto/16 :goto_0

    .line 289
    :cond_f
    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 290
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 238
    .line 240
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 241
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/mpatric/mp3agic/h;->f:I

    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 247
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/mpatric/mp3agic/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/mpatric/mp3agic/h;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

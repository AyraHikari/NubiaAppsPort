.class Lcom/bumptech/glide/c/b;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:[I

.field f:[I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:[I

.field p:I

.field q:[B

.field private r:I

.field private s:I

.field private t:[B

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 3

    .prologue
    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lcom/bumptech/glide/c/b;->b:I

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/c/b;->d:I

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->e:[I

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->f:[I

    .line 58
    iput v2, p0, Lcom/bumptech/glide/c/b;->g:I

    .line 60
    iput v1, p0, Lcom/bumptech/glide/c/b;->h:I

    .line 64
    iput-boolean v1, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 99
    iput v1, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 101
    iput v1, p0, Lcom/bumptech/glide/c/b;->n:I

    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->o:[I

    .line 110
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/c/b;->r:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/c/b;->s:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/c/b;->t:[B

    .line 117
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->u:I

    .line 118
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private a()I
    .locals 3

    .prologue
    .line 245
    iget v0, p0, Lcom/bumptech/glide/c/b;->v:I

    if-nez v0, :cond_0

    .line 246
    const/4 v0, -0x1

    .line 252
    :goto_0
    return v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/c/b;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/c/b;->v:I

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->t:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/c/b;->w:I

    aget-byte v0, v0, v1

    .line 252
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method a(BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/c/b;->p:I

    aput-byte p1, v0, v1

    .line 124
    iget v0, p0, Lcom/bumptech/glide/c/b;->p:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->c(Ljava/io/OutputStream;)V

    .line 126
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/c/b;->e:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method a(ILjava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 155
    iput p1, p0, Lcom/bumptech/glide/c/b;->j:I

    .line 158
    iput-boolean v1, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 159
    iget v0, p0, Lcom/bumptech/glide/c/b;->j:I

    iput v0, p0, Lcom/bumptech/glide/c/b;->a:I

    .line 160
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    .line 162
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v4, v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->k:I

    .line 163
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/c/b;->l:I

    .line 164
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/c/b;->h:I

    .line 166
    iput v1, p0, Lcom/bumptech/glide/c/b;->p:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/c/b;->a()I

    move-result v0

    .line 171
    iget v2, p0, Lcom/bumptech/glide/c/b;->g:I

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 171
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 173
    :cond_0
    rsub-int/lit8 v5, v1, 0x8

    .line 175
    iget v6, p0, Lcom/bumptech/glide/c/b;->g:I

    .line 176
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/c/b;->a(I)V

    .line 178
    iget v1, p0, Lcom/bumptech/glide/c/b;->k:I

    invoke-virtual {p0, v1, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/c/b;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 182
    iget v2, p0, Lcom/bumptech/glide/c/b;->b:I

    shl-int v2, v1, v2

    add-int v7, v2, v0

    .line 183
    shl-int v2, v1, v5

    xor-int/2addr v2, v0

    .line 185
    iget-object v3, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v3, v3, v2

    if-ne v3, v7, :cond_1

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->f:[I

    aget v0, v0, v2

    goto :goto_1

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v3, v3, v2

    if-ltz v3, :cond_5

    .line 190
    sub-int v3, v6, v2

    .line 191
    if-nez v2, :cond_2

    move v3, v4

    .line 194
    :cond_2
    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 195
    add-int/2addr v2, v6

    .line 197
    :cond_3
    iget-object v8, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v8, v8, v2

    if-ne v8, v7, :cond_4

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->f:[I

    aget v0, v0, v2

    goto :goto_1

    .line 201
    :cond_4
    iget-object v8, p0, Lcom/bumptech/glide/c/b;->e:[I

    aget v8, v8, v2

    if-gez v8, :cond_2

    .line 203
    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 205
    iget v0, p0, Lcom/bumptech/glide/c/b;->h:I

    iget v3, p0, Lcom/bumptech/glide/c/b;->d:I

    if-ge v0, v3, :cond_6

    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->f:[I

    iget v3, p0, Lcom/bumptech/glide/c/b;->h:I

    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lcom/bumptech/glide/c/b;->h:I

    aput v3, v0, v2

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->e:[I

    aput v7, v0, v2

    move v0, v1

    goto :goto_1

    .line 209
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->a(Ljava/io/OutputStream;)V

    move v0, v1

    goto :goto_1

    .line 212
    :cond_7
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 213
    iget v0, p0, Lcom/bumptech/glide/c/b;->l:I

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/bumptech/glide/c/b;->g:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->a(I)V

    .line 133
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/c/b;->h:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 136
    iget v0, p0, Lcom/bumptech/glide/c/b;->k:I

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/c/b;->b(ILjava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method final b(I)I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(ILjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    iget-object v1, p0, Lcom/bumptech/glide/c/b;->o:[I

    iget v2, p0, Lcom/bumptech/glide/c/b;->n:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->n:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 263
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    .line 265
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 266
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->a(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    goto :goto_1

    .line 261
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/c/b;->m:I

    goto :goto_0

    .line 273
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/c/b;->h:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->c:I

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    if-eqz v0, :cond_3

    .line 274
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    if-eqz v0, :cond_4

    .line 275
    iget v0, p0, Lcom/bumptech/glide/c/b;->j:I

    iput v0, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/c/b;->i:Z

    .line 286
    :cond_3
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/c/b;->l:I

    if-ne p1, v0, :cond_7

    .line 288
    :goto_3
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    if-lez v0, :cond_6

    .line 289
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/c/b;->a(BLjava/io/OutputStream;)V

    .line 290
    iget v0, p0, Lcom/bumptech/glide/c/b;->m:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/c/b;->m:I

    .line 291
    iget v0, p0, Lcom/bumptech/glide/c/b;->n:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/c/b;->n:I

    goto :goto_3

    .line 278
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/c/b;->a:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->b:I

    if-ne v0, v1, :cond_5

    .line 280
    iget v0, p0, Lcom/bumptech/glide/c/b;->d:I

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    goto :goto_2

    .line 282
    :cond_5
    iget v0, p0, Lcom/bumptech/glide/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/b;->c:I

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/b;->c(Ljava/io/OutputStream;)V

    .line 296
    :cond_7
    return-void
.end method

.method b(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    iget v0, p0, Lcom/bumptech/glide/c/b;->u:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lcom/bumptech/glide/c/b;->r:I

    iget v1, p0, Lcom/bumptech/glide/c/b;->s:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/b;->v:I

    .line 221
    iput v2, p0, Lcom/bumptech/glide/c/b;->w:I

    .line 223
    iget v0, p0, Lcom/bumptech/glide/c/b;->u:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/c/b;->a(ILjava/io/OutputStream;)V

    .line 225
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 226
    return-void
.end method

.method c(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    iget v0, p0, Lcom/bumptech/glide/c/b;->p:I

    if-lez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/bumptech/glide/c/b;->p:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/c/b;->q:[B

    iget v1, p0, Lcom/bumptech/glide/c/b;->p:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/c/b;->p:I

    .line 235
    :cond_0
    return-void
.end method

.class Lcn/nubia/d/e;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/d/c;

.field private b:I

.field private c:I

.field private d:I

.field private e:[B

.field private f:Ljava/nio/ByteBuffer;

.field private final g:Lcn/nubia/d/a;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcn/nubia/d/a;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcn/nubia/d/e;->b:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 81
    iput-object p1, p0, Lcn/nubia/d/e;->e:[B

    const/4 p1, 0x4

    .line 82
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    return-void
.end method

.method private a(I[BII)I
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private a(Lcn/nubia/d/i;I)I
    .locals 5

    .line 310
    invoke-virtual {p1}, Lcn/nubia/d/i;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 311
    invoke-virtual {p1}, Lcn/nubia/d/i;->b()[Lcn/nubia/d/h;

    move-result-object p1

    .line 312
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 313
    invoke-virtual {v3}, Lcn/nubia/d/h;->d()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 314
    invoke-virtual {v3, p2}, Lcn/nubia/d/h;->g(I)V

    .line 315
    invoke-virtual {v3}, Lcn/nubia/d/h;->d()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private a()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/d/e;->b(Lcn/nubia/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcn/nubia/d/e;->b()V

    .line 218
    invoke-direct {p0}, Lcn/nubia/d/e;->c()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    .line 222
    new-instance v3, Lcn/nubia/d/k;

    iget-object v4, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcn/nubia/d/k;-><init>(Ljava/io/OutputStream;)V

    .line 223
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcn/nubia/d/k;->a(Ljava/nio/ByteOrder;)Lcn/nubia/d/k;

    const/16 v4, -0x1f

    .line 224
    invoke-virtual {v3, v4}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    int-to-short v1, v1

    .line 225
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    const v1, 0x45786966

    .line 226
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 228
    iget-object v1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v1}, Lcn/nubia/d/c;->e()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v4, :cond_1

    const/16 v1, 0x4d4d

    .line 229
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    .line 231
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 233
    :goto_0
    iget-object v1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v1}, Lcn/nubia/d/c;->e()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(Ljava/nio/ByteOrder;)Lcn/nubia/d/k;

    const/16 v1, 0x2a

    .line 234
    invoke-virtual {v3, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 235
    invoke-virtual {v3, v2}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    .line 236
    invoke-direct {p0, v3}, Lcn/nubia/d/e;->b(Lcn/nubia/d/k;)V

    .line 237
    invoke-direct {p0, v3}, Lcn/nubia/d/e;->a(Lcn/nubia/d/k;)V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/d/h;

    .line 239
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v2, v1}, Lcn/nubia/d/c;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    goto :goto_1

    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lcn/nubia/d/h;Lcn/nubia/d/k;)V
    .locals 4

    .line 482
    invoke-virtual {p0}, Lcn/nubia/d/h;->c()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 501
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/d/h;->e()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 502
    invoke-virtual {p0, v1}, Lcn/nubia/d/h;->f(I)Lcn/nubia/d/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/d/k;->a(Lcn/nubia/d/l;)Lcn/nubia/d/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/d/h;->e()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 512
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/d/h;->e()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 513
    invoke-virtual {p0, v1}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 484
    :pswitch_4
    invoke-virtual {p0}, Lcn/nubia/d/h;->i()[B

    move-result-object v0

    .line 485
    array-length v2, v0

    invoke-virtual {p0}, Lcn/nubia/d/h;->e()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 486
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 487
    invoke-virtual {p1, v0}, Lcn/nubia/d/k;->write([B)V

    goto :goto_3

    .line 489
    :cond_0
    invoke-virtual {p1, v0}, Lcn/nubia/d/k;->write([B)V

    .line 490
    invoke-virtual {p1, v1}, Lcn/nubia/d/k;->write(I)V

    goto :goto_3

    .line 507
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v0, v0, [B

    .line 508
    invoke-virtual {p0, v0}, Lcn/nubia/d/h;->b([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcn/nubia/d/k;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V
    .locals 7

    .line 283
    invoke-virtual {p1}, Lcn/nubia/d/i;->b()[Lcn/nubia/d/h;

    move-result-object v0

    .line 284
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 285
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 286
    invoke-virtual {v5}, Lcn/nubia/d/h;->b()S

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 287
    invoke-virtual {v5}, Lcn/nubia/d/h;->c()S

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/d/k;->a(S)Lcn/nubia/d/k;

    .line 288
    invoke-virtual {v5}, Lcn/nubia/d/h;->e()I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    .line 292
    invoke-virtual {v5}, Lcn/nubia/d/h;->d()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 293
    invoke-virtual {v5}, Lcn/nubia/d/h;->j()I

    move-result v4

    invoke-virtual {p2, v4}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    goto :goto_2

    .line 295
    :cond_0
    invoke-static {v5, p2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/h;Lcn/nubia/d/k;)V

    .line 296
    invoke-virtual {v5}, Lcn/nubia/d/h;->d()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    .line 297
    invoke-virtual {p2, v2}, Lcn/nubia/d/k;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/d/i;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    .line 302
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    .line 303
    invoke-virtual {v1}, Lcn/nubia/d/h;->d()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 304
    invoke-static {v1, p2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/h;Lcn/nubia/d/k;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private a(Lcn/nubia/d/k;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/d/k;->write([B)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v1}, Lcn/nubia/d/c;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v1, v0}, Lcn/nubia/d/c;->a(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/d/k;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private b(Lcn/nubia/d/c;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/d/c;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/d/h;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcn/nubia/d/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/d/h;

    .line 246
    invoke-virtual {v2}, Lcn/nubia/d/h;->g()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcn/nubia/d/h;->b()S

    move-result v3

    invoke-static {v3}, Lcn/nubia/d/a;->a(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v2}, Lcn/nubia/d/h;->b()S

    move-result v3

    invoke-virtual {v2}, Lcn/nubia/d/h;->a()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcn/nubia/d/c;->a(SI)V

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()V
    .locals 8

    .line 323
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcn/nubia/d/i;

    invoke-direct {v0, v1}, Lcn/nubia/d/i;-><init>(I)V

    .line 326
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v2, v0}, Lcn/nubia/d/c;->a(Lcn/nubia/d/i;)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v3, Lcn/nubia/d/a;->C:I

    invoke-virtual {v2, v3}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v2

    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    .line 333
    invoke-virtual {v0, v2}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 336
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v2

    if-nez v2, :cond_1

    .line 338
    new-instance v2, Lcn/nubia/d/i;

    invoke-direct {v2, v4}, Lcn/nubia/d/i;-><init>(I)V

    .line 339
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v4, v2}, Lcn/nubia/d/c;->a(Lcn/nubia/d/i;)V

    .line 343
    :cond_1
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 345
    iget-object v4, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v5, Lcn/nubia/d/a;->D:I

    invoke-virtual {v4, v5}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 350
    invoke-virtual {v0, v4}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    goto :goto_0

    .line 347
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->ap:I

    .line 357
    invoke-virtual {v0, v4}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 362
    invoke-virtual {v2, v0}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    goto :goto_1

    .line 359
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->ap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    .line 368
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v4}, Lcn/nubia/d/c;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    .line 371
    new-instance v0, Lcn/nubia/d/i;

    invoke-direct {v0, v2}, Lcn/nubia/d/i;-><init>(I)V

    .line 372
    iget-object v1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v1, v0}, Lcn/nubia/d/c;->a(Lcn/nubia/d/i;)V

    .line 375
    :cond_6
    iget-object v1, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v2, Lcn/nubia/d/a;->E:I

    .line 376
    invoke-virtual {v1, v2}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 382
    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 383
    iget-object v1, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v2, Lcn/nubia/d/a;->F:I

    .line 384
    invoke-virtual {v1, v2}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 390
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v2}, Lcn/nubia/d/c;->a()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcn/nubia/d/h;->d(I)Z

    .line 391
    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 394
    sget v1, Lcn/nubia/d/a;->i:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    .line 395
    sget v1, Lcn/nubia/d/a;->m:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    goto/16 :goto_3

    .line 386
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_9
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v4}, Lcn/nubia/d/c;->d()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Lcn/nubia/d/i;

    invoke-direct {v0, v2}, Lcn/nubia/d/i;-><init>(I)V

    .line 399
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v2, v0}, Lcn/nubia/d/c;->a(Lcn/nubia/d/i;)V

    .line 401
    :cond_a
    iget-object v2, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v2}, Lcn/nubia/d/c;->c()I

    move-result v2

    .line 402
    iget-object v4, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v5, Lcn/nubia/d/a;->i:I

    invoke-virtual {v4, v5}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 407
    iget-object v5, p0, Lcn/nubia/d/e;->g:Lcn/nubia/d/a;

    sget v6, Lcn/nubia/d/a;->m:I

    .line 408
    invoke-virtual {v5, v6}, Lcn/nubia/d/a;->c(I)Lcn/nubia/d/h;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 413
    new-array v2, v2, [J

    .line 414
    :goto_2
    iget-object v3, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v3}, Lcn/nubia/d/c;->c()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 415
    iget-object v3, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v3, v1}, Lcn/nubia/d/c;->a(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 417
    :cond_b
    invoke-virtual {v5, v2}, Lcn/nubia/d/h;->a([J)Z

    .line 418
    invoke-virtual {v0, v4}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 419
    invoke-virtual {v0, v5}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 421
    sget v1, Lcn/nubia/d/a;->E:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    .line 422
    sget v1, Lcn/nubia/d/a;->F:I

    .line 423
    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    .line 422
    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    goto :goto_3

    .line 410
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    .line 426
    sget v1, Lcn/nubia/d/a;->i:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    .line 427
    sget v1, Lcn/nubia/d/a;->m:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    .line 428
    sget v1, Lcn/nubia/d/a;->E:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    .line 429
    sget v1, Lcn/nubia/d/a;->F:I

    .line 430
    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    .line 429
    invoke-virtual {v0, v1}, Lcn/nubia/d/i;->b(S)V

    :cond_f
    :goto_3
    return-void

    .line 330
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/d/a;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcn/nubia/d/k;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, v0, p1}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, v0, p1}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;Lcn/nubia/d/k;)V

    :cond_2
    return-void
.end method

.method private c()I
    .locals 6

    .line 436
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v0

    const/16 v2, 0x8

    .line 437
    invoke-direct {p0, v0, v2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;I)I

    move-result v2

    .line 438
    sget v3, Lcn/nubia/d/a;->C:I

    invoke-static {v3}, Lcn/nubia/d/a;->a(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/d/i;->a(S)Lcn/nubia/d/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/d/h;->d(I)Z

    .line 440
    iget-object v3, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v3

    .line 441
    invoke-direct {p0, v3, v2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;I)I

    move-result v2

    .line 443
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 445
    sget v5, Lcn/nubia/d/a;->ap:I

    invoke-static {v5}, Lcn/nubia/d/a;->a(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcn/nubia/d/i;->a(S)Lcn/nubia/d/h;

    move-result-object v3

    .line 446
    invoke-virtual {v3, v2}, Lcn/nubia/d/h;->d(I)Z

    .line 447
    invoke-direct {p0, v4, v2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;I)I

    move-result v2

    .line 450
    :cond_0
    iget-object v3, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 452
    sget v4, Lcn/nubia/d/a;->D:I

    invoke-static {v4}, Lcn/nubia/d/a;->a(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcn/nubia/d/i;->a(S)Lcn/nubia/d/h;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/d/h;->d(I)Z

    .line 453
    invoke-direct {p0, v3, v2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;I)I

    move-result v2

    .line 456
    :cond_1
    iget-object v3, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {v0, v2}, Lcn/nubia/d/i;->a(I)V

    .line 459
    invoke-direct {p0, v3, v2}, Lcn/nubia/d/e;->a(Lcn/nubia/d/i;I)I

    move-result v2

    .line 463
    :cond_2
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    sget v0, Lcn/nubia/d/a;->E:I

    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcn/nubia/d/i;->a(S)Lcn/nubia/d/h;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v2}, Lcn/nubia/d/h;->d(I)Z

    .line 466
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v0}, Lcn/nubia/d/c;->c()I

    move-result v0

    .line 469
    new-array v0, v0, [J

    .line 470
    :goto_0
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v4}, Lcn/nubia/d/c;->c()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 471
    aput-wide v4, v0, v1

    .line 472
    iget-object v4, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    invoke-virtual {v4, v1}, Lcn/nubia/d/c;->a(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_4
    sget v1, Lcn/nubia/d/a;->i:I

    invoke-static {v1}, Lcn/nubia/d/a;->a(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcn/nubia/d/i;->a(S)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/d/h;->a([J)Z

    :cond_5
    :goto_1
    return v2
.end method


# virtual methods
.method protected a(Lcn/nubia/d/c;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/d/e;->a:Lcn/nubia/d/c;

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcn/nubia/d/e;->e:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 198
    invoke-virtual {p0, v0}, Lcn/nubia/d/e;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcn/nubia/d/e;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6

    .line 119
    :goto_0
    iget v0, p0, Lcn/nubia/d/e;->c:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v2, p0, Lcn/nubia/d/e;->d:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcn/nubia/d/e;->b:I

    if-eq v2, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    .line 124
    iput v0, p0, Lcn/nubia/d/e;->c:I

    add-int/2addr p2, v2

    .line 127
    :cond_2
    iget v0, p0, Lcn/nubia/d/e;->d:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 129
    :goto_2
    iget-object v2, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 131
    iget v2, p0, Lcn/nubia/d/e;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/d/e;->d:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 137
    :cond_5
    iget v0, p0, Lcn/nubia/d/e;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 157
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/nubia/d/e;->a(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 161
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 162
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 164
    iget-object v2, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    :cond_7
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 171
    :cond_8
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v2, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 174
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/d/e;->c:I

    .line 175
    iput v1, p0, Lcn/nubia/d/e;->b:I

    goto :goto_3

    .line 176
    :cond_9
    invoke-static {v2}, Lcn/nubia/d/j;->a(S)Z

    move-result v2

    if-nez v2, :cond_a

    .line 177
    iget-object v2, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/d/e;->d:I

    goto :goto_3

    .line 180
    :cond_a
    iget-object v2, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v1, p0, Lcn/nubia/d/e;->b:I

    .line 183
    :goto_3
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 139
    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcn/nubia/d/e;->a(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 142
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    .line 145
    :cond_c
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    .line 149
    iget-object v0, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    iput v2, p0, Lcn/nubia/d/e;->b:I

    .line 151
    iget-object v0, p0, Lcn/nubia/d/e;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcn/nubia/d/e;->a()V

    goto/16 :goto_0

    .line 147
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-lez p3, :cond_f

    .line 187
    iget-object v0, p0, Lcn/nubia/d/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    return-void
.end method

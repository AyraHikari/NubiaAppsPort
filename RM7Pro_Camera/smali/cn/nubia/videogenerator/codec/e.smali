.class public Lcn/nubia/videogenerator/codec/e;
.super Lcn/nubia/videogenerator/codec/d;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/codec/e$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:J

.field private J:J

.field private K:I

.field private L:Z

.field private M:Landroid/graphics/PointF;

.field private a:Z

.field private b:Landroid/media/MediaFormat;

.field private c:Ljava/lang/String;

.field private d:Landroid/media/MediaCodec;

.field private e:Lcn/nubia/videogenerator/a/g;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcn/nubia/videogenerator/codec/VideoEffect;

.field private n:Lcn/nubia/videogenerator/codec/TextFilter;

.field private o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;

.field private q:I

.field private r:I

.field private s:J

.field private t:Lcn/nubia/videogenerator/a/i;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/d;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->b:Landroid/media/MediaFormat;

    .line 30
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    .line 32
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->f:Z

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    .line 34
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    .line 35
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    .line 36
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->j:Z

    .line 37
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    .line 40
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    .line 42
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/videogenerator/codec/e;->p:Ljava/lang/Object;

    .line 43
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    .line 44
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    const-wide/16 v2, -0x1

    .line 45
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/e;->s:J

    .line 46
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 47
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    .line 48
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    .line 49
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->w:I

    .line 50
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    .line 51
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    .line 52
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    .line 53
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    .line 54
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    .line 55
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->C:I

    .line 56
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->D:I

    .line 57
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->E:I

    .line 58
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->F:I

    .line 59
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->G:I

    .line 60
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->H:I

    const-wide/16 v2, 0x0

    .line 61
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/e;->I:J

    .line 62
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/e;->J:J

    const/16 v2, 0x8

    .line 63
    iput v2, p0, Lcn/nubia/videogenerator/codec/e;->K:I

    .line 64
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->L:Z

    .line 65
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->M:Landroid/graphics/PointF;

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->b:Landroid/media/MediaFormat;

    const-string v0, "mime"

    .line 69
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/e;->b:Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/e;->a(Landroid/media/MediaFormat;)V

    .line 71
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    new-instance p1, Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-direct {p1}, Lcn/nubia/videogenerator/codec/VideoEffect;-><init>()V

    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    .line 73
    new-instance p1, Lcn/nubia/videogenerator/codec/TextFilter;

    invoke-direct {p1}, Lcn/nubia/videogenerator/codec/TextFilter;-><init>()V

    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    .line 74
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/e;->b:Landroid/media/MediaFormat;

    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    .line 76
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/e;->b:Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    .line 77
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->D:I

    :cond_0
    return-void
.end method

.method private a(Landroid/media/MediaCodec;Z)V
    .locals 13

    .line 279
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v1, 0x0

    .line 280
    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 281
    iget-boolean v2, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-eqz v2, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_2

    .line 284
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 285
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_2
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 290
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 292
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/e;->b(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_4
    const-string v2, "Decoder"

    if-gez v1, :cond_5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_5
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, p0, Lcn/nubia/videogenerator/codec/e;->s:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_6

    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    iget v5, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    if-ge v3, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 301
    iput v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    .line 302
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 308
    :cond_6
    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->L:Z

    if-eqz v3, :cond_8

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_8

    .line 309
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/videogenerator/codec/e;->I:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_7

    .line 310
    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    iget v5, p0, Lcn/nubia/videogenerator/codec/e;->K:I

    rem-int v5, v3, v5

    if-eqz v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 311
    iput v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    .line 312
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 316
    :cond_7
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/videogenerator/codec/e;->J:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_8

    .line 317
    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    iget v5, p0, Lcn/nubia/videogenerator/codec/e;->K:I

    rem-int v5, v3, v5

    if-eqz v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 318
    iput v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    .line 319
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 326
    :cond_8
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    const-string v5, "video/hevc"

    if-eqz v3, :cond_e

    .line 327
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 328
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 329
    iget-object v7, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 330
    invoke-virtual {v8}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v8

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    .line 331
    iget-object v8, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v8}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 332
    invoke-virtual {v9}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    .line 333
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v9, :cond_a

    .line 334
    iget-object v9, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 335
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 336
    invoke-direct {p0, v3, v6}, Lcn/nubia/videogenerator/codec/e;->a([B[B)V

    .line 337
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcn/nubia/videogenerator/a/i;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 339
    invoke-virtual {v5}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 340
    invoke-virtual {v6}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    .line 337
    invoke-static {v3, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 342
    :cond_9
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 343
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 342
    invoke-virtual {v3, v5, v0}, Lcn/nubia/videogenerator/a/i;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 345
    invoke-virtual {v5}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 346
    invoke-virtual {v6}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    .line 342
    invoke-static {v3, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    :cond_a
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v3, :cond_c

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_c

    .line 350
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-virtual {v3, v7, v8}, Lcn/nubia/videogenerator/codec/VideoEffect;->a([B[B)V

    .line 351
    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v3, :cond_b

    .line 352
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v8, v5, v6, v7}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 353
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 355
    :cond_b
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 358
    :cond_c
    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v3, :cond_d

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_d

    .line 359
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v7, v5, v6, v8}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 360
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 362
    :cond_d
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 365
    :goto_2
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_22

    .line 366
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v5}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 367
    invoke-virtual {v6}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_8

    .line 370
    :cond_e
    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_6

    .line 398
    :cond_f
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p0, Lcn/nubia/videogenerator/codec/e;->E:I

    if-lt v3, v6, :cond_16

    iget-boolean v3, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-nez v3, :cond_10

    goto/16 :goto_4

    .line 430
    :cond_10
    new-array v3, v6, [B

    .line 431
    new-array v6, v6, [B

    .line 432
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_12

    .line 433
    iget-object v7, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 434
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v5, v5, [B

    .line 435
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 436
    invoke-direct {p0, v5, v6}, Lcn/nubia/videogenerator/codec/e;->a([B[B)V

    goto :goto_3

    .line 438
    :cond_11
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    :goto_3
    iget v9, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget v10, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    iget v11, p0, Lcn/nubia/videogenerator/codec/e;->w:I

    iget v12, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    move-object v7, v3

    move-object v8, v6

    invoke-static/range {v7 .. v12}, Lcn/nubia/videogenerator/a/e;->a([B[BIIII)V

    .line 446
    :cond_12
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_14

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_14

    .line 447
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-virtual {v5, v3, v6}, Lcn/nubia/videogenerator/codec/VideoEffect;->a([B[B)V

    .line 448
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_13

    .line 449
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7, v8, v3}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 450
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 452
    :cond_13
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 455
    :cond_14
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_15

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_15

    .line 456
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v3, v7, v8, v6}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 457
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 459
    :cond_15
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 399
    :cond_16
    :goto_4
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 400
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v12, v6, [B

    .line 401
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_18

    .line 402
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 403
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 404
    invoke-direct {p0, v3, v12}, Lcn/nubia/videogenerator/codec/e;->a([B[B)V

    goto :goto_5

    .line 406
    :cond_17
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 409
    :goto_5
    iget v8, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    iget v9, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    iget v10, p0, Lcn/nubia/videogenerator/codec/e;->w:I

    iget v11, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    move-object v6, v3

    move-object v7, v12

    invoke-static/range {v6 .. v11}, Lcn/nubia/videogenerator/a/e;->a([B[BIIII)V

    .line 413
    :cond_18
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_1a

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1a

    .line 414
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-virtual {v5, v3, v12}, Lcn/nubia/videogenerator/codec/VideoEffect;->a([B[B)V

    .line 415
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_19

    .line 416
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v12, v6, v7, v3}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 417
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 419
    :cond_19
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 422
    :cond_1a
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_1b

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1b

    .line 423
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v3, v6, v7, v12}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 424
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 426
    :cond_1b
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 371
    :cond_1c
    :goto_6
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 372
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 373
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_1e

    .line 374
    iget-object v7, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 375
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 376
    invoke-direct {p0, v6, v3}, Lcn/nubia/videogenerator/codec/e;->a([B[B)V

    goto :goto_7

    .line 378
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 381
    :cond_1e
    :goto_7
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v5, :cond_20

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_20

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_20

    .line 382
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-virtual {v5, v3, v6}, Lcn/nubia/videogenerator/codec/VideoEffect;->a([B[B)V

    .line 383
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_1f

    .line 384
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7, v8, v3}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 385
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 387
    :cond_1f
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 390
    :cond_20
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v5, :cond_21

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v5, :cond_21

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_21

    .line 391
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v3, v7, v8, v6}, Lcn/nubia/videogenerator/codec/TextFilter;->a([BJ[B)V

    .line 392
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 394
    :cond_21
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    :cond_22
    :goto_8
    if-eqz v3, :cond_28

    .line 471
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_23

    .line 472
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 474
    :cond_23
    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->j:Z

    if-eqz v5, :cond_24

    iget-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->L:Z

    if-eqz v5, :cond_24

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/videogenerator/codec/e;->I:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_24

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/videogenerator/codec/e;->J:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_24

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_24

    .line 479
    invoke-direct {p0, v3, v0}, Lcn/nubia/videogenerator/codec/e;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 480
    invoke-direct {p0, v3, v0}, Lcn/nubia/videogenerator/codec/e;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 481
    invoke-direct {p0, v3, v0}, Lcn/nubia/videogenerator/codec/e;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 483
    :cond_24
    invoke-direct {p0, v3, v0}, Lcn/nubia/videogenerator/codec/e;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 484
    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    .line 487
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 488
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_26

    if-nez p2, :cond_25

    const-string p1, "reached end of stream unexpectedly"

    .line 490
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_25
    const-string p1, "end of stream reached"

    .line 492
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_9
    iput-boolean v5, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    .line 495
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->g()V

    goto :goto_a

    .line 498
    :cond_26
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v1, "video/"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_27
    :goto_a
    return-void

    :cond_28
    const-string p1, "decodedData is null "

    .line 467
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoderOutputBuffer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " was null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 8

    const-string v0, "max-input-size"

    const/16 v1, 0x4000

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 118
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mime"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Decoder"

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decoderName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_0
    const-string v0, "KEY_MIME :mime"

    .line 128
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    return-void

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v1

    .line 136
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move v3, v1

    :catch_1
    const-string v0, "create decoder fail"

    if-eqz v3, :cond_2

    .line 140
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/e;->c()V

    .line 141
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    .line 143
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v2, p1, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1

    .line 148
    :cond_2
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 151
    :catch_2
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/codec/e;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->l()V

    return-void
.end method

.method private a([B[B)V
    .locals 9

    .line 255
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->F:I

    .line 257
    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    .line 258
    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    goto :goto_0

    .line 260
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->D:I

    .line 261
    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    .line 262
    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_1

    mul-int v6, v4, v1

    add-int/2addr v6, v5

    .line 267
    iget v7, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 270
    :goto_3
    div-int/lit8 v5, v2, 0x2

    if-ge v4, v5, :cond_4

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_3

    mul-int v6, v4, v1

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    .line 272
    iget v7, p0, Lcn/nubia/videogenerator/codec/e;->G:I

    iget v8, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private b(Landroid/media/MediaFormat;)V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Decoder"

    .line 543
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/a/g;->a(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 214
    new-instance v0, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 215
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/videogenerator/a/a;->b:[B

    .line 216
    iput-object p2, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 217
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 218
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz p1, :cond_0

    .line 219
    iget p1, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    :cond_0
    return-void
.end method

.method private declared-synchronized c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()V
    .locals 3

    .line 82
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 84
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    goto :goto_0

    .line 86
    :cond_0
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    .line 88
    :goto_0
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    goto :goto_1

    .line 92
    :cond_1
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    .line 94
    :goto_1
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    mul-int v2, v0, v1

    iput v2, p0, Lcn/nubia/videogenerator/codec/e;->F:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 95
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->E:I

    return-void
.end method

.method private e()V
    .locals 3

    .line 99
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    rem-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    goto :goto_0

    .line 103
    :cond_0
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    .line 105
    :goto_0
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    rem-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 107
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->C:I

    goto :goto_1

    .line 109
    :cond_1
    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->C:I

    .line 111
    :goto_1
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->C:I

    mul-int v2, v0, v1

    iput v2, p0, Lcn/nubia/videogenerator/codec/e;->G:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 112
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/videogenerator/codec/e;->H:I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Decoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 10

    .line 229
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 231
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/videogenerator/a/a;

    .line 232
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 234
    iget-object v2, v0, Lcn/nubia/videogenerator/a/a;->b:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 238
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v0, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_0
    const-string v1, "Decoder"

    const-string v2, "EOS recevied in fillInputBufferInner"

    .line 241
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v1, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v0, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    .line 530
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 552
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->f()V

    .line 554
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcn/nubia/videogenerator/codec/e;->f:Z

    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/codec/e;->a(Landroid/media/MediaCodec;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->i()V

    :cond_0
    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "Decoder"

    const-string v1, "decoder exception "

    .line 562
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v0}, Lcn/nubia/videogenerator/a/g;->b()V

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    .line 565
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private j()V
    .locals 15

    .line 569
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 570
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 571
    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v4, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v5

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v8, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3

    .line 572
    :cond_1
    :goto_0
    iget-object v9, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v10, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v11

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v12

    iget-object v13, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v14, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3

    .line 578
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-eqz v0, :cond_5

    .line 579
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 582
    :cond_3
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    iget v5, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v7, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3

    .line 580
    :cond_4
    :goto_1
    iget-object v8, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v9, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    iget v10, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget v11, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    iget-object v12, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v13, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v8 .. v13}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3

    .line 585
    :cond_5
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 588
    :cond_6
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    iget v5, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v7, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3

    .line 586
    :cond_7
    :goto_2
    iget-object v8, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    iget-object v9, p0, Lcn/nubia/videogenerator/codec/e;->k:Ljava/lang/String;

    iget v10, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    iget v11, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    iget-object v12, p0, Lcn/nubia/videogenerator/codec/e;->l:Ljava/lang/String;

    iget v13, p0, Lcn/nubia/videogenerator/codec/e;->v:I

    invoke-virtual/range {v8 .. v13}, Lcn/nubia/videogenerator/codec/VideoEffect;->a(Ljava/lang/String;IILjava/lang/String;I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private k()V
    .locals 3

    .line 595
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 596
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 597
    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    goto :goto_3

    .line 598
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/i;->a()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/i;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    goto :goto_3

    .line 602
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-eqz v0, :cond_5

    .line 603
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 606
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    goto :goto_3

    .line 604
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    goto :goto_3

    .line 609
    :cond_5
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 612
    :cond_6
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    goto :goto_3

    .line 610
    :cond_7
    :goto_2
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->a(II)V

    .line 615
    :goto_3
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->M:Landroid/graphics/PointF;

    if-eqz v0, :cond_8

    .line 616
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->M:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/videogenerator/codec/TextFilter;->b(II)V

    goto :goto_4

    .line 618
    :cond_8
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcn/nubia/videogenerator/codec/TextFilter;->b(II)V

    :cond_9
    :goto_4
    return-void
.end method

.method private l()V
    .locals 3

    .line 624
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->j()V

    .line 625
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->k()V

    .line 626
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 629
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0xa

    .line 633
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 634
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->h()V

    .line 636
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 638
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->h()V

    .line 640
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 643
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/VideoEffect;->a()V

    .line 645
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->m:Lcn/nubia/videogenerator/codec/VideoEffect;

    .line 647
    :cond_3
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/TextFilter;->a()V

    .line 649
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/e;->n:Lcn/nubia/videogenerator/codec/TextFilter;

    :cond_4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcn/nubia/videogenerator/codec/e;->K:I

    return-void
.end method

.method public a(IIZLandroid/graphics/RectF;I)V
    .locals 7

    .line 175
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->d()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->e()V

    .line 182
    :cond_1
    :try_start_0
    iput p5, p0, Lcn/nubia/videogenerator/codec/e;->u:I

    .line 183
    iput p1, p0, Lcn/nubia/videogenerator/codec/e;->w:I

    if-eqz p3, :cond_3

    .line 185
    iget-boolean p3, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    if-eqz p3, :cond_2

    .line 186
    new-instance p3, Lcn/nubia/videogenerator/a/i;

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->z:I

    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->A:I

    move-object v0, p3

    move v1, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/a/i;-><init>(IIIILandroid/graphics/RectF;I)V

    iput-object p3, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    goto :goto_0

    .line 189
    :cond_2
    new-instance p3, Lcn/nubia/videogenerator/a/i;

    iget v2, p0, Lcn/nubia/videogenerator/codec/e;->x:I

    iget v3, p0, Lcn/nubia/videogenerator/codec/e;->y:I

    move-object v0, p3

    move v1, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/a/i;-><init>(IIIILandroid/graphics/RectF;I)V

    iput-object p3, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/g;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e;->e:Lcn/nubia/videogenerator/a/g;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 670
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 671
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 672
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 673
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/codec/e;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/e;->g:Z

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/e;->L:Z

    .line 158
    iput-wide p2, p0, Lcn/nubia/videogenerator/codec/e;->I:J

    .line 159
    iput-wide p4, p0, Lcn/nubia/videogenerator/codec/e;->J:J

    return-void
.end method

.method public a()Z
    .locals 2

    .line 508
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 678
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    const-string v1, "Decoder"

    if-eqz v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Decoder start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "decoder start fail"

    .line 683
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->i()V

    .line 686
    :goto_0
    new-instance v0, Lcn/nubia/videogenerator/codec/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/codec/e$a;-><init>(Lcn/nubia/videogenerator/codec/e;Lcn/nubia/videogenerator/codec/e$1;)V

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/e$a;->start()V

    goto :goto_1

    :cond_0
    const-string v0, "decoder is null,do not start"

    .line 688
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/e;->i()V

    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 516
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/e;->j:Z

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 662
    iget v0, p0, Lcn/nubia/videogenerator/codec/e;->q:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/e;->r:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 3

    const-string v0, "Decoder"

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseDecoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 706
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/e;->a:Z

    .line 707
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 710
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 711
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 712
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcn/nubia/videogenerator/codec/e;->d:Landroid/media/MediaCodec;

    .line 718
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    iput-object v2, p0, Lcn/nubia/videogenerator/codec/e;->t:Lcn/nubia/videogenerator/a/i;

    .line 720
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 718
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

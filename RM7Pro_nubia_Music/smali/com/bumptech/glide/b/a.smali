.class public Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/graphics/Bitmap$Config;


# instance fields
.field private c:[I

.field private final d:[I

.field private e:Ljava/nio/ByteBuffer;

.field private final f:[B

.field private g:[S

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[I

.field private l:I

.field private m:[B

.field private n:Lcom/bumptech/glide/b/c;

.field private o:Lcom/bumptech/glide/b/a$a;

.field private p:Landroid/graphics/Bitmap;

.field private q:Z

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->d:[I

    .line 123
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->f:[B

    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->o:Lcom/bumptech/glide/b/a$a;

    .line 165
    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    .line 166
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v3, v0, Lcom/bumptech/glide/b/c;->f:I

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v7, v0, Lcom/bumptech/glide/b/c;->g:I

    .line 481
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->k:[I

    .line 484
    if-nez p2, :cond_0

    .line 485
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 489
    :cond_0
    if-eqz p2, :cond_4

    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    if-lez v0, :cond_4

    .line 492
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 494
    const/4 v0, 0x0

    .line 495
    iget-boolean v2, p1, Lcom/bumptech/glide/b/b;->f:Z

    if-nez v2, :cond_1

    .line 496
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->l:I

    .line 497
    iget-object v2, p1, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->j:I

    iget v4, p1, Lcom/bumptech/glide/b/b;->h:I

    if-ne v2, v4, :cond_1

    .line 498
    const/4 v0, 0x0

    .line 502
    :cond_1
    iget v2, p2, Lcom/bumptech/glide/b/b;->b:I

    mul-int/2addr v2, v3

    iget v4, p2, Lcom/bumptech/glide/b/b;->a:I

    add-int/2addr v4, v2

    .line 503
    iget v2, p2, Lcom/bumptech/glide/b/b;->d:I

    mul-int/2addr v2, v3

    add-int v5, v4, v2

    .line 504
    :goto_0
    if-ge v4, v5, :cond_4

    .line 505
    iget v2, p2, Lcom/bumptech/glide/b/b;->c:I

    add-int v6, v4, v2

    move v2, v4

    .line 506
    :goto_1
    if-ge v2, v6, :cond_2

    .line 507
    aput v0, v1, v2

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    :cond_2
    add-int/2addr v4, v3

    goto :goto_0

    .line 510
    :cond_3
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 517
    :cond_4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;)V

    .line 520
    const/4 v5, 0x1

    .line 521
    const/16 v4, 0x8

    .line 522
    const/4 v2, 0x0

    .line 523
    const/4 v0, 0x0

    :goto_2
    iget v6, p1, Lcom/bumptech/glide/b/b;->d:I

    if-ge v0, v6, :cond_9

    .line 525
    iget-boolean v6, p1, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v6, :cond_d

    .line 526
    iget v6, p1, Lcom/bumptech/glide/b/b;->d:I

    if-lt v2, v6, :cond_5

    .line 527
    add-int/lit8 v5, v5, 0x1

    .line 528
    packed-switch v5, :pswitch_data_0

    .line 545
    :cond_5
    :goto_3
    add-int v6, v2, v4

    move v12, v2

    move v2, v6

    move v6, v12

    .line 547
    :goto_4
    iget v8, p1, Lcom/bumptech/glide/b/b;->b:I

    add-int/2addr v6, v8

    .line 548
    iget-object v8, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v8, v8, Lcom/bumptech/glide/b/c;->g:I

    if-ge v6, v8, :cond_8

    .line 549
    iget-object v8, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v8, v8, Lcom/bumptech/glide/b/c;->f:I

    mul-int/2addr v8, v6

    .line 551
    iget v6, p1, Lcom/bumptech/glide/b/b;->a:I

    add-int v9, v8, v6

    .line 553
    iget v6, p1, Lcom/bumptech/glide/b/b;->c:I

    add-int/2addr v6, v9

    .line 554
    iget-object v10, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v10, v10, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v10, v8

    if-ge v10, v6, :cond_6

    .line 556
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v6, v6, Lcom/bumptech/glide/b/c;->f:I

    add-int/2addr v6, v8

    .line 559
    :cond_6
    iget v8, p1, Lcom/bumptech/glide/b/b;->c:I

    mul-int/2addr v8, v0

    move v10, v9

    .line 560
    :goto_5
    if-ge v10, v6, :cond_8

    .line 562
    iget-object v11, p0, Lcom/bumptech/glide/b/a;->j:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v11, v8

    and-int/lit16 v8, v8, 0xff

    .line 563
    iget-object v11, p0, Lcom/bumptech/glide/b/a;->c:[I

    aget v8, v11, v8

    .line 564
    if-eqz v8, :cond_7

    .line 565
    aput v8, v1, v10

    .line 567
    :cond_7
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v8, v9

    .line 568
    goto :goto_5

    .line 530
    :pswitch_0
    const/4 v2, 0x4

    .line 531
    goto :goto_3

    .line 533
    :pswitch_1
    const/4 v2, 0x2

    .line 534
    const/4 v4, 0x4

    .line 535
    goto :goto_3

    .line 537
    :pswitch_2
    const/4 v2, 0x1

    .line 538
    const/4 v4, 0x2

    .line 539
    goto :goto_3

    .line 523
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    :cond_9
    iget-boolean v0, p0, Lcom/bumptech/glide/b/a;->q:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 575
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 576
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    .line 578
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 582
    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 584
    return-object v0

    :cond_d
    move v6, v0

    goto :goto_4

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 22

    .prologue
    .line 591
    if-eqz p1, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v1, v2

    .line 600
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->j:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->j:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 602
    :cond_1
    new-array v2, v1, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->j:[B

    .line 604
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->g:[S

    if-nez v2, :cond_3

    .line 605
    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->g:[S

    .line 607
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    if-nez v2, :cond_4

    .line 608
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->h:[B

    .line 610
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    if-nez v2, :cond_5

    .line 611
    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->i:[B

    .line 615
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v16

    .line 616
    const/4 v2, 0x1

    shl-int v17, v2, v16

    .line 617
    add-int/lit8 v18, v17, 0x1

    .line 618
    add-int/lit8 v4, v17, 0x2

    .line 619
    const/4 v10, -0x1

    .line 620
    add-int/lit8 v2, v16, 0x1

    .line 621
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 622
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 624
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->g:[S

    const/4 v7, 0x0

    aput-short v7, v6, v5

    .line 625
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->h:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v5

    .line 622
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 596
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/b/b;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->d:I

    mul-int/2addr v1, v2

    goto :goto_0

    .line 629
    :cond_7
    const/4 v5, 0x0

    .line 630
    const/4 v7, 0x0

    move v8, v5

    move v11, v5

    move v6, v5

    move v9, v2

    move v12, v3

    move v13, v4

    move v2, v5

    move v3, v5

    move v4, v5

    :goto_2
    if-ge v7, v1, :cond_8

    .line 632
    if-nez v3, :cond_a

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/a;->i()I

    move-result v3

    .line 635
    if-gtz v3, :cond_9

    .line 636
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/b/a;->r:I

    :cond_8
    move v2, v4

    .line 712
    :goto_3
    if-ge v2, v1, :cond_11

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/b/a;->j:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 639
    :cond_9
    const/4 v2, 0x0

    .line 642
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/b/a;->f:[B

    aget-byte v14, v14, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/2addr v5, v14

    .line 643
    add-int/lit8 v6, v6, 0x8

    .line 644
    add-int/lit8 v14, v2, 0x1

    .line 645
    add-int/lit8 v15, v3, -0x1

    move v2, v9

    move v3, v12

    move v9, v11

    move/from16 v21, v6

    move v6, v5

    move v5, v4

    move v4, v13

    move/from16 v13, v21

    .line 647
    :goto_4
    if-lt v13, v2, :cond_14

    .line 649
    and-int v11, v6, v3

    .line 650
    shr-int v12, v6, v2

    .line 651
    sub-int/2addr v13, v2

    .line 654
    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 656
    add-int/lit8 v2, v16, 0x1

    .line 657
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 658
    add-int/lit8 v4, v17, 0x2

    .line 659
    const/4 v11, -0x1

    move v6, v12

    move v10, v11

    .line 660
    goto :goto_4

    .line 663
    :cond_b
    if-le v11, v4, :cond_c

    .line 664
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/bumptech/glide/b/a;->r:I

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    .line 665
    goto :goto_2

    .line 668
    :cond_c
    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    .line 669
    goto :goto_2

    .line 672
    :cond_d
    const/4 v6, -0x1

    if-ne v10, v6, :cond_e

    .line 673
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/b/a;->i:[B

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/b/a;->h:[B

    aget-byte v10, v10, v11

    aput-byte v10, v9, v8

    move v8, v6

    move v9, v11

    move v10, v11

    move v6, v12

    .line 676
    goto :goto_4

    .line 679
    :cond_e
    if-lt v11, v4, :cond_13

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->i:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    move v8, v6

    move v9, v10

    .line 683
    :goto_5
    move/from16 v0, v17

    if-lt v9, v0, :cond_f

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->i:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->h:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    aput-byte v20, v19, v8

    .line 685
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->g:[S

    aget-short v8, v8, v9

    move v9, v8

    move v8, v6

    goto :goto_5

    .line 687
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/a;->h:[B

    aget-byte v6, v6, v9

    and-int/lit16 v9, v6, 0xff

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->i:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v19, v8

    .line 691
    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    .line 692
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->g:[S

    int-to-short v10, v10

    aput-short v10, v8, v4

    .line 693
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/a;->h:[B

    int-to-byte v10, v9

    aput-byte v10, v8, v4

    .line 694
    add-int/lit8 v4, v4, 0x1

    .line 695
    and-int v8, v4, v3

    if-nez v8, :cond_10

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    .line 696
    add-int/lit8 v2, v2, 0x1

    .line 697
    add-int/2addr v3, v4

    :cond_10
    move v8, v7

    .line 702
    :goto_6
    if-lez v6, :cond_12

    .line 704
    add-int/lit8 v7, v6, -0x1

    .line 705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/b/a;->j:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/a;->i:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v7

    aput-byte v19, v10, v5

    .line 706
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v6

    move v6, v7

    goto :goto_6

    .line 715
    :cond_11
    return-void

    :cond_12
    move v7, v8

    move v10, v11

    move v8, v6

    move v6, v12

    goto/16 :goto_4

    :cond_13
    move v9, v11

    goto :goto_5

    :cond_14
    move v11, v9

    move v12, v3

    move v3, v15

    move v9, v2

    move v2, v14

    move/from16 v21, v13

    move v13, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v21

    goto/16 :goto_2
.end method

.method private h()I
    .locals 2

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 727
    :goto_0
    return v0

    .line 724
    :catch_0
    move-exception v1

    .line 725
    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->r:I

    goto :goto_0
.end method

.method private i()I
    .locals 5

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()I

    move-result v1

    .line 737
    const/4 v0, 0x0

    .line 738
    if-lez v1, :cond_0

    .line 741
    :goto_0
    if-ge v0, v1, :cond_0

    .line 742
    sub-int v2, v1, v0

    .line 743
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->f:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    add-int/2addr v0, v2

    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    .line 748
    sget-object v2, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    const/4 v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->r:I

    .line 752
    :cond_0
    return v0
.end method

.method private j()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    sget-object v3, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->f:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->g:I

    sget-object v2, Lcom/bumptech/glide/b/a;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 760
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap;)V

    .line 761
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 206
    const/4 v0, -0x1

    .line 207
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    iget v0, v0, Lcom/bumptech/glide/b/b;->i:I

    .line 210
    :cond_0
    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/bumptech/glide/b/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->l:I

    .line 197
    return-void
.end method

.method public a(Lcom/bumptech/glide/b/c;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iput-object p1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    .line 410
    iput-object p2, p0, Lcom/bumptech/glide/b/a;->m:[B

    .line 411
    iput v2, p0, Lcom/bumptech/glide/b/a;->r:I

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->l:I

    .line 414
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    iput-boolean v2, p0, Lcom/bumptech/glide/b/a;->q:Z

    .line 421
    iget-object v0, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 422
    iget v0, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/b/a;->q:Z

    .line 429
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->j:[B

    .line 430
    iget v0, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v1, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->k:[I

    .line 431
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->l:I

    if-gez v0, :cond_1

    .line 218
    :cond_0
    const/4 v0, -0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/a;->l:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/bumptech/glide/b/a;->l:I

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    if-nez v0, :cond_1

    .line 303
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->m:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized f()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/a;->l:I

    if-gez v0, :cond_2

    .line 315
    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/a;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->r:I

    .line 320
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/a;->r:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/bumptech/glide/b/a;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 321
    :cond_3
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/a;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    .line 356
    :goto_0
    monitor-exit p0

    return-object v0

    .line 326
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/bumptech/glide/b/a;->r:I

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/b/a;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 330
    iget v1, p0, Lcom/bumptech/glide/b/a;->l:I

    add-int/lit8 v1, v1, -0x1

    .line 331
    if-ltz v1, :cond_a

    .line 332
    iget-object v3, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget-object v3, v3, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/b;

    move-object v3, v1

    .line 336
    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    :goto_2
    iput-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    .line 337
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    if-nez v1, :cond_8

    .line 338
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    sget-object v0, Lcom/bumptech/glide/b/a;->a:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/a;->r:I

    move-object v0, v2

    .line 343
    goto :goto_0

    .line 336
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->a:[I

    goto :goto_2

    .line 346
    :cond_8
    iget-boolean v1, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v1, :cond_9

    .line 348
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->d:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/b/a;->c:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->d:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    .line 352
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->c:[I

    iget v2, v0, Lcom/bumptech/glide/b/b;->h:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 356
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    move-object v3, v2

    goto :goto_1
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->n:Lcom/bumptech/glide/b/c;

    .line 398
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->m:[B

    .line 399
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->j:[B

    .line 400
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->k:[I

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 404
    :cond_0
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->p:Landroid/graphics/Bitmap;

    .line 405
    iput-object v2, p0, Lcom/bumptech/glide/b/a;->e:Ljava/nio/ByteBuffer;

    .line 406
    return-void
.end method

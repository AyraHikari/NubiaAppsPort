.class public Lcn/nubia/camera/aj/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/f$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/aj/a/a;

.field private c:Lcn/nubia/camera/aj/h;

.field private d:Lcn/nubia/camera/z/b;

.field private e:Lcn/nubia/camera/g/h;

.field private f:Lcn/nubia/camera/g/e;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/aj/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/nubia/camera/g/f;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Lcn/nubia/camera/aj/f$a;

.field private n:Lcn/nubia/camera/v/d;

.field private o:Lcn/nubia/camera/v/d;

.field private p:Lcn/nubia/camera/v/d$a;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcn/nubia/camera/aj/i;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
    .locals 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->i:Z

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->j:Z

    const-wide/16 v1, -0x1

    .line 65
    iput-wide v1, p0, Lcn/nubia/camera/aj/f;->k:J

    .line 67
    iput-wide v1, p0, Lcn/nubia/camera/aj/f;->l:J

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->m:Lcn/nubia/camera/aj/f$a;

    .line 72
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    .line 73
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    .line 74
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->p:Lcn/nubia/camera/v/d$a;

    .line 75
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->q:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->r:Z

    .line 77
    iput-object v1, p0, Lcn/nubia/camera/aj/f;->s:Lcn/nubia/camera/aj/i;

    .line 78
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->t:Z

    .line 79
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->u:Z

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->v:Z

    .line 559
    new-instance v0, Lcn/nubia/camera/aj/f$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/f$7;-><init>(Lcn/nubia/camera/aj/f;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/f;->w:Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 136
    iput-object p3, p0, Lcn/nubia/camera/aj/f;->b:Lcn/nubia/camera/aj/a/a;

    .line 137
    iput-object p2, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    .line 138
    iput-object p4, p0, Lcn/nubia/camera/aj/f;->d:Lcn/nubia/camera/z/b;

    .line 140
    new-instance p2, Lcn/nubia/camera/aj/f$1;

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 141
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcn/nubia/camera/aj/f$1;-><init>(Lcn/nubia/camera/aj/f;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/aj/f;->e:Lcn/nubia/camera/g/h;

    .line 170
    new-instance p2, Lcn/nubia/camera/g/e;

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    new-instance v1, Lcn/nubia/camera/aj/f$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/f$2;-><init>(Lcn/nubia/camera/aj/f;)V

    invoke-direct {p2, p1, v0, p4, v1}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/aj/f;->f:Lcn/nubia/camera/g/e;

    .line 193
    new-instance p1, Lcn/nubia/camera/aj/f$3;

    invoke-direct {p1, p0}, Lcn/nubia/camera/aj/f$3;-><init>(Lcn/nubia/camera/aj/f;)V

    invoke-virtual {p2, p1}, Lcn/nubia/camera/g/e;->a(Lcn/nubia/camera/g/f;)V

    .line 202
    iput-object p3, p0, Lcn/nubia/camera/aj/f;->b:Lcn/nubia/camera/aj/a/a;

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    new-instance p2, Lcn/nubia/camera/aj/f$4;

    invoke-direct {p2, p0}, Lcn/nubia/camera/aj/f$4;-><init>(Lcn/nubia/camera/aj/f;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/aj/f;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 332
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 333
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcn/nubia/camera/aj/i;

    .line 372
    iget-object v3, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 374
    aget-object v3, v2, v0

    .line 375
    invoke-interface {v3, p1, p2}, Lcn/nubia/camera/aj/i;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 373
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Lcn/nubia/l/b/c;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    .line 547
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/l/b/c;-><init>(Landroid/graphics/Bitmap;I)V

    .line 549
    iget-object p1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/f;Lcom/android/common/a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/f;->a(Lcom/android/common/a;)V

    return-void
.end method

.method private a(Lcom/android/common/a;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const-string v0, "NormalOnShutterButtonListener"

    const-string v2, "ThumbnailBuffer is null!"

    .line 478
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 481
    :cond_0
    iget-object v2, v0, Lcom/android/common/a;->a:[B

    .line 482
    iget v3, v0, Lcom/android/common/a;->c:I

    .line 483
    iget v0, v0, Lcom/android/common/a;->d:I

    .line 484
    iget-object v4, v1, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/al/c;->d()I

    move-result v4

    .line 488
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/aj/f;->p()Z

    move-result v5

    .line 489
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v7, v6, v6

    .line 490
    new-array v7, v7, [I

    sub-int v8, v3, v6

    .line 491
    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v6

    .line 492
    div-int/lit8 v0, v0, 0x2

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v6, :cond_6

    add-int v12, v10, v0

    mul-int/2addr v12, v3

    add-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v6, :cond_5

    const/16 v14, 0x5a

    if-eq v4, v14, :cond_3

    const/16 v14, 0xb4

    if-eq v4, v14, :cond_2

    const/16 v14, 0x10e

    if-eq v4, v14, :cond_1

    move v14, v10

    move v15, v13

    goto :goto_2

    :cond_1
    sub-int v14, v6, v13

    sub-int/2addr v14, v11

    move v15, v10

    goto :goto_2

    :cond_2
    sub-int v14, v6, v10

    sub-int/2addr v14, v11

    sub-int v15, v6, v13

    sub-int/2addr v15, v11

    goto :goto_2

    :cond_3
    sub-int v14, v6, v10

    add-int/lit8 v15, v14, -0x1

    move v14, v13

    :goto_2
    if-eqz v5, :cond_4

    sub-int v15, v6, v15

    sub-int/2addr v15, v11

    :cond_4
    mul-int/2addr v14, v6

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, 0x3

    .line 520
    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v9, v2, v12

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v16, v12, 0x1

    aget-byte v11, v2, v16

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v16, v12, 0x2

    move/from16 v17, v0

    aget-byte v0, v2, v16

    and-int/lit16 v0, v0, 0xff

    invoke-static {v15, v9, v11, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v7, v14

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    move/from16 v17, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 524
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    monitor-enter p0

    .line 526
    :try_start_0
    iget-boolean v2, v1, Lcn/nubia/camera/aj/f;->i:Z

    if-eqz v2, :cond_7

    .line 527
    iget-object v2, v1, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/ad/a;->a(Landroid/graphics/Bitmap;)V

    .line 528
    invoke-direct {v1, v0}, Lcn/nubia/camera/aj/f;->a(Landroid/graphics/Bitmap;)V

    .line 529
    iget-object v0, v1, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ad/a;->d(Z)V

    .line 531
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/aj/f;->v:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/f;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/aj/f;->r:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/aj/f;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/aj/f;->i:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/aj/f;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/aj/f;->j:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/aj/f;->t:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->q()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/aj/f;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->w:Landroid/os/Handler;

    return-object p0
.end method

.method private f()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_third_arith_hdr_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 4

    .line 264
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "on"

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->ad()[I

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    .line 266
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 268
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/camera/aj/f;->r:Z

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method static synthetic g(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/e;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->f:Lcn/nubia/camera/g/e;

    return-object p0
.end method

.method private h()Z
    .locals 3

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 275
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private i()Z
    .locals 3

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0247

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_live_photo_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->p:Lcn/nubia/camera/v/d$a;

    return-object p0
.end method

.method private j()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method private k()Z
    .locals 4

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->F()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 292
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 293
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic l(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->m()V

    return-void
.end method

.method private l()Z
    .locals 4

    .line 298
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->F()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 302
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 303
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 306
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh thumbnail advanced:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NormalOnShutterButtonListener"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private m()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcn/nubia/camera/aj/i;

    .line 361
    iget-object v3, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 363
    aget-object v3, v2, v0

    .line 364
    invoke-interface {v3}, Lcn/nubia/camera/aj/i;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 362
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic m(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/aj/f;->j:Z

    return p0
.end method

.method static synthetic n(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/f;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->h:Lcn/nubia/camera/g/f;

    return-object p0
.end method

.method private n()V
    .locals 8

    .line 428
    iget-boolean v0, p0, Lcn/nubia/camera/aj/f;->v:Z

    if-nez v0, :cond_0

    const-string v0, "NormalOnShutterButtonListener"

    const-string v1, "Fragment is not resume"

    .line 429
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/aj/f;->j:Z

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->f:Lcn/nubia/camera/g/e;

    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/camera/g/e;->a(JZ)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    iget-object v4, p0, Lcn/nubia/camera/aj/f;->e:Lcn/nubia/camera/g/h;

    iget-object v5, p0, Lcn/nubia/camera/aj/f;->f:Lcn/nubia/camera/g/e;

    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->k()Z

    move-result v6

    iget-object v7, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    invoke-virtual {v5, v6, v7}, Lcn/nubia/camera/g/e;->a(ZLcn/nubia/camera/v/d;)Lcn/nubia/camera/k/o;

    move-result-object v5

    new-instance v6, Lcn/nubia/camera/aj/f$6;

    invoke-direct {v6, p0}, Lcn/nubia/camera/aj/f$6;-><init>(Lcn/nubia/camera/aj/f;)V

    invoke-virtual {v0, v4, v5, v6}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 457
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->f:Lcn/nubia/camera/g/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/g/e;->a(JZ)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/aj/f;->k:J

    .line 461
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v2, :cond_3

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/aj/f;->a(J)V

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->s:Lcn/nubia/camera/aj/i;

    if-eqz v0, :cond_3

    .line 464
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->q()V

    .line 465
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->w:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v2}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/h;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    return-object p0
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 473
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0267

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_normal_effect_key"

    .line 472
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Z
    .locals 4

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0255

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0251

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    iget-object v2, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_mirror_mode_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic p(Lcn/nubia/camera/aj/f;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/aj/f;->u:Z

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/aj/i;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/aj/f;->s:Lcn/nubia/camera/aj/i;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->v:Z

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->j:Z

    const-wide/16 v1, -0x1

    .line 383
    iput-wide v1, p0, Lcn/nubia/camera/aj/f;->k:J

    .line 384
    iput-wide v1, p0, Lcn/nubia/camera/aj/f;->l:J

    .line 386
    new-instance v1, Lcn/nubia/camera/aj/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/aj/f$a;-><init>(Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/f$1;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/f;->m:Lcn/nubia/camera/aj/f$a;

    .line 387
    iget-object v2, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 388
    new-instance v1, Lcn/nubia/camera/v/d;

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    .line 389
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v3

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/v/d;-><init>(FLcn/nubia/camera/v/b$a;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    .line 391
    new-instance v1, Lcn/nubia/camera/v/d;

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Lcn/nubia/camera/v/d;-><init>(FLcn/nubia/camera/v/b$a;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    .line 392
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 393
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 394
    new-instance v1, Lcn/nubia/camera/aj/f$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/f$5;-><init>(Lcn/nubia/camera/aj/f;)V

    iput-object v1, p0, Lcn/nubia/camera/aj/f;->p:Lcn/nubia/camera/v/d$a;

    .line 404
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->t:Z

    .line 405
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->u:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/g/f;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcn/nubia/camera/aj/f;->h:Lcn/nubia/camera/g/f;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalOnShutterButtonListener"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_0

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/aj/f;->b:Lcn/nubia/camera/aj/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/a/a;->a()V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aj/f;->l:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcn/nubia/camera/aj/f;->k:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->m:Lcn/nubia/camera/aj/f$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/aj/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/camera/aj/f;->k:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x708

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 240
    :cond_2
    iget-wide v3, p0, Lcn/nubia/camera/aj/f;->l:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/nubia/camera/aj/f;->l:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const-string v0, "NormalOnShutterButtonListener"

    const-string v1, "diable a while after continuous shot"

    .line 241
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 248
    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->n()V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->i:Z

    .line 251
    iget-object v3, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/camera/ad/a;->a(Landroid/graphics/Bitmap;)V

    .line 252
    iget-object v3, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3, v0}, Lcn/nubia/camera/ad/a;->d(Z)V

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 256
    iput-wide v1, p0, Lcn/nubia/camera/aj/f;->l:J

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Lcn/nubia/camera/aj/i;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 593
    iput-boolean p1, p0, Lcn/nubia/camera/aj/f;->u:Z

    return-void
.end method

.method public c()V
    .locals 5

    const-string v0, "NormalOnShutterButtonListener"

    const-string v1, "onShutterButtonLongClick"

    .line 313
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0195

    .line 316
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/f;->a(I)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcn/nubia/camera/aj/f;->b()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0f0194

    .line 320
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/f;->a(I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->b:Lcn/nubia/camera/aj/a/a;

    invoke-direct {p0}, Lcn/nubia/camera/aj/f;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcn/nubia/camera/aj/a/a;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    iput-boolean v3, p0, Lcn/nubia/camera/aj/f;->j:Z

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "long shutter LastLongShutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/aj/f;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcn/nubia/camera/aj/f;->v:Z

    const-wide/16 v0, -0x1

    .line 410
    iput-wide v0, p0, Lcn/nubia/camera/aj/f;->k:J

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->c:Lcn/nubia/camera/aj/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/f;->m:Lcn/nubia/camera/aj/f$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcn/nubia/camera/aj/f;->m:Lcn/nubia/camera/aj/f$a;

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 415
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 416
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->a()V

    .line 417
    iget-object v1, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->a()V

    .line 418
    iput-object v0, p0, Lcn/nubia/camera/aj/f;->n:Lcn/nubia/camera/v/d;

    .line 419
    iput-object v0, p0, Lcn/nubia/camera/aj/f;->o:Lcn/nubia/camera/v/d;

    .line 420
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcn/nubia/camera/aj/f;->q:Ljava/lang/String;

    return-object v0
.end method

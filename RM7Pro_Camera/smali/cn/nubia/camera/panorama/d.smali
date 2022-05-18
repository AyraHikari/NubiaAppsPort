.class public Lcn/nubia/camera/panorama/d;
.super Lcn/nubia/camera/panorama/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/panorama/d$c;,
        Lcn/nubia/camera/panorama/d$d;,
        Lcn/nubia/camera/panorama/d$a;,
        Lcn/nubia/camera/panorama/d$b;
    }
.end annotation


# static fields
.field private static final P:I


# instance fields
.field private A:I

.field private B:[I

.field private C:I

.field private D:[I

.field private E:[B

.field private F:[I

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/panorama/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcn/nubia/camera/panorama/e;

.field private N:Lcn/nubia/camera/panorama/d$d;

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/panorama/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private final Q:Lcn/nubia/camera/panorama/d$b;

.field private R:Lcn/nubia/camera/panorama/g;

.field private S:Lcn/nubia/camera/panorama/e$a;

.field private p:Lcom/morpho/core/MorphoPanoramaGP;

.field private q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private final t:I

.field private final u:I

.field private v:I

.field private w:J

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x38

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcn/nubia/camera/panorama/d;->P:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/panorama/h;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcn/nubia/camera/panorama/d;->t:I

    .line 44
    iput v1, p0, Lcn/nubia/camera/panorama/d;->u:I

    .line 68
    iput v1, p0, Lcn/nubia/camera/panorama/d;->v:I

    const/16 v2, 0xa

    .line 70
    iput v2, p0, Lcn/nubia/camera/panorama/d;->x:I

    const v2, 0x8000

    .line 71
    iput v2, p0, Lcn/nubia/camera/panorama/d;->y:I

    .line 75
    iput v1, p0, Lcn/nubia/camera/panorama/d;->z:I

    .line 79
    iput v1, p0, Lcn/nubia/camera/panorama/d;->A:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 80
    iput-object v3, p0, Lcn/nubia/camera/panorama/d;->B:[I

    new-array v3, v2, [I

    .line 82
    iput-object v3, p0, Lcn/nubia/camera/panorama/d;->D:[I

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 83
    iput-object v3, p0, Lcn/nubia/camera/panorama/d;->E:[B

    new-array v2, v2, [I

    .line 84
    iput-object v2, p0, Lcn/nubia/camera/panorama/d;->F:[I

    .line 88
    iput v1, p0, Lcn/nubia/camera/panorama/d;->H:I

    .line 89
    iput v1, p0, Lcn/nubia/camera/panorama/d;->I:I

    .line 90
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/d;->J:Z

    iput-boolean v1, p0, Lcn/nubia/camera/panorama/d;->K:Z

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/panorama/d;->L:Ljava/util/ArrayList;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->N:Lcn/nubia/camera/panorama/d$d;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/panorama/d;->O:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Lcn/nubia/camera/panorama/d$b;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/panorama/d$b;-><init>(Lcn/nubia/camera/panorama/d;Lcn/nubia/camera/panorama/d$1;)V

    iput-object v1, p0, Lcn/nubia/camera/panorama/d;->Q:Lcn/nubia/camera/panorama/d$b;

    .line 113
    new-instance v0, Lcn/nubia/camera/panorama/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/panorama/d$1;-><init>(Lcn/nubia/camera/panorama/d;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->S:Lcn/nubia/camera/panorama/e$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    return-object p1
.end method

.method private a(Lcn/nubia/camera/panorama/d$c;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/d;->K:Z

    .line 324
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->N:Lcn/nubia/camera/panorama/d$d;

    if-nez p1, :cond_0

    .line 325
    new-instance p1, Lcn/nubia/camera/panorama/d$d;

    invoke-direct {p1, p0}, Lcn/nubia/camera/panorama/d$d;-><init>(Lcn/nubia/camera/panorama/d;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->N:Lcn/nubia/camera/panorama/d$d;

    .line 326
    invoke-virtual {p1}, Lcn/nubia/camera/panorama/d$d;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/d;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/d;->e(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/d;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/d;->J:Z

    return p1
.end method

.method private b([B)V
    .locals 8

    .line 500
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->L:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/panorama/d$a;

    .line 504
    new-instance v7, Lcn/nubia/camera/panorama/d$c;

    iget v3, v0, Lcn/nubia/camera/panorama/d$a;->a:I

    iget v4, p0, Lcn/nubia/camera/panorama/d;->G:I

    iget-object v6, p0, Lcn/nubia/camera/panorama/d;->E:[B

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/panorama/d$c;-><init>(Lcn/nubia/camera/panorama/d;II[B[B)V

    .line 506
    invoke-direct {p0, v7}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d$c;)V

    .line 508
    iget p1, v0, Lcn/nubia/camera/panorama/d$a;->b:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 512
    :cond_1
    iget p1, v0, Lcn/nubia/camera/panorama/d$a;->b:I

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/d;->a(I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/panorama/d;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/camera/panorama/d;->J:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/panorama/d;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/panorama/d;->O:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/panorama/d;)I
    .locals 2

    .line 31
    iget v0, p0, Lcn/nubia/camera/panorama/d;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/panorama/d;->I:I

    return v0
.end method

.method private d(I)V
    .locals 4

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->c:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->c:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 406
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 408
    iput-object v2, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    .line 409
    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    iput-object v2, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    .line 413
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 417
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget p1, p1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    .line 420
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget p1, p1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    add-int/lit8 p1, p1, 0x0

    int-to-float p1, p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    mul-int/lit8 p1, p1, 0x64

    .line 422
    div-int/lit8 p1, p1, 0x64

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 441
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Direction wrong"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget p1, p1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    .line 430
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget p1, p1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float p1, p1

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    mul-int/lit8 p1, p1, 0x64

    .line 432
    div-int/lit8 p1, p1, 0x64

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    .line 445
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " init InitParam "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mPreviewImage w "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    .line 446
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " h "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " mDispPreviewImage w "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    .line 447
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MorphoPanoramaAdapter"

    .line 445
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/panorama/d;)Lcn/nubia/camera/panorama/d$b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/panorama/d;->Q:Lcn/nubia/camera/panorama/d$b;

    return-object p0
.end method

.method private e(I)V
    .locals 14

    .line 455
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/panorama/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 463
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/d;->c(I)V

    .line 464
    new-instance p1, Lcn/nubia/camera/panorama/e;

    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v0, Lcn/nubia/camera/panorama/e$b;

    const/4 v6, 0x0

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->i:Lcn/nubia/k/a/a;

    sget-object v2, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    .line 467
    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->m:Lcn/nubia/e/a;

    .line 469
    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v9

    iget v10, p0, Lcn/nubia/camera/panorama/d;->l:F

    iget v11, p0, Lcn/nubia/camera/panorama/d;->k:F

    iget v12, p0, Lcn/nubia/camera/panorama/d;->e:I

    iget v13, p0, Lcn/nubia/camera/panorama/d;->n:I

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcn/nubia/camera/panorama/e$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Location;FFII)V

    iget-object v6, p0, Lcn/nubia/camera/panorama/d;->S:Lcn/nubia/camera/panorama/e$a;

    iget-object v7, p0, Lcn/nubia/camera/panorama/d;->o:Lcn/nubia/camera/ad/a;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/panorama/e;-><init>(Lcn/nubia/camera/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/e$b;Lcn/nubia/camera/panorama/e$a;Lcn/nubia/camera/ad/a;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->M:Lcn/nubia/camera/panorama/e;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 475
    invoke-virtual {p1, v0}, Lcn/nubia/camera/panorama/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/panorama/d;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/camera/panorama/d;->H:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/panorama/d;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/camera/panorama/d;->I:I

    return p0
.end method

.method private g()Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->M:Lcn/nubia/camera/panorama/e;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcn/nubia/camera/panorama/e;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 8

    .line 332
    new-instance v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-direct {v0}, Lcom/morpho/core/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-string v1, "YVU420_SEMIPLANAR"

    .line 333
    iput-object v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, p0, Lcn/nubia/camera/panorama/d;->x:I

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    iput-wide v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const/4 v1, 0x0

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->c:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 344
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->c:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 346
    iget v3, p0, Lcn/nubia/camera/panorama/d;->g:I

    .line 347
    iget v4, p0, Lcn/nubia/camera/panorama/d;->z:I

    iget v5, p0, Lcn/nubia/camera/panorama/d;->A:I

    add-int/2addr v4, v5

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v1, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    iput v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    iput v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v3, v6, :cond_0

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v5, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v6, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 379
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    div-int/2addr v0, v2

    sub-int/2addr v0, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 383
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v7, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 350
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 351
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    iput v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 352
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 353
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v4, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v3, v6, :cond_3

    .line 359
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v5, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto :goto_1

    .line 356
    :cond_3
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v6, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 362
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    div-int/2addr v2, v0

    sub-int/2addr v2, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 385
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v0, v2, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-static {v0, v2, v3}, Lcom/morpho/core/MorphoPanoramaGP;->a(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    const v2, 0x46ea6000    # 30000.0f

    const/16 v3, 0x7530

    if-ge v3, v0, :cond_4

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 389
    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v3, v4, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 390
    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v5, v4, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, v4, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 392
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v3, v0, :cond_5

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iput v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 397
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 400
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/d;->J:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->h:Landroid/content/Context;

    return-void
.end method

.method public a(I)V
    .locals 18

    move-object/from16 v7, p0

    .line 190
    iget-object v0, v7, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/panorama/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 196
    :cond_1
    iget v0, v7, Lcn/nubia/camera/panorama/d;->C:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/camera/panorama/d;->c(I)V

    .line 204
    new-instance v8, Lcn/nubia/camera/panorama/e;

    iget-object v2, v7, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v0, v7, Lcn/nubia/camera/panorama/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/panorama/e$b;

    const/4 v10, 0x1

    iget-object v0, v7, Lcn/nubia/camera/panorama/d;->i:Lcn/nubia/k/a/a;

    sget-object v1, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    .line 207
    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v7, Lcn/nubia/camera/panorama/d;->m:Lcn/nubia/e/a;

    .line 209
    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v13

    iget v14, v7, Lcn/nubia/camera/panorama/d;->l:F

    iget v15, v7, Lcn/nubia/camera/panorama/d;->k:F

    iget v0, v7, Lcn/nubia/camera/panorama/d;->e:I

    iget v1, v7, Lcn/nubia/camera/panorama/d;->n:I

    move-object v9, v4

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lcn/nubia/camera/panorama/e$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Location;FFII)V

    iget-object v5, v7, Lcn/nubia/camera/panorama/d;->S:Lcn/nubia/camera/panorama/e$a;

    iget-object v6, v7, Lcn/nubia/camera/panorama/d;->o:Lcn/nubia/camera/ad/a;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/panorama/e;-><init>(Lcn/nubia/camera/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/e$b;Lcn/nubia/camera/panorama/e$a;Lcn/nubia/camera/ad/a;)V

    iput-object v8, v7, Lcn/nubia/camera/panorama/d;->M:Lcn/nubia/camera/panorama/e;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 215
    invoke-virtual {v8, v0}, Lcn/nubia/camera/panorama/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x7

    .line 198
    invoke-direct {v7, v0}, Lcn/nubia/camera/panorama/d;->e(I)V

    return-void
.end method

.method public a(Lcn/nubia/camera/panorama/f;)V
    .locals 0

    .line 131
    check-cast p1, Lcn/nubia/camera/panorama/g;

    iput-object p1, p0, Lcn/nubia/camera/panorama/d;->R:Lcn/nubia/camera/panorama/g;

    return-void
.end method

.method public a([B)V
    .locals 10

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcn/nubia/camera/panorama/d;->g()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/camera/panorama/d;->K:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 237
    :cond_0
    iget v0, p0, Lcn/nubia/camera/panorama/d;->G:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/panorama/d;->G:I

    .line 238
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->D:[I

    iget-object v6, p0, Lcn/nubia/camera/panorama/d;->E:[B

    iget-object v7, p0, Lcn/nubia/camera/panorama/d;->F:[I

    iget-object v8, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/morpho/core/MorphoPanoramaGP;->a([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v0

    const-string v2, "MorphoPanoramaAdapter"

    if-eqz v0, :cond_1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachPreview data failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->F:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    const/4 v4, 0x6

    if-eqz v0, :cond_5

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachPreview Status : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->F:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->F:[I

    aget v5, v0, v3

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    aget v5, v0, v3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_4

    aget v5, v0, v3

    if-ne v5, v4, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    aget v5, v0, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 253
    aget p1, v0, v3

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/d;->a(I)V

    return-void

    .line 256
    :cond_3
    aget v0, v0, v3

    goto :goto_1

    .line 250
    :cond_4
    :goto_0
    aget p1, v0, v3

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/d;->a(I)V

    return-void

    .line 268
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->B:[I

    invoke-virtual {v0, v5}, Lcom/morpho/core/MorphoPanoramaGP;->a([I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentDirection  failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_6
    iget v0, p0, Lcn/nubia/camera/panorama/d;->C:I

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_8

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 278
    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 279
    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 280
    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 281
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 282
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    iget-object v8, p0, Lcn/nubia/camera/panorama/d;->s:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 288
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 289
    iget-object v8, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v8, v6, v7}, Lcom/morpho/core/MorphoPanoramaGP;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I

    if-ge v4, v5, :cond_7

    int-to-float v0, v5

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_2

    :cond_7
    int-to-float v2, v4

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 292
    :goto_2
    iget v2, v6, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Point;->x:I

    .line 293
    iget v2, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Point;->y:I

    .line 294
    iget v2, v7, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Point;->x:I

    .line 295
    iget v2, v7, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {v0}, Lcn/nubia/camera/panorama/i;->l_()V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->R:Lcn/nubia/camera/panorama/g;

    iget-object v2, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->B:[I

    aget v4, v4, v3

    invoke-virtual {v0, v2, v6, v4}, Lcn/nubia/camera/panorama/g;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    goto :goto_3

    .line 302
    :cond_8
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->r:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    sget v4, Lcn/nubia/camera/panorama/d;->P:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const-string v0, "2  -> attachPreview yuv data"

    .line 306
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_9
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->D:[I

    aget v0, v0, v3

    if-ltz v0, :cond_a

    .line 311
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/d;->K:Z

    .line 312
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->L:Ljava/util/ArrayList;

    new-instance v2, Lcn/nubia/camera/panorama/d$a;

    iget-object v4, p0, Lcn/nubia/camera/panorama/d;->D:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->F:[I

    aget v5, v5, v3

    invoke-direct {v2, p0, v4, v5}, Lcn/nubia/camera/panorama/d$a;-><init>(Lcn/nubia/camera/panorama/d;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/d;->b([B)V

    .line 314
    iget p1, p0, Lcn/nubia/camera/panorama/d;->H:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/camera/panorama/d;->H:I

    .line 316
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/panorama/d;->B:[I

    aget p1, p1, v3

    iput p1, p0, Lcn/nubia/camera/panorama/d;->C:I

    :cond_b
    :goto_4
    return-void
.end method

.method public b()V
    .locals 6

    const-string v0, "MorphoPanoramaAdapter"

    const-string v1, "startCapture"

    .line 144
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "start panorama capture failed, morphor core is not null"

    .line 146
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v2}, Lcn/nubia/camera/panorama/d;->c(I)V

    return-void

    .line 150
    :cond_0
    iput v2, p0, Lcn/nubia/camera/panorama/d;->v:I

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/camera/panorama/d;->w:J

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/panorama/d;->h()V

    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 155
    new-instance v4, Lcom/morpho/core/MorphoPanoramaGP;

    invoke-direct {v4}, Lcom/morpho/core/MorphoPanoramaGP;-><init>()V

    iput-object v4, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    .line 156
    iget-object v5, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-virtual {v4, v5, v3}, Lcom/morpho/core/MorphoPanoramaGP;->a(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize the MorphoPanoramaGP failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    iget v4, p0, Lcn/nubia/camera/panorama/d;->y:I

    invoke-virtual {v3, v4}, Lcom/morpho/core/MorphoPanoramaGP;->a(I)I

    .line 161
    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v3, v2}, Lcom/morpho/core/MorphoPanoramaGP;->b(I)I

    .line 163
    iget v3, p0, Lcn/nubia/camera/panorama/d;->z:I

    iget v4, p0, Lcn/nubia/camera/panorama/d;->A:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcn/nubia/camera/panorama/d;->d(I)V

    .line 164
    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v3, v2, v2}, Lcom/morpho/core/MorphoPanoramaGP;->a(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUseSensorAsisst failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->p:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v3}, Lcom/morpho/core/MorphoPanoramaGP;->b()I

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "morpho panorama gp start failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->B:[I

    iget-object v3, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v3, v3, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    aput v3, v0, v2

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->q:Lcom/morpho/core/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcn/nubia/camera/panorama/d;->C:I

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcn/nubia/camera/panorama/d;->G:I

    .line 176
    iput v2, p0, Lcn/nubia/camera/panorama/d;->H:I

    .line 177
    iput v2, p0, Lcn/nubia/camera/panorama/d;->I:I

    .line 178
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/d;->J:Z

    .line 179
    iput-boolean v2, p0, Lcn/nubia/camera/panorama/d;->K:Z

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/panorama/d;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget v0, p0, Lcn/nubia/camera/panorama/d;->e:I

    iput v0, p0, Lcn/nubia/camera/panorama/d;->f:I

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/d;->d()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "MorphoPanoramaAdapter"

    const-string v1, "waitAttachStillImageTaskDone E"

    .line 480
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-boolean v1, p0, Lcn/nubia/camera/panorama/d;->K:Z

    if-eqz v1, :cond_0

    .line 483
    iget v1, p0, Lcn/nubia/camera/panorama/d;->H:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/camera/panorama/d;->H:I

    .line 485
    :cond_0
    :goto_0
    iget v1, p0, Lcn/nubia/camera/panorama/d;->H:I

    iget v2, p0, Lcn/nubia/camera/panorama/d;->I:I

    if-le v1, v2, :cond_1

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveOutputImageTask mispictake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/panorama/d;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " req "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/panorama/d;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/panorama/d;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    .line 488
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 490
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "waitAttachStillImageTaskDone X"

    .line 494
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcn/nubia/camera/panorama/d;->N:Lcn/nubia/camera/panorama/d$d;

    return-void
.end method

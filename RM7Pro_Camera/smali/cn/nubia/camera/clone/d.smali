.class public Lcn/nubia/camera/clone/d;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/clone/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/clone/d$c;,
        Lcn/nubia/camera/clone/d$b;,
        Lcn/nubia/camera/clone/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/nubia/camera/clone/l;

.field private i:I

.field private j:Lcn/nubia/camera/clone/i;

.field private k:Landroid/util/Size;

.field private l:Lcn/nubia/camera/clone/d$a;

.field private m:Lcn/nubia/camera/clone/k;

.field private n:Lcn/nubia/k/a/a;

.field private o:Lcn/nubia/camera/q/c;

.field private p:Z

.field private q:Z

.field private r:Lcn/nubia/camera/clone/c;

.field private s:Lcn/nubia/camera/clone/d$c;

.field private t:Landroid/widget/RelativeLayout;

.field private final u:Ljava/lang/Object;

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Landroid/os/Handler;

.field private z:Lcn/nubia/camera/k/z;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 195
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcn/nubia/camera/clone/d;->a:I

    .line 66
    iput v0, p0, Lcn/nubia/camera/clone/d;->b:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    .line 68
    iput v0, p0, Lcn/nubia/camera/clone/d;->i:I

    .line 69
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    .line 70
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->k:Landroid/util/Size;

    .line 71
    new-instance v2, Lcn/nubia/camera/clone/d$a;

    invoke-direct {v2, p0}, Lcn/nubia/camera/clone/d$a;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object v2, p0, Lcn/nubia/camera/clone/d;->l:Lcn/nubia/camera/clone/d$a;

    .line 72
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    .line 73
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->n:Lcn/nubia/k/a/a;

    .line 74
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->o:Lcn/nubia/camera/q/c;

    .line 76
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->p:Z

    .line 77
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->q:Z

    .line 79
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    .line 80
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->s:Lcn/nubia/camera/clone/d$c;

    .line 82
    iput-object v1, p0, Lcn/nubia/camera/clone/d;->t:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/clone/d;->u:Ljava/lang/Object;

    .line 86
    iput v0, p0, Lcn/nubia/camera/clone/d;->v:I

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcn/nubia/camera/clone/d;->w:I

    const/4 v0, 0x2

    .line 88
    iput v0, p0, Lcn/nubia/camera/clone/d;->x:I

    .line 89
    new-instance v0, Lcn/nubia/camera/clone/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/d$1;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->y:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcn/nubia/camera/clone/d$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/d$2;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->z:Lcn/nubia/camera/k/z;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 200
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcn/nubia/camera/clone/d;->a:I

    .line 66
    iput p1, p0, Lcn/nubia/camera/clone/d;->b:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    .line 68
    iput p1, p0, Lcn/nubia/camera/clone/d;->i:I

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->k:Landroid/util/Size;

    .line 71
    new-instance v1, Lcn/nubia/camera/clone/d$a;

    invoke-direct {v1, p0}, Lcn/nubia/camera/clone/d$a;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object v1, p0, Lcn/nubia/camera/clone/d;->l:Lcn/nubia/camera/clone/d$a;

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->n:Lcn/nubia/k/a/a;

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->o:Lcn/nubia/camera/q/c;

    .line 76
    iput-boolean p1, p0, Lcn/nubia/camera/clone/d;->p:Z

    .line 77
    iput-boolean p1, p0, Lcn/nubia/camera/clone/d;->q:Z

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->s:Lcn/nubia/camera/clone/d$c;

    .line 82
    iput-object v0, p0, Lcn/nubia/camera/clone/d;->t:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->u:Ljava/lang/Object;

    .line 86
    iput p1, p0, Lcn/nubia/camera/clone/d;->v:I

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lcn/nubia/camera/clone/d;->w:I

    const/4 p1, 0x2

    .line 88
    iput p1, p0, Lcn/nubia/camera/clone/d;->x:I

    .line 89
    new-instance p1, Lcn/nubia/camera/clone/d$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/clone/d$1;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object p1, p0, Lcn/nubia/camera/clone/d;->y:Landroid/os/Handler;

    .line 112
    new-instance p1, Lcn/nubia/camera/clone/d$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/clone/d$2;-><init>(Lcn/nubia/camera/clone/d;)V

    iput-object p1, p0, Lcn/nubia/camera/clone/d;->z:Lcn/nubia/camera/k/z;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;
    .locals 2

    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 404
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".jpg"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "_display_name"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 373
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 374
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 375
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 376
    sget v3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget v3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget v3, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v2, v2, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v1, v1, v5

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 385
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/d;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 394
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 396
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/d;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcn/nubia/camera/clone/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/clone/d;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcn/nubia/camera/clone/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    return-void
.end method

.method private b([BII)V
    .locals 25

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v1, p3

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/af/a;->B:Lcn/nubia/camera/af/a;

    invoke-virtual {v3}, Lcn/nubia/camera/af/a;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v10

    .line 340
    invoke-static {v8, v9}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    mul-int v2, v0, v1

    .line 341
    new-array v3, v2, [I

    const/4 v12, 0x0

    move v4, v12

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    .line 343
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v6, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 345
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    iget v1, v7, Lcn/nubia/camera/clone/d;->i:I

    if-eqz v1, :cond_1

    .line 347
    invoke-static {v0, v1}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object/from16 v17, v0

    .line 353
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 354
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v10

    move-wide v3, v8

    .line 349
    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/clone/d;->a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;

    move-result-object v21

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    .line 356
    new-instance v1, Lcn/nubia/k/b/b;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/clone/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v15

    iget-object v2, v7, Lcn/nubia/camera/clone/d;->n:Lcn/nubia/k/a/a;

    .line 361
    invoke-direct {v7, v8, v9}, Lcn/nubia/camera/clone/d;->a(J)Landroid/util/SparseArray;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-lez v0, :cond_2

    new-instance v3, Lcn/nubia/m/b;

    invoke-direct {v3, v12, v0}, Lcn/nubia/m/b;-><init>(II)V

    move-object/from16 v24, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_1
    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v24}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 368
    iget-object v0, v7, Lcn/nubia/camera/clone/d;->n:Lcn/nubia/k/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/clone/l;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcn/nubia/camera/clone/d;
    .locals 2

    .line 225
    new-instance v0, Lcn/nubia/camera/clone/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/clone/d;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->n()V

    .line 212
    new-instance v0, Lcn/nubia/camera/clone/l;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/clone/d;->l:Lcn/nubia/camera/clone/d$a;

    invoke-direct {v0, v1, p1, p0, v2}, Lcn/nubia/camera/clone/l;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/View;Lcn/nubia/camera/clone/l$a;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    .line 214
    iget p1, p0, Lcn/nubia/camera/clone/d;->a:I

    iget v1, p0, Lcn/nubia/camera/clone/d;->b:I

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/clone/l;->a(II)V

    const/4 p1, 0x0

    .line 215
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->a()[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->a()[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/d;->a(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/clone/d;)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/clone/d;->u:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/clone/d;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/clone/d;->y:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/clone/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 1

    .line 240
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/d;->a:I

    .line 241
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/d;->b:I

    return-void
.end method

.method private o()V
    .locals 2

    .line 496
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->q:Z

    if-nez v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Lcn/nubia/camera/clone/c;->b()V

    :cond_1
    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->q:Z

    :cond_2
    return-void
.end method

.method private p()V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->q:Z

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcn/nubia/camera/clone/c;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->q:Z

    .line 514
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->s:Lcn/nubia/camera/clone/d$c;

    if-eqz v0, :cond_2

    .line 515
    invoke-interface {v0}, Lcn/nubia/camera/clone/d$c;->h_()V

    :cond_2
    return-void
.end method

.method private q()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayShootPictures time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 534
    invoke-virtual {v0, p1}, Lcn/nubia/camera/clone/l;->a(I)V

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcn/nubia/camera/clone/c;

    .line 537
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/clone/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/camera/clone/d$b;-><init>(Lcn/nubia/camera/clone/d;Lcn/nubia/camera/clone/d$1;)V

    iget-object v3, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/clone/c;-><init>(Lcn/nubia/camera/clone/d;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/clone/c$a;Lcn/nubia/camera/clone/l;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    .line 540
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    invoke-virtual {v0, p2, p1}, Lcn/nubia/camera/clone/c;->a(II)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 603
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/clone/l;->a(IZ)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "CloneFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 591
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/camera/clone/d$c;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcn/nubia/camera/clone/d;->s:Lcn/nubia/camera/clone/d$c;

    return-void
.end method

.method public a(Lcn/nubia/camera/clone/k;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    .line 246
    iput-object p2, p0, Lcn/nubia/camera/clone/d;->n:Lcn/nubia/k/a/a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "ui_change_clone"

    .line 327
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/d;->c(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/d;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->p:Z

    if-nez p1, :cond_0

    .line 331
    iget-object p1, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/k;->u()V

    .line 332
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/d;->b(Z)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->p()V

    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/clone/d;->b([BII)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 307
    iget-object p1, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Lcn/nubia/camera/clone/l;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcn/nubia/camera/clone/d;->r:Lcn/nubia/camera/clone/c;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/c;->c()V

    :cond_0
    return-void
.end method

.method public c()Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;
    .locals 1

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->l:Lcn/nubia/camera/clone/d$a;

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcn/nubia/camera/clone/i;

    .line 299
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0040

    const v3, 0x7f06004f

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/clone/i;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    .line 302
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/i;->a()V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/k;->t()V

    .line 318
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->p()V

    return-void
.end method

.method public k()Z
    .locals 3

    .line 420
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CloneFragment"

    const-string v2, "onBackPressed"

    .line 421
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcn/nubia/camera/clone/d;->y:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcn/nubia/camera/clone/d;->y:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/nubia/camera/clone/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 426
    monitor-exit v0

    return v1

    .line 428
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 466
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/d;->b(Z)V

    .line 467
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->d()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/clone/d;->i:I

    const-string v1, "ui_change_clone"

    .line 468
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/d;->d(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/d;->f(Ljava/lang/String;)V

    .line 470
    iput-boolean v0, p0, Lcn/nubia/camera/clone/d;->p:Z

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->l()V

    .line 474
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    new-instance v1, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iget-object v2, p0, Lcn/nubia/camera/clone/d;->z:Lcn/nubia/camera/k/z;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/clone/k;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 478
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/l;->a(Z)V

    :cond_2
    return-void
.end method

.method public m()Z
    .locals 2

    .line 483
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcn/nubia/camera/clone/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 485
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->o()V

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->p()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 170
    iget-boolean p3, p0, Lcn/nubia/camera/clone/d;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c003f

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "CloneFragment"

    const-string p3, "view == null"

    .line 176
    invoke-static {p2, p3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/d;->d(Landroid/view/View;)V

    const p2, 0x7f0900e0

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/clone/d;->t:Landroid/widget/RelativeLayout;

    .line 180
    invoke-virtual {p0, p2}, Lcn/nubia/camera/clone/d;->b(Landroid/view/View;)V

    .line 181
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/clone/d;->o:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->d:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 286
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->e()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 188
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->o:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->d:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->j:Lcn/nubia/camera/clone/i;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lcn/nubia/camera/clone/i;->b()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->c()V

    .line 276
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/clone/d;->p()V

    .line 277
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcn/nubia/camera/clone/d;->d:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->b()V

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->c:Lcn/nubia/camera/clone/l;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/clone/d;->m:Lcn/nubia/camera/clone/k;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/k;->t()V

    .line 261
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    return-void
.end method

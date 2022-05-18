.class public Lcn/nubia/camera/bd/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

.field private b:Lcom/android/preference/IconListPreference;

.field private c:Lcn/nubia/camera/bd/g;

.field private i:Lcn/nubia/camera/bd/f;

.field private j:Landroid/util/Size;

.field private k:Landroid/util/Size;

.field private l:Lcn/nubia/camera/k/q;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcn/nubia/camera/q/c;

.field private o:Lcn/nubia/camera/zoom/arc/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    .line 75
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    .line 77
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->m:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->n:Lcn/nubia/camera/q/c;

    .line 395
    iput-object v0, p0, Lcn/nubia/camera/bd/b;->o:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->m:Landroid/widget/RelativeLayout;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->n:Lcn/nubia/camera/q/c;

    .line 395
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->o:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 315
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
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

    .line 318
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 325
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

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 332
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 333
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 334
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 335
    sget v3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    sget v3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    sget v3, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v2, v2, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v1, v1, v5

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 340
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 344
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/bd/b;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/bd/f;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

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

    .line 349
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 353
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 355
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bd/b;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bd/b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bd/b;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/camera/bd/b;->b(Z)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 26

    move-object/from16 v8, p0

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcn/nubia/camera/a/a;

    const-string v10, "ZoomBlurFragment"

    if-nez v9, :cond_0

    const-string v0, "[savePreview] activityBase is null, return"

    .line 272
    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v15

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 277
    sget-object v0, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    invoke-static {v15, v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v13

    .line 278
    invoke-static {v11, v12}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v14

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    int-to-float v1, v0

    move-object/from16 v7, p4

    .line 280
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 282
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    move/from16 v5, p2

    move/from16 v6, p3

    goto :goto_0

    :cond_1
    move/from16 v6, p2

    move/from16 v5, p3

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v13

    move-wide v3, v11

    move/from16 v7, v16

    .line 289
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/bd/b;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v23

    .line 296
    new-instance v0, Lcn/nubia/k/b/c;

    invoke-virtual {v9}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    const/16 v19, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 298
    invoke-direct {v8, v11, v12}, Lcn/nubia/camera/bd/b;->a(J)Landroid/util/SparseArray;

    move-result-object v22

    new-instance v3, Lcn/nubia/camera/bd/b$5;

    invoke-direct {v3, v8}, Lcn/nubia/camera/bd/b$5;-><init>(Lcn/nubia/camera/bd/b;)V

    new-instance v4, Lcn/nubia/m/b;

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcn/nubia/m/b;-><init>(II)V

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v15

    move-object v1, v15

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-direct/range {v11 .. v25}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v2, v3}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 306
    invoke-virtual {v9, v6}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 307
    iget-object v2, v8, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    invoke-virtual {v2, v6}, Lcn/nubia/camera/bd/f;->a(Z)V

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/bd/b;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object v1, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 383
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/bd/b;)Landroid/util/Size;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    return-object p0
.end method

.method public static d()Lcn/nubia/camera/bd/b;
    .locals 2

    .line 93
    new-instance v0, Lcn/nubia/camera/bd/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/bd/b;-><init>(I)V

    return-object v0
.end method

.method static synthetic d(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_zoomblur_type_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/bd/f;->b(Z)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlurModePreference.getValue()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomBlurFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v0, 0x7f0901b6

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v0, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V

    .line 151
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/bd/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bd/b$1;-><init>(Lcn/nubia/camera/bd/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setItemClickListener(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;)V

    .line 164
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/bd/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bd/b$2;-><init>(Lcn/nubia/camera/bd/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/bd/b;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 215
    new-instance v0, Lcn/nubia/camera/k/x;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->u()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    .line 217
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    .line 218
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 219
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 221
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    .line 222
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPictureSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->j:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPreviewSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomBlurFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j()V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Lcn/nubia/camera/bd/b$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bd/b$6;-><init>(Lcn/nubia/camera/bd/b;)V

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->o:Lcn/nubia/camera/zoom/arc/a$a;

    .line 413
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->o:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->o:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/bd/g;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object p1, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 392
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 239
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 240
    new-instance v0, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object v0, p0, Lcn/nubia/camera/bd/b;->l:Lcn/nubia/camera/k/q;

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/g;->e()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const-string v1, "ZoomBlurFragment"

    if-nez v0, :cond_1

    const-string v0, "onShutterButtonClick failed, surfacetexture is null."

    .line 243
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    if-nez v2, :cond_2

    const-string v0, "onShutterButtonClick failed, mZoomBlurRender is null."

    .line 247
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_2
    new-instance v1, Lcn/nubia/camera/bd/b$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bd/b$3;-><init>(Lcn/nubia/camera/bd/b;)V

    invoke-virtual {v2, v1}, Lcn/nubia/camera/bd/f;->a(Lcom/android/common/c/f$b;)V

    .line 258
    new-instance v1, Lcn/nubia/camera/bd/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bd/b$4;-><init>(Lcn/nubia/camera/bd/b;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->l:Lcn/nubia/camera/k/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/camera/bd/g;->b(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public e()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method protected i_()V
    .locals 2

    const-string v0, "yuweiwei"

    const-string v1, "onPreferenceGroupUpdated"

    .line 126
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bd/b;->d(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 101
    iget-boolean p3, p0, Lcn/nubia/camera/bd/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00ce

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "yuweiwei"

    const-string p3, "onCreateView"

    .line 105
    invoke-static {p2, p3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/camera/bd/b;->d(Landroid/view/View;)V

    const p2, 0x7f0900ac

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/bd/b;->m:Landroid/widget/RelativeLayout;

    .line 108
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/bd/b;->n:Lcn/nubia/camera/q/c;

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/bd/b;->j()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 116
    iget-boolean v0, p0, Lcn/nubia/camera/bd/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->n:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    .line 121
    invoke-direct {p0}, Lcn/nubia/camera/bd/b;->l()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/f;->a()V

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->c:Lcn/nubia/camera/bd/g;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcn/nubia/camera/bd/g;->H()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 188
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    const-string v0, "ZoomBlurFragment"

    const-string v1, "onResume"

    .line 189
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcn/nubia/camera/bd/b;->i()V

    .line 191
    new-instance v1, Lcn/nubia/camera/bd/f;

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    .line 192
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/bd/b;->k:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {v1, v2}, Lcn/nubia/camera/bd/f;-><init>(F)V

    iput-object v1, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    .line 193
    iget-object v2, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bd/f;->b(Z)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlurModePreference.getValue()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bd/b;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {v2}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b;->i:Lcn/nubia/camera/bd/f;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 198
    invoke-virtual {p0}, Lcn/nubia/camera/bd/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    return-void
.end method

.method public p()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/bd/b;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 375
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    :cond_0
    return-void
.end method

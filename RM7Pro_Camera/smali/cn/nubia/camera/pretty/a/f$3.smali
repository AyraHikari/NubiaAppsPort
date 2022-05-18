.class Lcn/nubia/camera/pretty/a/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->g()Lcn/nubia/camera/pretty/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;
    .locals 1

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 421
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    invoke-static {p3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 423
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_display_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    .line 425
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 432
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(FFII)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFII)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 394
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v1}, Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[aper,"

    goto :goto_0

    :cond_0
    const-string v1, "[bper,"

    .line 396
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    .line 397
    invoke-static {v2}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v3}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0251

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_mirror_mode_key"

    invoke-virtual {v2, v4, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    .line 398
    invoke-static {v3}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0255

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 399
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v3}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->G()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 400
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 401
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",done;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 403
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "userComment: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PrettyBokehShutterButtonClickListener"

    invoke-static {p3, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget p2, Lcn/nubia/d/a;->ag:I

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget p1, Lcn/nubia/d/a;->H:I

    new-instance p2, Lcn/nubia/d/l;

    iget-object p3, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p3}, Lcn/nubia/camera/pretty/a/f;->h(Lcn/nubia/camera/pretty/a/f;)F

    move-result p3

    const p4, 0x3c23d70a    # 0.01f

    invoke-direct {p2, p3, p4}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    const-string p2, "pref_picture_artist_info"

    invoke-virtual {p1, p2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 412
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 413
    sget p2, Lcn/nubia/d/a;->u:I

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/pretty/a/b;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v14, p1

    const-string v15, "PrettyBokehShutterButtonClickListener"

    const-string v0, "onComplete"

    .line 361
    invoke-static {v15, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, v14, Lcn/nubia/camera/pretty/a/b;->a:[B

    const/16 v13, 0x3e8

    if-nez v0, :cond_0

    .line 363
    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->g(Lcn/nubia/camera/pretty/a/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->g(Lcn/nubia/camera/pretty/a/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 367
    :cond_0
    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    iget-object v1, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v1}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    iget-object v2, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v2}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v17

    .line 369
    iget-object v0, v14, Lcn/nubia/camera/pretty/a/b;->a:[B

    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v18

    .line 370
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v12, 0x1

    .line 371
    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    iget-object v1, v14, Lcn/nubia/camera/pretty/a/b;->a:[B

    const/4 v2, 0x0

    iget-object v3, v14, Lcn/nubia/camera/pretty/a/b;->a:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 373
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 374
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 375
    iget-object v0, v14, Lcn/nubia/camera/pretty/a/b;->b:[B

    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v9

    .line 376
    new-instance v11, Lcn/nubia/camera/pretty/a/c;

    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    .line 377
    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v19

    iget-object v0, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    .line 378
    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v20

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/pretty/a/f$3;->a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;

    move-result-object v0

    iget v1, v14, Lcn/nubia/camera/pretty/a/b;->e:F

    iget v2, v14, Lcn/nubia/camera/pretty/a/b;->f:F

    iget v3, v14, Lcn/nubia/camera/pretty/a/b;->d:I

    .line 383
    invoke-direct {v8, v1, v2, v3, v9}, Lcn/nubia/camera/pretty/a/f$3;->a(FFII)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move-object v9, v11

    move-object v3, v11

    move-object/from16 v11, v19

    move v4, v12

    move-object/from16 v12, v20

    move v5, v13

    move-object v13, v0

    move-object/from16 v14, p1

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    invoke-direct/range {v9 .. v19}, Lcn/nubia/camera/pretty/a/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/k/a/a;Lcn/nubia/l/a/b;Landroid/content/ContentValues;Lcn/nubia/camera/pretty/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;ILcn/nubia/k/b/d;)V

    .line 386
    iget-object v1, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v1}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v1

    .line 387
    iget-object v2, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v2}, Lcn/nubia/camera/pretty/a/f;->g(Lcn/nubia/camera/pretty/a/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v2, v8, Lcn/nubia/camera/pretty/a/f$3;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v2}, Lcn/nubia/camera/pretty/a/f;->g(Lcn/nubia/camera/pretty/a/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lcn/nubia/camera/aimoon/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/g$b;,
        Lcn/nubia/camera/aimoon/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Landroid/content/Context;

.field private d:F

.field private e:F

.field private f:Lcn/nubia/camera/aimoon/g$a;

.field private g:Lcn/nubia/camera/aimoon/g$a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcn/nubia/camera/aimoon/g$b;

.field private q:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;ZFFI)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "AIMoonProcess"

    const/4 v1, 0x3

    .line 48
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    .line 58
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->l:Z

    const-wide/16 v1, -0x1

    .line 63
    iput-wide v1, p0, Lcn/nubia/camera/aimoon/g;->m:J

    .line 68
    iput v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    .line 72
    iput p3, p0, Lcn/nubia/camera/aimoon/g;->d:F

    .line 73
    iput p4, p0, Lcn/nubia/camera/aimoon/g;->e:F

    .line 74
    iput p5, p0, Lcn/nubia/camera/aimoon/g;->q:I

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 76
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    .line 77
    iput-boolean p2, p0, Lcn/nubia/camera/aimoon/g;->k:Z

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/af/a;->a()I

    move-result p3

    iget-object p4, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->o:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/g;->start()V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;
    .locals 1

    .line 437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 438
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "_data"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 440
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_display_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    .line 442
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; height: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AIMoonProcess"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    iget-object p1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 451
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(ILandroid/hardware/camera2/CaptureResult;J)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/camera2/CaptureResult;",
            "J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 366
    sget v1, Lcn/nubia/d/a;->j:I

    invoke-static {p1}, Lcn/nubia/d/a;->d(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget p1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget p1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    invoke-static {v0, p3, p4}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 373
    iget-object p1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    const-string p3, "pref_picture_artist_info"

    invoke-virtual {p1, p3}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 376
    sget p3, Lcn/nubia/d/a;->u:I

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_4

    .line 383
    iget-object p1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {p3, p4, v1, v2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 389
    :cond_1
    sget p1, Lcn/nubia/d/a;->K:I

    sget-object p3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget-object p4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    mul-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x64

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 393
    sget p3, Lcn/nubia/d/a;->G:I

    const-wide/32 v1, 0x3b9aca00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcn/nubia/camera/aimoon/g;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 397
    sget p3, Lcn/nubia/d/a;->H:I

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcn/nubia/camera/aimoon/g;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 401
    sget p3, Lcn/nubia/d/a;->ad:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcn/nubia/camera/aimoon/g;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_2

    .line 406
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    :goto_0
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 414
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 416
    :cond_3
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 431
    new-instance v0, Lcn/nubia/d/l;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Long;)Lcn/nubia/d/l;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 424
    new-instance v0, Lcn/nubia/d/l;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    const-string v0, "AIMoonProcess"

    const-string v1, "MoonApi updateCenterPosRatio"

    .line 250
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v1, p0, Lcn/nubia/camera/aimoon/g;->e:F

    iget v2, p0, Lcn/nubia/camera/aimoon/g;->d:F

    invoke-static {v1, v2}, Lcn/nubia/camera/aimoon/l;->a(FF)F

    move-result v1

    .line 252
    iget v2, p0, Lcn/nubia/camera/aimoon/g;->e:F

    iget v3, p0, Lcn/nubia/camera/aimoon/g;->d:F

    invoke-static {p1, v2, v3, v1}, Lcn/nubia/camera/aimoon/l;->a(Landroid/content/Context;FFF)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 255
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 256
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 257
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    const/high16 v5, 0x44b40000    # 1440.0f

    const/high16 v6, 0x44870000    # 1080.0f

    sub-float v7, v4, v2

    div-float/2addr v7, v6

    sub-float v6, p1, v3

    div-float/2addr v6, v5

    add-float/2addr v4, v2

    const/high16 v2, 0x45070000    # 2160.0f

    div-float/2addr v4, v2

    add-float/2addr p1, v3

    const/high16 v2, 0x45340000    # 2880.0f

    div-float/2addr p1, v2

    .line 271
    invoke-static {v4, p1, v7, v6, v1}, Lcom/zte/moon/MoonApi;->setCenterPosRatio(FFFFF)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "centerWRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; centerHRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; widthRatio: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; heightRatio: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; moonRectScale: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a([BIIILandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10

    const-string v0, "AIMoonProcess"

    const-string v1, "addWaterMarkAndSave"

    .line 307
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    new-instance v1, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v1, p1}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 311
    invoke-static {v1, v0, p2, p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Landroid/graphics/Bitmap;II)V

    .line 312
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 314
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 315
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v1

    .line 314
    invoke-virtual {p1, p4, v1, v0}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 316
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 318
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 319
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 320
    iget-object v9, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;)V

    return-void
.end method

.method private a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v9, p0

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 326
    new-instance v15, Lcn/nubia/k/b/f;

    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 327
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v12

    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v13

    move/from16 v14, p4

    move-object/from16 v0, p5

    .line 328
    invoke-direct {v9, v14, v0, v1, v2}, Lcn/nubia/camera/aimoon/g;->a(ILandroid/hardware/camera2/CaptureResult;J)Landroid/util/SparseArray;

    move-result-object v16

    iget-object v10, v9, Lcn/nubia/camera/aimoon/g;->o:Ljava/lang/String;

    move-object/from16 v8, p1

    array-length v7, v8

    move-object/from16 v0, p0

    move-object v3, v10

    move-object/from16 v4, p6

    move/from16 v5, p4

    move/from16 v6, p2

    move/from16 v17, v7

    move/from16 v7, p3

    move/from16 v8, v17

    .line 330
    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/aimoon/g;->a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;

    move-result-object v18

    const/16 v20, 0x0

    move-object v0, v10

    move-object v10, v15

    move-object/from16 v14, p1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, p6

    move/from16 v19, p4

    invoke-direct/range {v10 .. v20}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    .line 332
    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Lcn/nubia/l/a/b;)V
    .locals 24

    move-object/from16 v9, p0

    move/from16 v15, p4

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 337
    new-instance v14, Lcn/nubia/k/b/h;

    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 338
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v13

    move-object/from16 v0, p5

    .line 339
    invoke-direct {v9, v15, v0, v1, v2}, Lcn/nubia/camera/aimoon/g;->a(ILandroid/hardware/camera2/CaptureResult;J)Landroid/util/SparseArray;

    move-result-object v17

    iget-object v12, v9, Lcn/nubia/camera/aimoon/g;->o:Ljava/lang/String;

    move-object/from16 v10, p1

    array-length v8, v10

    move-object/from16 v0, p0

    move-object v3, v12

    move-object/from16 v4, p6

    move/from16 v5, p4

    move/from16 v6, p2

    move/from16 v7, p3

    .line 341
    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/aimoon/g;->a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;

    move-result-object v21

    new-instance v0, Lcn/nubia/m/b;

    iget-object v1, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 343
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, v9, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v15, v1}, Lcn/nubia/m/b;-><init>(II)V

    const/16 v22, 0x0

    move-object v10, v14

    move-object v1, v12

    move-object/from16 v12, p7

    move-object v2, v14

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v18, v1

    move-object/from16 v19, p6

    move/from16 v20, p4

    move-object/from16 v23, v0

    invoke-direct/range {v10 .. v23}, Lcn/nubia/k/b/h;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 344
    iget-object v0, v9, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private a([BIILjava/lang/String;)V
    .locals 2

    .line 348
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "x "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".yuv"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 354
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Lcn/nubia/camera/aimoon/g$a;)[B
    .locals 6

    const-string v0, "AIMoonProcess"

    const-string v1, "processArcSoftAIMoon"

    .line 277
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 281
    new-instance v1, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;

    invoke-direct {v1}, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;-><init>()V

    .line 282
    new-instance v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;

    invoke-direct {v2}, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;-><init>()V

    .line 284
    new-instance v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;

    invoke-direct {v3}, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;-><init>()V

    .line 286
    iget v4, p1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iput v4, v1, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Width:I

    iput v4, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Width:I

    .line 287
    iget v4, p1, Lcn/nubia/camera/aimoon/g$a;->b:I

    iput v4, v1, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Height:I

    iput v4, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Height:I

    const/16 v4, 0x802

    .line 288
    iput v4, v1, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->u32PixelArrayFormat:I

    iput v4, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->u32PixelArrayFormat:I

    .line 289
    iget-object p1, p1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iput-object p1, v1, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->ppu8Plane:[B

    .line 290
    iget p1, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Width:I

    iget v4, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->i32Height:I

    mul-int/2addr p1, v4

    mul-int/lit8 p1, p1, 0x3

    const/4 v4, 0x2

    div-int/2addr p1, v4

    new-array p1, p1, [B

    iput-object p1, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->ppu8Plane:[B

    new-array p1, v4, [Lcom/arcsoft/aimoon/AIMoon$MRECT;

    .line 292
    iput-object p1, v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;->nRect:[Lcom/arcsoft/aimoon/AIMoon$MRECT;

    .line 293
    iput v4, v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;->nNum:I

    .line 295
    iget-wide v4, p0, Lcn/nubia/camera/aimoon/g;->m:J

    invoke-static {v4, v5, v1, v3}, Lcom/arcsoft/aimoon/AIMoon;->detect(JLcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;)I

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect result: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;->nNum:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", rect{"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;->nRect:[Lcom/arcsoft/aimoon/AIMoon$MRECT;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget p1, v3, Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;->nNum:I

    if-lez p1, :cond_0

    .line 298
    iget-wide v4, p0, Lcn/nubia/camera/aimoon/g;->m:J

    invoke-static {v4, v5, v1, v3, v2}, Lcom/arcsoft/aimoon/AIMoon;->process(JLcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;)I

    move-result p1

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, v2, Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;->ppu8Plane:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->p:Lcn/nubia/camera/aimoon/g$b;

    .line 459
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/g;->b()V

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcn/nubia/camera/aimoon/g$b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AIMoonProcess"

    const-string v1, "release"

    .line 87
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->l:Z

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/camera/aimoon/g;->q:I

    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/camera/aimoon/g$b;)V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->p:Lcn/nubia/camera/aimoon/g$b;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    .line 99
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    .line 100
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([BIILandroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "AIMoonProcess"

    const-string v1, "onMainYuvReceived"

    .line 116
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcn/nubia/camera/aimoon/g$a;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/aimoon/g$a;-><init>(Lcn/nubia/camera/aimoon/g;II[BILandroid/hardware/camera2/TotalCaptureResult;I)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iput-object v0, p0, Lcn/nubia/camera/aimoon/g;->p:Lcn/nubia/camera/aimoon/g$b;

    .line 108
    iput-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    .line 109
    iput-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    .line 112
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b([BIILandroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "AIMoonProcess"

    const-string v1, "onTeleYuvReceived"

    .line 123
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcn/nubia/camera/aimoon/g$a;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/aimoon/g$a;-><init>(Lcn/nubia/camera/aimoon/g;II[BILandroid/hardware/camera2/TotalCaptureResult;I)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 15

    .line 131
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/zte/moon/OCLVersionManager;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/moon/OCLVersionManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/zte/moon/MoonApi;->oclInit(Landroid/content/res/AssetManager;Lcom/zte/moon/OCLVersionManager;)V

    const-string v0, "AIMoonProcess"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoonApi preInit and MoonApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/moon/MoonApi;->getVersion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/g;->a(Landroid/content/Context;)V

    const-string v0, "AIMoonProcess"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AiMoonProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->l:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_18

    .line 139
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    .line 140
    :goto_1
    sget-boolean v5, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v5, :cond_4

    const-string v5, "AIMoonProcess"

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canProcess: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mMainYuvReceived "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mTeleDataReceived: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; mTeleDataProcessed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v0, :cond_5

    .line 145
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 147
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 153
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->l:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    if-nez v0, :cond_6

    goto/16 :goto_6

    .line 157
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->i:Z

    const/16 v5, 0x23

    const/16 v6, 0x100

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    if-nez v0, :cond_14

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v0, v0, Lcn/nubia/camera/aimoon/g$a;->e:I

    if-ne v0, v6, :cond_8

    .line 159
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v8, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v9, v0, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v10, v0, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v11, v0, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v12, v0, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_orimoon_jpg"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;)V

    .line 162
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v7, v7, Lcn/nubia/camera/aimoon/g$a;->d:[B

    array-length v7, v7

    invoke-static {v0, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 165
    invoke-static {v0, v7, v8}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Landroid/graphics/Bitmap;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    .line 167
    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v8

    iput-object v8, v7, Lcn/nubia/camera/aimoon/g$a;->d:[B

    .line 168
    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iput v5, v7, Lcn/nubia/camera/aimoon/g$a;->e:I

    .line 169
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 171
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v7, v7, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v8, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v8, v8, Lcn/nubia/camera/aimoon/g$a;->b:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_orimoon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcn/nubia/camera/aimoon/g;->a([BIILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v8, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v9, v0, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v10, v0, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v11, v0, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v12, v0, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_orimoon"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Lcn/nubia/l/a/b;)V

    .line 176
    :cond_9
    monitor-enter p0

    .line 177
    :try_start_3
    iput-boolean v4, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    .line 178
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->k:Z

    if-eqz v0, :cond_13

    .line 180
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v0, :cond_a

    const-string v0, "AIMoonProcess"

    const-string v7, "Moon start init"

    .line 181
    invoke-static {v0, v7}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_a
    iget-wide v7, p0, Lcn/nubia/camera/aimoon/g;->m:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_b

    .line 184
    invoke-static {}, Lcom/arcsoft/aimoon/AIMoon;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aimoon/g;->m:J

    .line 186
    :cond_b
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "AIMoonProcess"

    const-string v1, "Moon end init"

    .line 187
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_c
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/g;->a(Lcn/nubia/camera/aimoon/g$a;)[B

    move-result-object v0

    .line 190
    sget-boolean v1, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v1, :cond_d

    const-string v1, "AIMoonProcess"

    const-string v2, "Moon process end"

    .line 191
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v0, :cond_e

    .line 194
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iput-object v0, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    .line 195
    iget-boolean v1, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v1, :cond_e

    .line 196
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v1, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v2, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v2, v2, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v7, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v7, v7, Lcn/nubia/camera/aimoon/g$a;->b:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_aimoon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v2, v7, v8}, Lcn/nubia/camera/aimoon/g;->a([BIILjava/lang/String;)V

    .line 199
    :cond_e
    iget-boolean v1, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v1, :cond_f

    if-nez v0, :cond_10

    :cond_f
    iget v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    if-ne v0, v4, :cond_13

    .line 200
    :cond_10
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v8, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v9, v0, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v10, v0, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v11, v0, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v12, v0, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    iget v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    goto :goto_3

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_aimoon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v13, v0

    iget v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    if-ne v0, v4, :cond_12

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->b:Lcn/nubia/camera/ad/a;

    .line 202
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    :goto_4
    move-object v14, v0

    move-object v7, p0

    .line 200
    invoke-direct/range {v7 .. v14}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Lcn/nubia/l/a/b;)V

    .line 206
    :cond_13
    iget v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    if-ne v0, v4, :cond_14

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/g;->c()V

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 178
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 211
    :cond_14
    :goto_5
    iget v0, p0, Lcn/nubia/camera/aimoon/g;->q:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->h:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v0, v0, Lcn/nubia/camera/aimoon/g$a;->e:I

    if-ne v0, v6, :cond_15

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v1, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 216
    invoke-static {v0, v1, v2}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Landroid/graphics/Bitmap;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    .line 219
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iput v5, v1, Lcn/nubia/camera/aimoon/g$a;->e:I

    .line 220
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 222
    :cond_15
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v0, :cond_16

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v1, v1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v2, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v2, v2, Lcn/nubia/camera/aimoon/g$a;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_main"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/aimoon/g;->a([BIILjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v2, v0, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v3, v0, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v4, v0, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v5, v0, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v6, v0, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Lcn/nubia/l/a/b;)V

    :cond_16
    const-string v0, "AIMoonProcess"

    const-string v1, "zte process moon"

    .line 226
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v0, v0, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v1, v1, Lcn/nubia/camera/aimoon/g$a;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 229
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v2, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v3, v1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v4, v1, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v5, v1, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget-object v6, v1, Lcn/nubia/camera/aimoon/g$a;->d:[B

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v7, v1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v8, v1, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->g:Lcn/nubia/camera/aimoon/g$a;

    iget v9, v1, Lcn/nubia/camera/aimoon/g$a;->c:I

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lcom/zte/moon/MoonApi;->mergeFromMainAndTel([B[BIII[BIII)I

    .line 231
    iget-boolean v1, p0, Lcn/nubia/camera/aimoon/g;->a:Z

    if-eqz v1, :cond_17

    .line 232
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v1, v1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v2, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v2, v2, Lcn/nubia/camera/aimoon/g$a;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/aimoon/g;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_blend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/camera/aimoon/g;->a([BIILjava/lang/String;)V

    .line 234
    :cond_17
    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v3, v1, Lcn/nubia/camera/aimoon/g$a;->a:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v4, v1, Lcn/nubia/camera/aimoon/g$a;->b:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget v5, v1, Lcn/nubia/camera/aimoon/g$a;->c:I

    iget-object v1, p0, Lcn/nubia/camera/aimoon/g;->f:Lcn/nubia/camera/aimoon/g$a;

    iget-object v6, v1, Lcn/nubia/camera/aimoon/g$a;->f:Landroid/hardware/camera2/TotalCaptureResult;

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/aimoon/g;->a([BIIILandroid/hardware/camera2/TotalCaptureResult;)V

    .line 236
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/g;->c()V

    goto/16 :goto_0

    .line 240
    :cond_18
    :goto_6
    iget-wide v3, p0, Lcn/nubia/camera/aimoon/g;->m:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_19

    const-string v0, "AIMoonProcess"

    const-string v3, "uninit Arcsoft Moon"

    .line 241
    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-wide v3, p0, Lcn/nubia/camera/aimoon/g;->m:J

    invoke-static {v3, v4}, Lcom/arcsoft/aimoon/AIMoon;->uninit(J)I

    .line 243
    iput-wide v1, p0, Lcn/nubia/camera/aimoon/g;->m:J

    .line 245
    :cond_19
    invoke-static {}, Lcom/zte/moon/MoonApi;->release()V

    const-string v0, "AIMoonProcess"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AiMoonProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

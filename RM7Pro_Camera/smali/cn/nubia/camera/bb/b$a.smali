.class public final Lcn/nubia/camera/bb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/bb/b;II)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput p2, p0, Lcn/nubia/camera/bb/b$a;->b:I

    .line 906
    iput p3, p0, Lcn/nubia/camera/bb/b$a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;
    .locals 2

    .line 959
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 960
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".jpg"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    .line 963
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 969
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 970
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 977
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 978
    sget v1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    sget v1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 981
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 984
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->h(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 985
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->h(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    const-string p2, "pref_picture_artist_info"

    invoke-virtual {p1, p2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 986
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 987
    sget p2, Lcn/nubia/d/a;->u:I

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 992
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 994
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 996
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 1000
    :cond_1
    sget p1, Lcn/nubia/d/a;->K:I

    iget-object p2, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p2}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1004
    sget p2, Lcn/nubia/d/a;->G:I

    const-wide/32 v1, 0x3b9aca00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/bb/b$a;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 1008
    sget p2, Lcn/nubia/d/a;->H:I

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/bb/b$a;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 1012
    sget p2, Lcn/nubia/d/a;->ad:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/bb/b$a;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1015
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 1017
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1019
    :cond_2
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 1025
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1027
    :cond_3
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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

    .line 1043
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

    .line 1036
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


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v15, p4

    .line 912
    iget-object v0, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->k(Lcn/nubia/camera/bb/b;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->k(Lcn/nubia/camera/bb/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; No need to save snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoRecordManagerImpl"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 916
    :cond_0
    iget-object v0, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/b;->o()V

    .line 917
    iget-object v0, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 919
    iget-object v0, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/b;->u()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    iget-object v2, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 920
    invoke-static {v8, v9}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 921
    iget v0, v7, Lcn/nubia/camera/bb/b$a;->b:I

    iget v1, v7, Lcn/nubia/camera/bb/b$a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 922
    invoke-virtual {v15, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 924
    iget-object v0, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    int-to-float v1, v0

    .line 925
    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 926
    iget-object v1, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/b;->C()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 927
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 930
    :cond_1
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 931
    iget v0, v7, Lcn/nubia/camera/bb/b$a;->b:I

    .line 932
    iget v1, v7, Lcn/nubia/camera/bb/b$a;->c:I

    goto :goto_0

    .line 934
    :cond_2
    iget v0, v7, Lcn/nubia/camera/bb/b$a;->c:I

    .line 935
    iget v1, v7, Lcn/nubia/camera/bb/b$a;->b:I

    :goto_0
    move v5, v0

    move v6, v1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-wide v3, v8

    .line 937
    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/bb/b$a;->a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;

    move-result-object v20

    .line 939
    new-instance v0, Lcn/nubia/k/b/c;

    iget-object v1, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    .line 940
    invoke-virtual {v1}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    .line 941
    invoke-virtual {v2}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    iget-object v3, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    .line 942
    invoke-virtual {v3}, Lcn/nubia/camera/bb/b;->u()Lcn/nubia/k/a/a;

    move-result-object v3

    const/16 v16, 0x5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 950
    invoke-direct {v7, v8, v9}, Lcn/nubia/camera/bb/b$a;->a(J)Landroid/util/SparseArray;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v12, p1

    move/from16 v13, p2

    move v1, v14

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v8 .. v22}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 954
    iget-object v2, v7, Lcn/nubia/camera/bb/b$a;->a:Lcn/nubia/camera/bb/b;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/b;->u()Lcn/nubia/k/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.class public Lcn/nubia/camera/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:I

.field private e:Lcn/nubia/camera/ad/a;

.field private f:Landroid/hardware/camera2/CameraCharacteristics;

.field private g:Lcn/nubia/camera/k/x;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 34
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x4b0

    mul-long/2addr v4, v6

    sput-wide v4, Lcn/nubia/camera/k/a;->a:J

    .line 35
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    sput-wide v0, Lcn/nubia/camera/k/a;->b:J

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/camera/k/a;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "auto"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "deblur"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "100"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "200"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "400"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "800"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "1600"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "3200"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "6400"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "12800"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/k/x;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/k/a;->e:Lcn/nubia/camera/ad/a;

    .line 60
    iput-object p2, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    .line 61
    iput-object p3, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    .line 62
    sget-object p1, Lcn/nubia/camera/k/a/a$a;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 64
    array-length p2, p1

    if-lez p2, :cond_0

    .line 65
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/camera/k/a;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcn/nubia/camera/k/a;->d:I

    :goto_0
    return-void
.end method

.method private a(I)J
    .locals 6

    .line 304
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    long-to-double v2, v0

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const v4, 0x3a83126f    # 0.001f

    const/16 v5, 0x6400

    if-ne p1, v5, :cond_0

    :goto_0
    long-to-float p1, v0

    mul-float/2addr p1, v4

    :goto_1
    float-to-long v2, p1

    goto :goto_4

    :cond_0
    const/16 v5, 0x3200

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x1900

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0xc80

    if-ne p1, v4, :cond_3

    const p1, 0x3aa3d70a    # 0.00125f

    :goto_2
    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v2, v0

    goto :goto_4

    :cond_3
    const/16 v4, 0x640

    if-ne p1, v4, :cond_4

    const p1, 0x3b23d70a    # 0.0025f

    goto :goto_2

    :cond_4
    const/16 v4, 0x320

    const v5, 0x3ba3d70a    # 0.005f

    if-ne p1, v4, :cond_5

    :goto_3
    long-to-float p1, v0

    mul-float/2addr p1, v5

    goto :goto_1

    :cond_5
    const/16 v4, 0x190

    if-ne p1, v4, :cond_6

    goto :goto_3

    :cond_6
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_7

    goto :goto_3

    :cond_7
    const/16 v4, 0x64

    if-ne p1, v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    return-wide v2
.end method

.method private a(Lcn/nubia/camera/ad/a;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/k/ad;Lcn/nubia/camera/k/x;)V
    .locals 9

    .line 197
    invoke-virtual {p4}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    .line 198
    invoke-virtual {p4}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v1

    .line 199
    sget-object p4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p4}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    .line 200
    iget-object v3, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v3}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v3

    if-eqz p4, :cond_0

    .line 201
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-eq p4, v3, :cond_0

    sget-object v3, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    :cond_0
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 204
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    sget-object v3, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "google iso: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "; exposureTime: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "; flashMode: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AESettingHelper"

    invoke-static {p4, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_6

    .line 210
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    sget-object v5, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    if-ne v3, v5, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    .line 215
    :cond_3
    sget-object v5, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    if-ne v3, v5, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    .line 217
    :cond_4
    sget-object v5, Lcn/nubia/b/i;->f:Lcn/nubia/b/i;

    if-ne v3, v5, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_5
    move v3, p1

    goto :goto_1

    :cond_6
    :goto_0
    move v3, v4

    .line 223
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aeMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v5, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v3, "; sensor_exposure_time: "

    const-string v5, "; control_post_raw_sensitivity_boost: "

    if-gtz v0, :cond_7

    .line 226
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->a(J)[I

    move-result-object p2

    .line 228
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v6, p2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v6, p2, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Need preview exposure. Sensor_sensitivity\uff1a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget v0, p2, v4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    if-lez v0, :cond_8

    .line 234
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v6

    if-nez v6, :cond_8

    .line 235
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/a;->a(I)J

    move-result-wide v6

    .line 236
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;I)[I

    move-result-object p2

    .line 237
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v8, p2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v0, v8}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v8, p2, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v0, v8}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 240
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Need ISO. Sensor_sensitivity\uff1a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget v0, p2, v4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-lez v0, :cond_9

    .line 243
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 244
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;I)[I

    move-result-object p2

    .line 245
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v6, p2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v6, p2, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v0, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 248
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Need ISO and preview exposure. Sensor_sensitivity\uff1a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget v0, p2, v4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    :cond_9
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 253
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 254
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    const-string p1, "No need ISO and preview exposure. Auto"

    .line 255
    invoke-static {p4, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 334
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$a;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(J)[I
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 299
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x190
        0x64
    .end array-data
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;I)[I
    .locals 2

    .line 284
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 287
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 p2, p2, 0x64

    .line 292
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int p1, p2, p1

    move p2, v0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method private b(J)Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/k/a;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-wide v0, Lcn/nubia/camera/k/a;->a:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Lcn/nubia/camera/k/ad;)V
    .locals 9

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    .line 96
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->B:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    move-wide v3, v0

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 97
    sget-wide v2, Lcn/nubia/camera/k/a;->b:J

    cmp-long v2, v0, v2

    const-string v3, "AESettingHelper"

    if-lez v2, :cond_2

    .line 98
    iget-object v2, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->n()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcom setSnapshotExposure, has iso, let ae off, set exposure to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 102
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 104
    sget-object v5, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 105
    sget-object v5, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 106
    iget-object v5, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v5, v2}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;I)[I

    move-result-object v2

    .line 107
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 108
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 109
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcom setSnapshotExposure iso & exposure. sensor_sensitivity: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v5, v2, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "; control_post_raw_sensitivity_boost: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; sensor_exposure_time: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcom setSnapshotExposure, no iso, use exposure priority, set exposure to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 116
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "qcom setSnapshotExposure, use preview iso and exposureTime"

    .line 120
    invoke-static {v3, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private d(Lcn/nubia/camera/k/ad;)V
    .locals 13

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v1

    .line 127
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 128
    iget-object v4, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v4}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 131
    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/k/a;->e:Lcn/nubia/camera/ad/a;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/k/a;->e:Lcn/nubia/camera/ad/a;

    .line 132
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/aw/a;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    sget-object v4, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 136
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcom iso: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; exposureTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; flashMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AESettingHelper"

    invoke-static {v5, v3}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_2

    .line 138
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v6

    goto :goto_0

    .line 141
    :cond_2
    sget-object v7, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    if-ne v4, v7, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    .line 143
    :cond_3
    sget-object v7, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    if-ne v4, v7, :cond_4

    const/4 v4, 0x3

    goto :goto_0

    .line 145
    :cond_4
    sget-object v7, Lcn/nubia/b/i;->f:Lcn/nubia/b/i;

    if-ne v4, v7, :cond_5

    const/4 v4, 0x4

    goto :goto_0

    :cond_5
    move v4, v3

    .line 151
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aeMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 153
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v7}, Lcn/nubia/camera/k/x;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "meteringMode: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v7}, Lcn/nubia/camera/k/x;->k()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->B:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    if-gtz v0, :cond_7

    .line 158
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 159
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-wide v3, Lcn/nubia/camera/k/a;->b:J

    cmp-long v6, v1, v3

    if-lez v6, :cond_6

    goto :goto_1

    :cond_6
    move-wide v3, v1

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "only exposureTime. qcom select_priority: 1; use_iso_exp_priority: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    const/4 v4, -0x1

    if-lez v0, :cond_9

    .line 162
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_9

    .line 163
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 164
    iget v1, p0, Lcn/nubia/camera/k/a;->d:I

    if-eq v1, v4, :cond_8

    .line 165
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcn/nubia/camera/k/a;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 167
    :cond_8
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only iso. qcom select_priority: 0; use_iso_exp_priority: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/camera/k/a;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";iso: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    const-wide/16 v7, -0x1

    if-lez v0, :cond_c

    .line 170
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 171
    sget-wide v9, Lcn/nubia/camera/k/a;->b:J

    cmp-long v11, v1, v9

    if-lez v11, :cond_a

    goto :goto_2

    :cond_a
    move-wide v9, v1

    :goto_2
    int-to-long v11, v0

    mul-long/2addr v11, v1

    .line 172
    div-long/2addr v11, v9

    long-to-int v0, v11

    const v1, 0xc800

    if-le v0, v1, :cond_b

    move v0, v1

    .line 176
    :cond_b
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;I)[I

    move-result-object v0

    .line 179
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iso & exposure. sensor_sensitivity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v1, v0, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; control_post_raw_sensitivity_boost: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; sensor_exposure_time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 187
    :cond_c
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 190
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 191
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    const-string p1, "no iso & exposure: auto"

    .line 192
    invoke-static {v5, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private e(Lcn/nubia/camera/k/ad;)V
    .locals 5

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 261
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/a;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    iget-object v2, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->n()I

    move-result v2

    const-string v3, "AESettingHelper"

    if-lez v2, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google setSnapshotExposure, has iso, exposure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google setSnapshotExposure, no iso, exposure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 269
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/a;->a(J)[I

    move-result-object v2

    .line 270
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 271
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 272
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/ad;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/a;->d(Lcn/nubia/camera/k/ad;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/a;->e:Lcn/nubia/camera/ad/a;

    iget-object v1, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcn/nubia/camera/k/a;->g:Lcn/nubia/camera/k/x;

    invoke-direct {p0, v0, v1, p1, v2}, Lcn/nubia/camera/k/a;->a(Lcn/nubia/camera/ad/a;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/k/ad;Lcn/nubia/camera/k/x;)V

    :goto_0
    return-void
.end method

.method public b(Lcn/nubia/camera/k/ad;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/k/a;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/a;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/a;->c(Lcn/nubia/camera/k/ad;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/a;->e(Lcn/nubia/camera/k/ad;)V

    :goto_0
    return-void
.end method

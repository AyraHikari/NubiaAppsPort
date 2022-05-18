.class public Lcn/nubia/camera/ba/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Landroid/util/Size;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcn/nubia/camera/ba/b;->c()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/ba/b;->a:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1f40

    const/16 v2, 0x1770

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcn/nubia/camera/ba/b;->b:Landroid/util/Size;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcn/nubia/camera/ba/b;->d:Ljava/lang/Boolean;

    .line 49
    sput-object v0, Lcn/nubia/camera/ba/b;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;
    .locals 9

    .line 327
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p0

    const/16 v0, 0x100

    .line 328
    invoke-virtual {p0, v0}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 329
    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 330
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 331
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    move-object v0, v4

    goto :goto_2

    .line 334
    :cond_0
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-lt v5, v6, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_2

    :goto_1
    move-object v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 344
    aget-object v0, p0, v2

    :cond_4
    return-object v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;
    .locals 8

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    .line 211
    invoke-interface {v0, p1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_8

    .line 216
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->G()I

    move-result p2

    .line 218
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/af/b;

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 222
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/af/b;

    .line 223
    invoke-virtual {v5, p2}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    invoke-static {v6, p1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v3, p2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_1
    if-nez v3, :cond_5

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 229
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/af/b;

    .line 231
    invoke-virtual {v5}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/af/b;

    goto :goto_2

    :cond_6
    move-object p2, v3

    .line 240
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 242
    new-instance p2, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v2, v1}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_7
    invoke-static {p0, p2, p1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p0

    return-object p0

    .line 247
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No suitable camera id found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcn/nubia/b/d;)V
    .locals 6

    const-string v0, "DeviceUtil"

    .line 125
    sget-object v1, Lcn/nubia/camera/ba/b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0, v1}, Lcn/nubia/b/d;->a(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 128
    :try_start_0
    sget-object v3, Lcn/nubia/camera/k/a/a$b;->z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcn/nubia/camera/ba/b;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Qcom CCT not supported. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcn/nubia/camera/ba/b;->c:Ljava/lang/Boolean;

    .line 135
    :goto_0
    :try_start_1
    sget-object v3, Lcn/nubia/camera/k/a/a$b;->ac:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/ba/b;->e:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupRes not supported."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/ba/b;->e:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 145
    sget-object v0, Lcn/nubia/camera/ba/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(I)Z
    .locals 1

    int-to-float p0, p0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    .line 114
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 363
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/b;->v()[I

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 365
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    if-ne v4, p0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public static a(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 52
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Landroid/util/Size;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    int-to-float p0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 70
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v2, 0x7f0f021b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_wideangle_correction_key"

    invoke-virtual {v0, v2, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)Z
    .locals 1

    if-eq p0, p1, :cond_6

    .line 203
    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_6

    :cond_1
    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_3

    :cond_2
    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_6

    :cond_3
    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_5

    :cond_4
    sget-object p0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p1, p0, :cond_6

    sget-object p0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p1, p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z
    .locals 1

    .line 260
    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_1

    .line 261
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 56
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-static {p2, p0, p1, v0}, Lcn/nubia/camera/aq/b;->a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_moresetting_picturesize_key"

    const/4 p2, 0x0

    .line 102
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    sget-object p1, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 65
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()Z
    .locals 1

    .line 149
    sget-object v0, Lcn/nubia/camera/ba/b;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 60
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/util/Size;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    sget-object v0, Lcn/nubia/camera/ba/b;->b:Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z
    .locals 1

    .line 265
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    .line 266
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static c()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 175
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3f8a52df

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x406b4535

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x8ca

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3f964fc2

    const v4, 0x4054b0a7

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x9c4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3fa54a90

    const v4, 0x40414b8c

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0xabe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3fb05f4a

    const v4, 0x40321290

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3fb86213

    const v4, 0x40261bfc

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0xcb2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3fbfda30

    const v4, 0x401d109d

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0xdac

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x3fc6d539

    const v4, 0x4015fcb5

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0xea6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x40008def

    const v4, 0x400cd8ae

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v4, 0xfa0

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v4, 0x40148bca

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x109a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x40021149

    const v4, 0x3ffbab19

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1194

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x4002e610

    const v4, 0x3fe87de5

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x128e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x4003a7eb

    const v4, 0x3fd9923a

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x4007c7da

    const v4, 0x3fd1864d

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1482

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x400bc2e7

    const v4, 0x3fcab591

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x157c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x400f9af6

    const v4, 0x3fc4dcca

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1676

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x401351ca

    const v4, 0x3fbfcab0

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1770

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x4016e8a3

    const v4, 0x3fbb5a18

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x186a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x401a624a

    const v4, 0x3fb76ead

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1964

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x401df994

    const v4, 0x3fb333db    # 1.40002f

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1a5e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x40217657

    const v4, 0x3faf7226

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1b58

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x4024d9b6

    const v4, 0x3fac1651

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1c52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    const v2, 0x402824c0

    const v4, 0x3fa910f5

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v5, 0x1d4c

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v5, 0x1e46

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    new-instance v1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static c(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 5

    .line 153
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$a;->h:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 160
    array-length v0, p0

    if-lez v0, :cond_2

    .line 161
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    move v1, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public static c(Landroid/util/Size;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    int-to-float p0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v1, 0x40

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static c(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z
    .locals 0

    .line 356
    invoke-static {p0, p1}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/b;->k()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 89
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/ba/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 270
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Lcn/nubia/camera/k/a/a$a;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Ljava/lang/String;)Landroid/util/Size;
    .locals 5

    .line 312
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p0

    const/16 v0, 0x20

    .line 313
    invoke-virtual {p0, v0}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 314
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 315
    aget-object v0, p0, v0

    .line 316
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 318
    aget-object v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 274
    sget-object v0, Lcn/nubia/camera/ba/b;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcn/nubia/camera/ba/b;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/ba/b;->d:Ljava/lang/Boolean;

    .line 277
    :cond_0
    sget-object v0, Lcn/nubia/camera/ba/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .locals 10

    .line 281
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/camera/camxoverridesettings.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 286
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v3, "^\\s*overrideGPURotationUsecase\\s*=\\s*1"

    .line 290
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "^\\s*overrideGPUDownscaleUsecase\\s*=\\s*1"

    .line 291
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v2

    move v7, v6

    .line 292
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 293
    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v5

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v5

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    return v5

    .line 305
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtil"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 351
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 352
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

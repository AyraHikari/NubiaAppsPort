.class public Lcn/nubia/camera/bb/h;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 33
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/h;->b:Landroid/util/Range;

    .line 34
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/h;->c:Landroid/util/Range;

    .line 35
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/h;->d:Landroid/util/Range;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/camera/bb/h;->e:Z

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcn/nubia/camera/bb/h;->f:Ljava/lang/String;

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/bb/h;->g:Z

    .line 43
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->O()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/bb/h;->g:Z

    return-void
.end method

.method private ai()Z
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->K()Lcn/nubia/camera/af/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method protected B()Z
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0251

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0255

    .line 154
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 156
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->B()Z

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected N()I
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->w()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->N()I

    move-result v0

    return v0
.end method

.method protected Q()I
    .locals 4

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->K()Lcn/nubia/camera/af/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v3
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->w()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f02ba

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_mfhdr_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "off"

    return-object v0
.end method

.method public Z()I
    .locals 5

    .line 254
    invoke-super {p0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    :cond_0
    return v0
.end method

.method protected a([Landroid/util/Size;II)Landroid/util/Size;
    .locals 4

    .line 114
    sget-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 117
    invoke-static {v2, p2, p3}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/bb/h;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 11

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 55
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/util/Size;

    .line 57
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v1, v6

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 56
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/camera/bb/h;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 65
    new-instance v3, Landroid/util/Size;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/util/Size;

    .line 67
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v6, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 66
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 70
    :goto_0
    new-instance v2, Lcn/nubia/camera/k/x$b;

    invoke-direct {v2, p0, v0, v3, v1}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v2
.end method

.method public aa()I
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method protected af()[Ljava/lang/String;
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcn/nubia/camera/bb/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f02bc

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_back_video_quality_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0234

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_front_video_quality_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    iput-object v0, p0, Lcn/nubia/camera/bb/h;->f:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    const-string v1, ":"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public ag()Z
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->af()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    array-length v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public ah()Z
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->af()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    array-length v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public b(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/camera/bb/h;->e:Z

    return-void
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f028b

    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/h;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_pretty_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/bb/h;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcn/nubia/camera/k/x$c;

    invoke-direct {v0}, Lcn/nubia/camera/k/x$c;-><init>()V

    const/4 v1, 0x1

    .line 227
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    const/4 v1, 0x5

    .line 229
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_camera_pretty_slimming"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_camera_pretty_toning"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcn/nubia/camera/k/x$c;->c:I

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_camera_pretty_smooth"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    return-object v0

    .line 234
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    return-object v0

    .line 187
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcn/nubia/camera/bb/h;->g:Z

    return v0
.end method

.method protected f()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->af()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/bb/h;->b:Landroid/util/Range;

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/h;->d:Landroid/util/Range;

    return-object v0

    .line 133
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/h;->c:Landroid/util/Range;

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public q()I
    .locals 5

    .line 263
    invoke-super {p0}, Lcn/nubia/camera/k/x;->q()I

    move-result v0

    .line 264
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->L()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/bb/h;->ai()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :cond_2
    :goto_1
    return v0
.end method

.method protected s()I
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbb9

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    return v0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->af()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 88
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected t()Lcn/nubia/b/i;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_video_flashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Lcn/nubia/b/i;->valueOf(Ljava/lang/String;)Lcn/nubia/b/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    :goto_0
    return-object v0
.end method

.method protected w()I
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->af()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/bb/h;->b:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/h;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/bb/h;->d:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x1e

    return v0
.end method

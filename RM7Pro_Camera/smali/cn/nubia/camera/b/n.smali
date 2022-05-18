.class public Lcn/nubia/camera/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Lcn/nubia/camera/k/ad;)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [[F

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\[.*?\\]"

    .line 174
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 175
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 176
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SceneParamSetter"

    invoke-static {v6, v5}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "["

    const-string v6, ""

    .line 179
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 181
    array-length v5, v4

    new-array v5, v5, [F

    aput-object v5, v1, v3

    move v5, v2

    .line 182
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 183
    aget-object v6, v1, v3

    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p0, Landroid/hardware/camera2/params/TonemapCurve;

    aget-object v0, v1, v2

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v2, v1}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 188
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method static a(Ljava/util/HashMap;Ljava/util/HashMap;Lcn/nubia/camera/k/ad;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/camera/k/ad;",
            ")V"
        }
    .end annotation

    const-string v0, "KEY_NUBIA_CHI_NB_SCENE_MODE"

    .line 52
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->I:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->I:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    const-string v0, "CONTROL_AE_EXPOSURE_COMPENSATION"

    .line 60
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v1

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_1
    const-string v0, "KEY_QC_SHARPNESS"

    .line 70
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v1

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_2

    .line 73
    :cond_4
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->y:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_5
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->y:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_2
    const-string v0, "KEY_QC_USE_SATURATION"

    .line 79
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v1

    if-eq v1, v2, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_3

    .line 82
    :cond_6
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_3

    .line 85
    :cond_7
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_3
    const-string v0, "TONEMAP_MODE"

    .line 98
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v1

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_8

    goto :goto_4

    .line 100
    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const-string v0, "TONEMAP_GAMMA"

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 106
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-nez v0, :cond_b

    const-string v0, "TONEMAP_CURVE"

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Lcn/nubia/camera/k/ad;)V

    goto :goto_4

    .line 114
    :cond_a
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 115
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 116
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :cond_b
    :goto_4
    const-string v0, "CONTROL_SCENE_MODE"

    .line 119
    invoke-static {v0, p0, p1}, Lcn/nubia/camera/b/n;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result p0

    if-eq p0, v2, :cond_d

    if-eq p0, v3, :cond_c

    goto :goto_5

    .line 121
    :cond_c
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 123
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 124
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_5

    .line 128
    :cond_d
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 129
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_5
    return-void
.end method

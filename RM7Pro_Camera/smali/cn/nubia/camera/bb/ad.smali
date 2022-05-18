.class public Lcn/nubia/camera/bb/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 1

    .line 202
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I
    .locals 2

    .line 54
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ay()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p2, v0, :cond_3

    :cond_0
    if-nez p3, :cond_3

    const p2, 0x7f0f02ae

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pref_video_encoder_key"

    invoke-virtual {p0, p3, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0f02b8

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0f02b7

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_3
    return v1
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f029f

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_slomo_fps_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z
    .locals 6

    .line 211
    iget-object v0, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 214
    :cond_0
    iget-object v0, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcn/nubia/camera/ba/a;->c(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v4, 0x5a

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-string v0, "VideoUtil"

    const-string v1, "cleanupLowSizeVideo"

    .line 215
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "android.intent.extra.videoQuality"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static a(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z
    .locals 1

    .line 31
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne p2, v0, :cond_0

    const p2, 0x7f0f029f

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_slomo_fps_key"

    invoke-virtual {p0, p2, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 34
    aget-object p0, p0, p1

    const-string p2, "1"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p3, :cond_1

    .line 223
    invoke-static {p2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2, p0, p1}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 224
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0f020e

    .line 227
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f030b

    .line 228
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "pref_camera_video_anti_shake"

    .line 229
    invoke-virtual {p0, p3, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    .line 249
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    :try_start_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/k/a/a$a;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 253
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    .line 255
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Ljava/lang/String;Lcom/android/preference/c;Landroid/content/Context;)Z
    .locals 1

    .line 101
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "pref_back_video_quality_key"

    .line 102
    invoke-virtual {p1, p0, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_front_video_quality_key"

    .line 105
    invoke-virtual {p1, p0, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const p1, 0x7f0f02c9

    .line 108
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/preference/c;Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0f029f

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_slomo_fps_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 50
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static b(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z
    .locals 1

    .line 72
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p2, v0, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const p2, 0x7f0f02ae

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pref_video_encoder_key"

    invoke-virtual {p0, p3, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0f02b8

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;Lcom/android/preference/c;Landroid/content/Context;)Z
    .locals 2

    .line 128
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "pref_back_video_quality_key"

    .line 129
    invoke-virtual {p1, p0, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_front_video_quality_key"

    .line 132
    invoke-virtual {p1, p0, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const v0, 0x7f0f02c6

    .line 135
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f02c7

    .line 136
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public static c(Lcn/nubia/camera/ad/a;)Z
    .locals 1

    .line 116
    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xbb9

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcn/nubia/camera/bb/ad;->b(Ljava/lang/String;Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static e(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const-string v0, "pref_back_video_quality_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    const-string v0, "pref_front_video_quality_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ":"

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 152
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object p0, p0, v2

    const-string v1, "60"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public static f(Lcn/nubia/camera/ad/a;)Z
    .locals 4

    .line 234
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    .line 234
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 242
    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f0f02ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_mfhdr_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

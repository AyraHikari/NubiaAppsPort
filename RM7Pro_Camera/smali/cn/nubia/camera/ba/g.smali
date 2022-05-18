.class public Lcn/nubia/camera/ba/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ba/g$a;
    }
.end annotation


# static fields
.field private static a:Lcn/nubia/camera/ba/g$a;


# direct methods
.method public static a(Lcn/nubia/camera/ad/a;)I
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_exposure_compensation_supermoon"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "pref_camera_exposure_compensation"

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, -0xc

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 230
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/android/preference/c;)I
    .locals 2

    const-string v0, "pref_manual_cct"

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static a(Lcn/nubia/camera/af/a;Ljava/lang/String;Lcn/nubia/camera/zoom/c;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-static {p0, p1}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/c;->c()F

    move-result p0

    invoke-static {p0}, Lcn/nubia/camera/aq/f;->a(F)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    .line 151
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p2, "wide"

    if-nez p0, :cond_8

    .line 152
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "tele"

    if-eqz p0, :cond_2

    return-object v0

    .line 156
    :cond_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "telePortrait"

    return-object p0

    .line 159
    :cond_3
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/b;->o()I

    move-result p0

    and-int/lit8 p1, p0, 0x2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    and-int/lit8 p1, p0, 0x4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    return-object p2

    :cond_4
    and-int/lit8 p1, p0, 0x10

    const/16 p2, 0x10

    if-ne p1, p2, :cond_5

    return-object v0

    :cond_5
    and-int/lit8 p1, p0, 0x40

    const/16 p2, 0x40

    if-ne p1, p2, :cond_6

    const-string p0, "micro"

    return-object p0

    :cond_6
    const/16 p1, 0x20

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const-string p0, "depth"

    return-object p0

    :cond_7
    const-string p0, "default"

    return-object p0

    :cond_8
    :goto_0
    return-object p2
.end method

.method public static a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    const-string p1, "pref_female_effect_key"

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "pref_male_effect_key"

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "pref_pretty_effect_key"

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "pref_normal_effect_key"

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "none"

    :cond_3
    return-object p1
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    .line 288
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "event"

    const-string v1, "mc_mode"

    .line 290
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 278
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/g;->b(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)J

    move-result-wide v0

    const-string v2, "cam_exposure_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 279
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/g;->a(Lcom/android/preference/c;)I

    move-result v0

    const-string v1, "cam_wb"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    invoke-static {p1}, Lcn/nubia/camera/ba/g;->c(Lcn/nubia/camera/ad/a;)I

    move-result v0

    const-string v1, "cam_color_hint"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/g;->c(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)I

    move-result v0

    const-string v1, "cam_iso"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    invoke-static {p1}, Lcn/nubia/camera/ba/g;->d(Lcn/nubia/camera/ad/a;)I

    move-result v0

    int-to-float v0, v0

    const-string v1, "cam_focus_distance"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 283
    invoke-static {p1}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;)I

    move-result p1

    int-to-float p1, p1

    const-string v0, "cam_ev"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;I)V
    .locals 3

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "camera_gender"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cam_gender"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cam_member"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cam_facing"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;JLjava/lang/String;)V
    .locals 3

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "camera_video"

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vid_duration"

    .line 109
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "vid_resolution"

    .line 110
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cam_member"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cam_facing"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->e(Lcn/nubia/camera/ad/a;)I

    move-result p1

    const-string p2, "vid_fps"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_0

    .line 115
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->f(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vid_eis"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->g(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vid_hdr"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->h(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vid_encoder"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V
    .locals 3

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "camera_capture"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cam_member"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cam_facing"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->a()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    const-string v1, ""

    .line 51
    :goto_0
    array-length v2, p0

    if-ge p2, v2, :cond_2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, p2

    invoke-static {p1, v2, p3}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;Lcn/nubia/camera/zoom/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    const-string p0, "cam_type"

    .line 60
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_5

    if-nez p3, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p3}, Lcn/nubia/camera/zoom/c;->c()F

    move-result p0

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr p0, p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p0, p2

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    :goto_1
    const-string p1, "cam_zoom"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 66
    :cond_5
    sget-object p0, Lcn/nubia/camera/ba/g;->a:Lcn/nubia/camera/ba/g$a;

    if-nez p0, :cond_6

    .line 67
    new-instance p0, Lcn/nubia/camera/ba/g$a;

    const-string p1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p0, p1}, Lcn/nubia/camera/ba/g$a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcn/nubia/camera/ba/g;->a:Lcn/nubia/camera/ba/g$a;

    .line 69
    :cond_6
    sget-object p0, Lcn/nubia/camera/ba/g;->a:Lcn/nubia/camera/ba/g$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ba/g$a;->a(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cam_datataken"

    .line 70
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_7

    .line 73
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 75
    :cond_7
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "camera_setting"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cam_member"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cam_facing"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "setting_key"

    .line 84
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "setting_value"

    .line 85
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/af/a;I)V
    .locals 3

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "star_mode"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cam_member"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f09016f

    if-ne p1, p0, :cond_0

    const-string p0, "button"

    goto :goto_0

    :cond_0
    const p0, 0x7f0901fc

    if-ne p1, p0, :cond_1

    const-string p0, "professional"

    goto :goto_0

    :cond_1
    const p0, 0x7f0901fd

    if-ne p1, p0, :cond_2

    const-string p0, "quicksnap"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    const-string p1, "mode"

    .line 223
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    const-string v2, "camera_switch"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cam_facing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cam_member"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->j()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "cam_third"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event_name"

    .line 96
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "report_interval"

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "action_type"

    const-string p2, "cam_member cam_facing cam_preference_value"

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "action_value"

    .line 102
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object p0

    const-string p1, "com.android.camera"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/trackclinet/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)J
    .locals 2

    .line 181
    invoke-static {p1}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/16 p0, -0x1

    :cond_0
    return-wide p0
.end method

.method private static b(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->G()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "back"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "front"

    :goto_1
    return-object p0
.end method

.method private static b(Lcn/nubia/camera/ad/a;I)Ljava/lang/String;
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    .line 297
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "event"

    const-string v1, "mc_record_statistics"

    .line 299
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/trackclinet/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcn/nubia/camera/ba/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcn/nubia/camera/ad/a;)I
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01bf

    .line 195
    invoke-static {p0, v1}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "pref_camera_color_tint_key"

    .line 194
    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static c(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)I
    .locals 0

    .line 203
    invoke-static {p1}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    .line 305
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "event"

    const-string v1, "lightpating"

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static d(Lcn/nubia/camera/ad/a;)I
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    .line 313
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "event"

    const-string v1, "prisma_online"

    .line 315
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static e(Lcn/nubia/camera/ad/a;)I
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result p0

    return p0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f0f02bc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_back_video_quality_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f0f0234

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_front_video_quality_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v0, ":"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 245
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    aget-object p0, p0, v1

    const-string v0, "60"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3c

    return p0

    :cond_2
    const/16 p0, 0x1e

    return p0
.end method

.method public static e(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    .line 321
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "event"

    const-string v1, "zoom_type"

    .line 323
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static f(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 3

    .line 254
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "on"

    return-object p0

    :cond_1
    const-string p0, "off"

    return-object p0
.end method

.method private static g(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-static {p0}, Lcn/nubia/camera/bb/ad;->g(Lcn/nubia/camera/ad/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method private static h(Lcn/nubia/camera/ad/a;)Ljava/lang/String;
    .locals 2

    .line 268
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f0f02ae

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_encoder_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    sget-object v0, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_2

    const-string p0, "H264"

    return-object p0

    :cond_2
    const-string p0, "null"

    return-object p0
.end method

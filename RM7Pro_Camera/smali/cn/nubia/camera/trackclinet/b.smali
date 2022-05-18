.class public Lcn/nubia/camera/trackclinet/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "pref_camera_grid_key"

    const-string v1, "pref_camera_gradienter_key"

    const-string v2, "pref_capture_focus_key"

    const-string v3, "pref_camera_shutter_sound_key"

    const-string v4, "pref_key_capture_camera"

    const-string v5, "pref_intelligent_power_saving"

    const-string v6, "pref_water_mark_time_key"

    const-string v7, "pref_water_mark_logo_key"

    const-string v8, "pref_water_mark_custom_key"

    const-string v9, "pref_camera_wideangle_correction_key"

    const-string v10, "pref_camera_recordlocation_key"

    const-string v11, "pref_picture_artist_info"

    .line 11
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/trackclinet/b;->a:[Ljava/lang/String;

    const-string v1, "pref_third_arith_hdr_key"

    const-string v2, "pref_live_photo_key"

    const-string v3, "pref_camera_delay_shoot_key"

    const-string v4, "pref_camera_facedetection_key"

    const-string v5, "pref_moresetting_picturesize_key"

    const-string v6, "pref_bokeh_level_adjustable"

    const-string v7, "pref_video_encoder_key"

    .line 285
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/trackclinet/b;->b:[Ljava/lang/String;

    const-string v1, "pref_camera_flashmode_key"

    const-string v2, "pref_selfie_flashmode_key"

    const-string v3, "pref_third_arith_hdr_key"

    const-string v4, "pref_live_photo_key"

    const-string v5, "pref_camera_delay_shoot_key"

    const-string v6, "pref_camera_facedetection_key"

    const-string v7, "pref_multi_focus_key"

    const-string v8, "pref_moresetting_picturesize_key"

    const-string v9, "pref_mirror_mode_key"

    const-string v10, "pref_camera_front_smileshoot_key"

    const-string v11, "pref_video_flashmode_key"

    const-string v12, "pref_pretty_switch_key"

    .line 295
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/trackclinet/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()[Ljava/lang/String;
    .locals 8

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "pref_live_photo_key"

    const-string v2, "pref_camera_delay_shoot_key"

    const-string v3, "pref_camera_facedetection_key"

    const-string v4, "pref_intelligent_noise_reduction_key"

    const-string v5, "pref_multi_focus_key"

    const-string v6, "pref_moresetting_picturesize_key"

    const-string v7, "pref_histogram_bars_key"

    .line 29
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lcn/nubia/camera/trackclinet/b$1;->a:[I

    invoke-virtual {p0}, Lcn/nubia/camera/af/a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p0, "pref_camera_image_registration"

    .line 212
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :pswitch_2
    invoke-static {p1}, Lcn/nubia/camera/trackclinet/b;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :pswitch_3
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->d()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :pswitch_4
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->f()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :pswitch_5
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->d()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :pswitch_6
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->h()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :pswitch_7
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->b()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :pswitch_8
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->e()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :pswitch_9
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->g()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :pswitch_a
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->e()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :pswitch_b
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->d()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :pswitch_c
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->c()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :pswitch_d
    invoke-static {p1}, Lcn/nubia/camera/trackclinet/b;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :pswitch_e
    invoke-static {p1}, Lcn/nubia/camera/trackclinet/b;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :pswitch_f
    invoke-static {}, Lcn/nubia/camera/trackclinet/b;->a()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :pswitch_10
    invoke-static {p1}, Lcn/nubia/camera/trackclinet/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "pref_third_arith_hdr_key"

    const-string v2, "pref_normal_ai_key"

    const-string v3, "pref_live_photo_key"

    const-string v4, "pref_camera_delay_shoot_key"

    const-string v5, "pref_camera_facedetection_key"

    const-string v6, "pref_normal_face_pretty_key"

    const-string v7, "pref_multi_focus_key"

    const-string v8, "pref_moresetting_picturesize_key"

    const-string v9, "pref_camera_wideportrait_correction_key"

    .line 45
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_selfie_flashmode_key"

    const-string v2, "pref_live_photo_key"

    const-string v3, "pref_camera_delay_shoot_key"

    const-string v4, "pref_camera_facedetection_key"

    const-string v5, "pref_camera_front_smileshoot_key"

    const-string v6, "pref_mirror_mode_key"

    const-string v7, "pref_moresetting_picturesize_key"

    .line 59
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static b()[Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_clone_pictures_key"

    const-string v1, "pref_camera_delay_shoot_key"

    .line 98
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string v0, "pref_pretty_switch_key"

    const-string v1, "pref_camera_delay_shoot_key"

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "pref_refocus_after_capture_key"

    const-string v4, "pref_bokeh_level_adjustable"

    const-string v5, "pref_moresetting_picturesize_key"

    .line 74
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_selfie_flashmode_key"

    const-string v2, "pref_camera_delay_shoot_key"

    const-string v3, "pref_camera_facedetection_key"

    const-string v4, "pref_camera_front_smileshoot_key"

    const-string v5, "pref_mirror_mode_key"

    const-string v6, "pref_moresetting_picturesize_key"

    .line 84
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static c()[Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_delay_shoot_key"

    const-string v1, "pref_camera_facedetection_key"

    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "pref_camera_delay_shoot_key"

    .line 140
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_mirror_mode_key"

    .line 145
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static d()[Ljava/lang/String;
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 118
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const-string v0, "pref_video_flashmode_key"

    const-string v1, "pref_camera_video_anti_shake"

    const-string v2, "pref_back_video_quality_key"

    const-string v3, "pref_video_encoder_key"

    .line 238
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "pref_mirror_mode_key"

    const-string v4, "pref_front_video_quality_key"

    .line 246
    filled-new-array {v1, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static e()[Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "pref_camera_delay_shoot_key"

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()[Ljava/lang/String;
    .locals 1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 133
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()[Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_anti_shake"

    const-string v1, "pref_camera_delay_shoot_key"

    .line 155
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()[Ljava/lang/String;
    .locals 2

    const-string v0, "pref_video_flashmode_key"

    const-string v1, "pref_slomo_fps_key"

    .line 163
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

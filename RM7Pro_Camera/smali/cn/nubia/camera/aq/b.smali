.class public Lcn/nubia/camera/aq/b;
.super Lcom/android/preference/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const/16 v0, 0x8

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lcom/android/preference/b;-><init>(Landroid/content/SharedPreferences;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, "_third"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 199
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_water_mark_custom_file_key"

    .line 200
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_water_mark_custom_hal_file_key"

    .line 201
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_water_mark_custom_key"

    .line 202
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/SharedPreferences;II)V
    .locals 1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p3, "ComboPreferenceHelper"

    const-string v0, "upgradeLocal"

    .line 104
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "pref_camera_id_key"

    .line 105
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const-string p3, "pref_camera_front_smileshoot_key"

    .line 109
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 p3, 0x2

    const-string v0, "pref_water_mark_custom_key"

    if-ne p2, p3, :cond_2

    .line 113
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 117
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ak/a;->ab()Z

    move-result p3

    if-nez p3, :cond_3

    .line 118
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    :cond_4
    const/4 p3, 0x4

    if-ne p2, p3, :cond_6

    .line 123
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "pref_key_capture_camera"

    .line 124
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    const/4 p3, 0x5

    if-ne p2, p3, :cond_8

    .line 129
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ak/a;->Y()Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "pref_slomo_fps_key"

    .line 130
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    add-int/lit8 p2, p2, 0x1

    :cond_8
    const/4 p3, 0x6

    if-ne p2, p3, :cond_9

    .line 136
    invoke-direct {p0}, Lcn/nubia/camera/aq/b;->c()V

    add-int/lit8 p2, p2, 0x1

    :cond_9
    const/4 p3, 0x7

    if-ne p2, p3, :cond_a

    const-string p3, "pref_camera_delay_shoot_key"

    .line 141
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_a
    const/16 p3, 0x8

    if-ne p2, p3, :cond_c

    .line 146
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-static {}, Lcn/nubia/camera/ba/a;->v()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 147
    :cond_b
    invoke-direct {p0}, Lcn/nubia/camera/aq/b;->c()V

    .line 152
    :cond_c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_id_key"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_member_key"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_recordlocation_key"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_back_video_quality_key"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_front_video_quality_key"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_intelligent_power_saving"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_grid_key"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_gradienter_key"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_family_page_select_member_key"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_shutter_sound_key"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_capture_focus_key"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_key_capture_camera"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_logo_key"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_custom_key"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_picture_artist_info"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_water_mark_time_key"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_storage_path"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_wideangle_correction_key"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_nubia_debug_mode_key"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_encoder_key"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_slomo_fps_key"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_second_display_show_key"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_id_photo_size_key"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_id_photo_bg_key"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_star_track_estimation_key"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_peaking_focus_key"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(Landroid/content/SharedPreferences;II)V
    .locals 2

    .line 157
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "pref_camera_iso_key"

    if-nez p2, :cond_0

    .line 159
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const-string v0, "pref_selfie_flashmode_key"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 163
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 167
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const-string v0, "pref_faceplus_focus_length_value"

    .line 171
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    const-string v0, "pref_third_arith_hdr_key"

    .line 175
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    const-string v0, "pref_camera_exposure_time_min_key"

    .line 179
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_camera_exposure_time_nanosec_key"

    .line 180
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_5
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    const-string v0, "pref_manual_focus_key"

    .line 184
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    const-string v0, "pref_moresetting_picturesize_key"

    .line 188
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p2, p2, 0x1

    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_8

    .line 192
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    :cond_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

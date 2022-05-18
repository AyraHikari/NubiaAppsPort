.class public Lcn/nubia/camera/at/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;JFI)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "JFI)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 88
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 89
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 90
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    const v4, 0x3c23d70a    # 0.01f

    if-lez v3, :cond_0

    .line 92
    sget v3, Lcn/nubia/d/a;->G:I

    new-instance v5, Lcn/nubia/d/l;

    invoke-direct {v5, p3, v4}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-lez p4, :cond_1

    .line 95
    sget p3, Lcn/nubia/d/a;->K:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_1
    sget p3, Lcn/nubia/d/a;->ac:I

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget p3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget p3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget p3, Lcn/nubia/d/a;->ad:I

    new-instance v3, Lcn/nubia/d/l;

    aget v2, v2, p4

    invoke-direct {v3, v2, v4}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget p3, Lcn/nubia/d/a;->H:I

    new-instance v2, Lcn/nubia/d/l;

    aget p4, v1, p4

    invoke-direct {v2, p4, v4}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {p2, p3, v1, v2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 107
    :cond_2
    invoke-static {p0, v0}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Landroid/graphics/Bitmap;FI)Ljava/lang/String;
    .locals 24

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 63
    invoke-static {v8, v9}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-wide v3, v8

    invoke-static/range {v0 .. v7}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v20

    .line 66
    new-instance v0, Lcn/nubia/m/b;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcn/nubia/m/b;-><init>(II)V

    .line 68
    new-instance v1, Lcn/nubia/k/b/b;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v14

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v15

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 73
    invoke-static {v2, v8, v9, v3, v4}, Lcn/nubia/camera/at/h;->a(Lcn/nubia/camera/ad/a;JFI)Landroid/util/SparseArray;

    move-result-object v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v1

    move-object/from16 v16, p1

    move-object/from16 v23, v0

    invoke-direct/range {v12 .. v23}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p0

    const-string v0, "pref_picture_artist_info"

    invoke-virtual {p0, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 116
    sget v0, Lcn/nubia/d/a;->u:I

    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

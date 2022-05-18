.class public Lcn/nubia/camera/aq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;)V
    .locals 7

    .line 437
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ay()Z

    move-result v0

    const-string v1, "pref_video_encoder_key"

    if-eqz v0, :cond_4

    .line 438
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;)Z

    move-result v0

    .line 439
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    :cond_1
    if-nez v0, :cond_5

    .line 443
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0f02b8

    .line 445
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 447
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 448
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_3
    invoke-direct {p0, p2, v0, v1}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    .line 452
    invoke-direct {p0, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/ListPreference;)V

    goto :goto_1

    .line 455
    :cond_4
    invoke-direct {p0, p2, v1}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-static {p1}, Lcn/nubia/camera/aq/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    invoke-static {p3}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "pref_second_display_show_key"

    .line 411
    invoke-direct {p0, p2, p1}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;[Landroid/util/Size;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    .line 313
    invoke-virtual {v3, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 321
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v8, v5, :cond_9

    aget-object v7, v1, v8

    .line 322
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v19

    mul-int v1, v18, v19

    move/from16 v18, v5

    .line 323
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v19, v3

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 324
    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "pref_moresetting_picturesize_key"

    .line 325
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcn/nubia/camera/a/a;

    check-cast v3, Lcn/nubia/camera/a/a;

    .line 326
    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    sget-object v2, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v5, v2, :cond_1

    .line 327
    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v2, v3, :cond_2

    :cond_1
    if-ge v15, v1, :cond_2

    move v15, v1

    move-object v9, v7

    :cond_2
    move/from16 v20, v11

    move-object/from16 v11, p5

    goto/16 :goto_1

    :cond_3
    float-to-double v2, v5

    const-wide v20, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v20, v2, v20

    .line 333
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v20, v20, v22

    if-gez v20, :cond_4

    if-ge v11, v1, :cond_4

    move/from16 v20, v11

    move-object/from16 v11, p5

    .line 334
    invoke-static {v7, v11}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v20, v1

    move-object v10, v7

    goto :goto_1

    :cond_4
    move/from16 v20, v11

    move-object/from16 v11, p5

    :cond_5
    const-wide v24, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v2, v24

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v22

    if-gez v2, :cond_6

    if-ge v13, v1, :cond_6

    move v13, v1

    move-object v12, v7

    goto :goto_1

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    .line 340
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v22

    if-gez v2, :cond_7

    if-ge v14, v1, :cond_7

    move v14, v1

    move-object/from16 v16, v7

    goto :goto_1

    :cond_7
    float-to-double v2, v4

    sub-double v2, v2, v24

    .line 343
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v22

    if-lez v2, :cond_8

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v22

    if-gez v2, :cond_8

    if-ge v6, v1, :cond_8

    move v6, v1

    move-object/from16 v17, v7

    :cond_8
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v5, v18

    move-object/from16 v3, v19

    move/from16 v11, v20

    goto/16 :goto_0

    :cond_9
    move-object/from16 v19, v3

    const/4 v1, 0x1

    if-eqz v9, :cond_a

    move v2, v1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    if-eqz v10, :cond_b

    move v3, v1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    if-eqz v12, :cond_c

    move v3, v1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v2, v3

    if-eqz v16, :cond_d

    move v3, v1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v2, v3

    if-eqz v17, :cond_e

    move v3, v1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v2, v3

    .line 353
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 354
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 355
    new-array v2, v2, [Ljava/lang/CharSequence;

    if-eqz v9, :cond_f

    .line 359
    sget-object v24, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-float v6, v15

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "M] 4:3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcn/nubia/camera/aq/c;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v27, v1

    goto :goto_7

    :cond_f
    const/16 v27, 0x0

    :goto_7
    if-eqz v10, :cond_10

    .line 362
    sget-object v6, Lcn/nubia/camera/aq/f;->b:Ljava/lang/String;

    .line 363
    sget-object v24, Lcn/nubia/camera/aq/f;->b:Ljava/lang/String;

    const v1, 0x7f0f025b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    add-int/lit8 v1, v27, 0x1

    const-string v25, "4:3"

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcn/nubia/camera/aq/c;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v27, v1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    :goto_8
    if-eqz v12, :cond_12

    if-nez v6, :cond_11

    .line 367
    sget-object v1, Lcn/nubia/camera/aq/f;->c:Ljava/lang/String;

    move-object v6, v1

    .line 369
    :cond_11
    sget-object v24, Lcn/nubia/camera/aq/f;->c:Ljava/lang/String;

    const/16 v26, 0x0

    add-int/lit8 v1, v27, 0x1

    const-string v25, "16:9"

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcn/nubia/camera/aq/c;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v27, v1

    :cond_12
    if-eqz v16, :cond_14

    if-nez v6, :cond_13

    .line 373
    sget-object v1, Lcn/nubia/camera/aq/f;->a:Ljava/lang/String;

    move-object v6, v1

    .line 375
    :cond_13
    sget-object v24, Lcn/nubia/camera/aq/f;->a:Ljava/lang/String;

    const/16 v26, 0x0

    add-int/lit8 v1, v27, 0x1

    const-string v25, "1:1"

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcn/nubia/camera/aq/c;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v27, v1

    :cond_14
    if-eqz v17, :cond_16

    if-nez v6, :cond_15

    .line 379
    sget-object v1, Lcn/nubia/camera/aq/f;->d:Ljava/lang/String;

    move-object v6, v1

    .line 381
    :cond_15
    sget-object v24, Lcn/nubia/camera/aq/f;->d:Ljava/lang/String;

    const v1, 0x7f0f025a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcn/nubia/camera/aq/c;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_16
    move-object/from16 v0, v19

    .line 385
    invoke-virtual {v0, v3}, Lcom/android/preference/ListPreference;->c([Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v0, v4}, Lcom/android/preference/ListPreference;->d([Ljava/lang/CharSequence;)V

    .line 387
    instance-of v1, v0, Lcom/android/preference/ComplexListPreference;

    if-eqz v1, :cond_17

    .line 388
    move-object v3, v0

    check-cast v3, Lcom/android/preference/ComplexListPreference;

    invoke-virtual {v3, v2}, Lcom/android/preference/ComplexListPreference;->a([Ljava/lang/CharSequence;)V

    .line 390
    :cond_17
    invoke-virtual {v0, v6}, Lcom/android/preference/ListPreference;->a(Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 391
    invoke-direct {v1, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/ListPreference;)V

    return-void
.end method

.method private a(Lcn/nubia/b/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 9

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_slomo_fps_key"

    .line 417
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 420
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    .line 423
    iget-object v6, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, v3, v4

    const/4 v8, 0x2

    invoke-virtual {p1, v6, v7, v8}, Lcn/nubia/b/b;->a(III)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 424
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-lt v5, v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 433
    :cond_3
    :goto_1
    invoke-direct {p0, p2, v1, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1e0
        0xf0
        0x78
    .end array-data
.end method

.method private a(Lcom/android/preference/ListPreference;)V
    .locals 2

    .line 286
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manual-cct"

    .line 287
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/preference/ListPreference;->a(I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 460
    invoke-static {p2}, Lcn/nubia/camera/ba/b;->c(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "pref_video_mfhdr_key"

    .line 461
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/preference/PreferenceGroup;",
            "Lcom/android/preference/ListPreference;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 270
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/preference/ListPreference;->a(Ljava/util/List;)V

    .line 276
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p3

    array-length p3, p3

    if-gt p3, v1, :cond_2

    .line 277
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    .line 281
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/ListPreference;)V

    return-void

    .line 271
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;[Landroid/util/Size;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/preference/PreferenceGroup;",
            "Lcom/android/preference/ListPreference;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v3, :cond_10

    .line 170
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_10

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 178
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 184
    instance-of v10, v2, Lcom/android/preference/ComplexListPreference;

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 185
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 186
    move-object v12, v2

    check-cast v12, Lcom/android/preference/ComplexListPreference;

    invoke-virtual {v12}, Lcom/android/preference/ComplexListPreference;->d()[Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_0

    :cond_1
    move-object v12, v11

    :goto_0
    const/4 v13, 0x0

    move v14, v13

    .line 189
    :goto_1
    array-length v15, v9

    const-string v6, ":"

    if-ge v14, v15, :cond_9

    .line 190
    aget-object v15, v9, v14

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 192
    invoke-virtual {v15, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 193
    aget-object v15, v6, v13

    .line 196
    array-length v13, v6

    const/4 v0, 0x2

    if-ne v13, v0, :cond_4

    const/4 v0, 0x1

    aget-object v6, v6, v0

    const-string v0, "60"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "6"

    .line 197
    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v6, "8"

    .line 198
    invoke-static {v15, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->az()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-nez v0, :cond_4

    if-nez v6, :cond_4

    goto/16 :goto_7

    .line 203
    :cond_4
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const-string v0, "8k"

    .line 205
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 206
    sget-object v6, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 207
    sget-object v13, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v13

    goto :goto_4

    .line 209
    :cond_5
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v6, v13}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 210
    iget v13, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 211
    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v18, v13

    move v13, v6

    move/from16 v6, v18

    .line 214
    :goto_4
    array-length v3, v4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_7

    aget-object v16, v4, v1

    move/from16 v17, v3

    .line 215
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v6, v3, :cond_6

    .line 216
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v13, v3, :cond_6

    .line 217
    aget-object v1, v8, v14

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    aget-object v1, v9, v14

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_7

    .line 220
    aget-object v1, v12, v14

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    goto :goto_5

    .line 226
    :cond_7
    :goto_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_8

    aget-object v0, v8, v14

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 227
    aget-object v0, v8, v14

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    aget-object v0, v9, v14

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_8

    .line 230
    aget-object v0, v12, v14

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v6, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 235
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 236
    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/preference/ListPreference;->c([Ljava/lang/CharSequence;)V

    .line 237
    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/preference/ListPreference;->d([Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_a

    .line 239
    move-object v1, v2

    check-cast v1, Lcom/android/preference/ComplexListPreference;

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/preference/ComplexListPreference;->a([Ljava/lang/CharSequence;)V

    .line 242
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    :cond_b
    move-object/from16 v1, p0

    .line 247
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 248
    invoke-virtual {v2, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    .line 249
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    .line 251
    :goto_8
    array-length v4, v0

    if-ge v3, v4, :cond_e

    .line 253
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    aget-object v4, v0, v3

    .line 254
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_d

    .line 255
    invoke-virtual {v2, v3}, Lcom/android/preference/ListPreference;->a(I)V

    return-void

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 259
    :cond_e
    array-length v0, v0

    if-lt v3, v0, :cond_f

    const/4 v0, 0x0

    .line 260
    invoke-virtual {v2, v0}, Lcom/android/preference/ListPreference;->a(I)V

    :cond_f
    return-void

    :cond_10
    :goto_9
    move-object v3, v1

    move-object v1, v0

    if-eqz v2, :cond_11

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_11
    return-void
.end method

.method private a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    if-eqz p4, :cond_0

    .line 396
    aput-object p4, p2, p7

    .line 397
    aput-object p5, p1, p7

    if-eqz p6, :cond_0

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p7

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 5

    .line 154
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 157
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 158
    aget v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    .line 296
    invoke-virtual {p1}, Lcom/android/preference/PreferenceGroup;->d()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 297
    invoke-virtual {p1, v2}, Lcom/android/preference/PreferenceGroup;->b(I)Lcom/android/preference/a;

    move-result-object v3

    .line 298
    instance-of v4, v3, Lcom/android/preference/PreferenceGroup;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 299
    move-object v4, v3

    check-cast v4, Lcom/android/preference/PreferenceGroup;

    invoke-direct {p0, v4, p2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    .line 303
    :cond_0
    instance-of v4, v3, Lcom/android/preference/ListPreference;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/preference/ListPreference;

    .line 304
    invoke-virtual {v3}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {p1, v2}, Lcom/android/preference/PreferenceGroup;->a(I)V

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9

    .line 45
    new-instance v0, Lcn/nubia/b/b;

    invoke-direct {v0, p3}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    const-string v1, "pref_camera_flashmode_key"

    .line 54
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/b/b;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    const-string v1, "pref_video_flashmode_key"

    .line 55
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/b/b;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    const-string v1, "pref_camera_iso_key"

    .line 56
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/b/b;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    const-string v1, "pref_camera_whitebalance_key"

    .line 57
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/b/b;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    .line 58
    invoke-direct {p0, v0, p2}, Lcn/nubia/camera/aq/c;->a(Lcn/nubia/b/b;Lcom/android/preference/PreferenceGroup;)V

    .line 60
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    const-string v7, "pref_moresetting_picturesize_key"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 59
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/aq/c;->a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;[Landroid/util/Size;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcn/nubia/b/b;->h()Z

    move-result v1

    const-string v2, "ListPreferenceFilter"

    if-nez v1, :cond_0

    const-string v1, "face is null"

    .line 64
    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pref_camera_facedetection_key"

    .line 65
    invoke-direct {p0, p2, v1}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/b/b;->h()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "smile is null"

    .line 71
    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pref_camera_front_smileshoot_key"

    .line 72
    invoke-direct {p0, p2, v1}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 75
    :cond_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 76
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 77
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ax()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f02c9

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "pref_back_video_quality_key"

    .line 81
    invoke-virtual {p2, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v4

    .line 83
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v1

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Lcn/nubia/b/b;->a(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    .line 84
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    .line 80
    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;[Landroid/util/Size;Ljava/lang/String;)V

    .line 88
    :cond_3
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_front_video_quality_key"

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {p2, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v5

    .line 91
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->c(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 92
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v7

    .line 93
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p2

    .line 89
    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;[Landroid/util/Size;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-direct {p0, p2, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 98
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aq/c;->a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;)V

    .line 100
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aa()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_water_mark_time_key"

    .line 101
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 104
    :cond_5
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_water_mark_logo_key"

    .line 105
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 108
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ac()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pref_picture_artist_info"

    .line 109
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 112
    :cond_7
    invoke-direct {p0}, Lcn/nubia/camera/aq/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pref_intelligent_noise_reduction_key"

    .line 113
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 116
    :cond_8
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ad()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_multi_focus_key"

    .line 117
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 120
    :cond_9
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aI()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "pref_live_photo_key"

    .line 121
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_a
    const-string v0, "pref_third_arith_hdr_key"

    .line 124
    invoke-virtual {p2, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "off"

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "on"

    .line 127
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ak/a;->aw()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "auto"

    .line 129
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_b
    iget-object v4, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 133
    invoke-virtual {v1, v3}, Lcom/android/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 135
    :cond_c
    invoke-virtual {p2, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Lcom/android/preference/ListPreference;Ljava/util/ArrayList;)V

    .line 137
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aA()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_nubia_debug_mode_key"

    .line 138
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 141
    :cond_d
    iget-object v0, p0, Lcn/nubia/camera/aq/c;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/aq/c;->a(Landroid/content/Context;Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)V

    const-string v0, "pref_disable_auto_supernight_key"

    .line 143
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    const-string v0, "pref_disable_auto_microspur_key"

    .line 144
    invoke-direct {p0, p2, v0}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 146
    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "pref_normal_ai_key"

    .line 147
    invoke-virtual {p2, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    const v1, 0x7f0f03bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 150
    :cond_e
    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/aq/c;->a(Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

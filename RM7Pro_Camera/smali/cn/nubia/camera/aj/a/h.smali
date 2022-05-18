.class public Lcn/nubia/camera/aj/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/a/c;
.implements Lcom/android/common/c/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/a/h$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/k/a/a;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/nubia/camera/aj/a/b;

.field private g:Lcn/nubia/camera/aj/a/e;

.field private h:Lcom/android/common/c/e;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/a/a;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    .line 55
    iput-object p2, p0, Lcn/nubia/camera/aj/a/h;->c:Landroid/app/Activity;

    .line 56
    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->b:Lcn/nubia/k/a/a;

    const p1, 0x7f0f0070

    .line 57
    invoke-virtual {p2, p1}, Lcn/nubia/camera/a/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->d:Ljava/lang/String;

    .line 58
    new-instance p1, Lcn/nubia/camera/aj/a/e;

    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->b:Lcn/nubia/k/a/a;

    invoke-direct {p1, v0}, Lcn/nubia/camera/aj/a/e;-><init>(Lcn/nubia/k/a/a;)V

    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->g:Lcn/nubia/camera/aj/a/e;

    .line 59
    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;
    .locals 1

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    invoke-static {p3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 192
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_display_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    .line 194
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object p1, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 201
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 208
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 209
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 210
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 211
    sget v3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    sget v3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    sget v3, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v2, v2, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v1, v1, v5

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 219
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/a/h;->a(Landroid/util/SparseArray;)V

    .line 220
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/a/h;)Lcn/nubia/camera/aj/a/b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/aj/a/h;->f:Lcn/nubia/camera/aj/a/b;

    return-object p0
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 229
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 231
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    invoke-virtual {v0, p0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcn/nubia/camera/aj/a/h;->b:Lcn/nubia/k/a/a;

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    invoke-virtual {v0, p0}, Lcom/android/common/c/e;->b(Lcom/android/common/c/f$b;)Z

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/aj/a/b;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/camera/aj/a/h;->f:Lcn/nubia/camera/aj/a/b;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 29

    move-object/from16 v8, p0

    .line 123
    iget-boolean v0, v8, Lcn/nubia/camera/aj/a/h;->j:Z

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, v8, Lcn/nubia/camera/aj/a/h;->g:Lcn/nubia/camera/aj/a/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/a/e;->a()Z

    move-result v0

    const-string v9, "SpeedContinuousShot"

    if-nez v0, :cond_0

    const-string v0, "drop picture"

    .line 125
    invoke-static {v9, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, v8, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    invoke-virtual {v0, v8}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 131
    iget-object v12, v8, Lcn/nubia/camera/aj/a/h;->e:Ljava/lang/String;

    .line 132
    invoke-static {v10, v11}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v13

    .line 133
    iget-object v0, v8, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    int-to-float v1, v0

    move-object/from16 v15, p4

    .line 134
    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 137
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    move/from16 v7, p2

    move/from16 v6, p3

    goto :goto_0

    :cond_1
    move/from16 v6, p2

    move/from16 v7, p3

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    move-object v3, v12

    move-object v4, v13

    .line 144
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/aj/a/h;->a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;

    move-result-object v26

    .line 146
    new-instance v0, Lcn/nubia/k/b/c;

    iget-object v1, v8, Lcn/nubia/camera/aj/a/h;->c:Landroid/app/Activity;

    .line 147
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v8, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    .line 148
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v16

    iget-object v2, v8, Lcn/nubia/camera/aj/a/h;->b:Lcn/nubia/k/a/a;

    const/16 v22, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 157
    invoke-direct {v8, v10, v11}, Lcn/nubia/camera/aj/a/h;->a(J)Landroid/util/SparseArray;

    move-result-object v25

    new-instance v3, Lcn/nubia/camera/aj/a/h$a;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v4}, Lcn/nubia/camera/aj/a/h$a;-><init>(Lcn/nubia/camera/aj/a/h;Lcn/nubia/camera/aj/a/h$1;)V

    new-instance v4, Lcn/nubia/m/b;

    iget-object v6, v8, Lcn/nubia/camera/aj/a/h;->a:Lcn/nubia/camera/ad/a;

    .line 160
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v6

    iget-object v7, v8, Lcn/nubia/camera/aj/a/h;->c:Landroid/app/Activity;

    invoke-static {v6, v7}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/m/b;-><init>(II)V

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    invoke-direct/range {v14 .. v28}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 161
    iget-object v1, v8, Lcn/nubia/camera/aj/a/h;->b:Lcn/nubia/k/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 162
    sget-object v1, Lcn/nubia/k/a/a$b;->a:Lcn/nubia/k/a/a$b;

    if-ne v0, v1, :cond_3

    .line 163
    iget v0, v8, Lcn/nubia/camera/aj/a/h;->i:I

    add-int/2addr v0, v2

    iput v0, v8, Lcn/nubia/camera/aj/a/h;->i:I

    .line 164
    iget-object v1, v8, Lcn/nubia/camera/aj/a/h;->f:Lcn/nubia/camera/aj/a/b;

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v1, v0}, Lcn/nubia/camera/aj/a/b;->a(I)V

    .line 167
    :cond_2
    iget-object v0, v8, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    invoke-virtual {v0, v8}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    goto :goto_1

    .line 169
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v1, Lcn/nubia/k/a/a$b;->f:Lcn/nubia/k/a/a$b;

    if-ne v0, v1, :cond_4

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/aj/a/h;->b()Z

    goto :goto_1

    .line 174
    :cond_4
    iget-object v0, v8, Lcn/nubia/camera/aj/a/h;->h:Lcom/android/common/c/e;

    invoke-virtual {v0, v8}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start, ShootingStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeedContinuousShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    .line 72
    iput v1, p0, Lcn/nubia/camera/aj/a/h;->i:I

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/h;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/a/h;->e:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/h;->c()V

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/aj/a/h;->f:Lcn/nubia/camera/aj/a/b;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcn/nubia/camera/aj/a/b;->a()V

    :cond_1
    return v0
.end method

.method public b()Z
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, ShootingStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeedContinuousShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/aj/a/h;->j:Z

    .line 93
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/h;->e()V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h;->c:Landroid/app/Activity;

    new-instance v1, Lcn/nubia/camera/aj/a/h$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/a/h$1;-><init>(Lcn/nubia/camera/aj/a/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

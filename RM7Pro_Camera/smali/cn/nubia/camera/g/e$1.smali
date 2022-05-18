.class Lcn/nubia/camera/g/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/g/e$1$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/g/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/g/e;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;
    .locals 1

    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    invoke-static {p3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 224
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
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

    .line 226
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    iget-object p1, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {p1}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 234
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 242
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v2}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v1}, Lcn/nubia/camera/g/e;->g(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 244
    invoke-static {v1}, Lcn/nubia/camera/g/e;->g(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    sget v1, Lcn/nubia/d/a;->ac:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v1}, Lcn/nubia/camera/g/e;->h(Lcn/nubia/camera/g/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    sget v1, Lcn/nubia/d/a;->H:I

    new-instance v2, Lcn/nubia/d/l;

    iget-object v3, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v3}, Lcn/nubia/camera/g/e;->i(Lcn/nubia/camera/g/e;)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v4}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/camera/g/e$1;->a(Landroid/util/SparseArray;)V

    return-object v0
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

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 261
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 263
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 26

    move-object/from16 v9, p0

    const-string v10, "GeneralJpegPictureCallback"

    const-string v0, "onPictureTaken E"

    .line 109
    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    if-nez p1, :cond_0

    .line 111
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-virtual {v0, v11}, Lcn/nubia/camera/g/e;->a(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->a(Lcn/nubia/camera/g/e;)Z

    move-result v0

    const/4 v12, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->b(Lcn/nubia/camera/g/e;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "Need compare timestamp, start timestamp not received"

    .line 117
    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp inequality return\uff0c mTimeStamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v2}, Lcn/nubia/camera/g/e;->b(Lcn/nubia/camera/g/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; image.getTimeSta;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/camera/k/e;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 121
    invoke-static {v2}, Lcn/nubia/camera/g/e;->b(Lcn/nubia/camera/g/e;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTime > imageTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v3}, Lcn/nubia/camera/g/e;->b(Lcn/nubia/camera/g/e;)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/camera/k/e;->d()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    move v3, v12

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v15

    .line 129
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->c(Lcn/nubia/camera/g/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->d(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/z/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->d(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcn/nubia/camera/z/b;->a([B)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 132
    :goto_2
    iget-object v2, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v2}, Lcn/nubia/camera/g/e;->c(Lcn/nubia/camera/g/e;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 133
    invoke-static {v0}, Lcn/nubia/camera/g/e;->c(Lcn/nubia/camera/g/e;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v12

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    if-nez v0, :cond_9

    .line 135
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-virtual {v0, v11}, Lcn/nubia/camera/g/e;->a(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v4, :cond_a

    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 142
    invoke-static {v0}, Lcn/nubia/camera/g/e;->d(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/z/b;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->d(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 145
    :cond_a
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    iget-object v4, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v4}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    iget-object v5, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v5}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v13, v0

    .line 147
    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v14

    .line 148
    invoke-static {v15}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v23

    .line 151
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    array-length v4, v15

    invoke-static {v15, v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 155
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 156
    array-length v8, v15

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v13

    move-object v4, v14

    move/from16 v5, v23

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/g/e$1;->a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;

    move-result-object v22

    .line 157
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->H()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 159
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_b

    move-object v0, v11

    goto :goto_5

    :cond_b
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    .line 160
    :goto_5
    new-instance v1, Lcn/nubia/k/b/f;

    iget-object v2, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 161
    invoke-static {v2}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 164
    invoke-static {v3}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v17

    .line 166
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/g/e$1;->a()Landroid/util/SparseArray;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v3, Lcn/nubia/camera/g/e$1$a;

    invoke-direct {v3, v9, v14}, Lcn/nubia/camera/g/e$1$a;-><init>(Lcn/nubia/camera/g/e$1;Ljava/lang/String;)V

    iget-object v4, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    .line 172
    invoke-static {v4}, Lcn/nubia/camera/g/e;->f(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/aj/k;

    move-result-object v25

    move-object v13, v1

    move-object v4, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v18, v2

    move-object/from16 v24, v3

    invoke-direct/range {v13 .. v25}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Landroid/graphics/Bitmap;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/k/b/e;)V

    .line 174
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, v12}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 175
    sget-object v1, Lcn/nubia/k/a/a$b;->a:Lcn/nubia/k/a/a$b;

    if-eq v0, v1, :cond_c

    .line 176
    iget-object v1, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v1, v11, v4}, Lcn/nubia/camera/g/e;->a(Lcn/nubia/camera/g/e;Landroid/net/Uri;Ljava/lang/String;)V

    .line 177
    sget-object v1, Lcn/nubia/k/a/a$b;->d:Lcn/nubia/k/a/a$b;

    if-ne v0, v1, :cond_c

    .line 178
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 182
    :cond_c
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/g/e;->a(Ljava/lang/String;)V

    .line 183
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0, v11}, Lcn/nubia/camera/g/e;->a(Lcn/nubia/camera/g/e;Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/aj/k;

    .line 184
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->j:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 185
    iget-object v0, v9, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {v0}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    const-string v0, "onPictureTaken X"

    .line 191
    invoke-static {v10, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 106
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/g/e$1;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method

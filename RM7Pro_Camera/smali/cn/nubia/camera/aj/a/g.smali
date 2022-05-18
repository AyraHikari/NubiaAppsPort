.class public Lcn/nubia/camera/aj/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/a/c;
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/a/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/nubia/camera/k/ah;

.field private c:Lcn/nubia/camera/aj/a/b;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Lcn/nubia/k/a/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcn/nubia/camera/aj/a/e;

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/a/a;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Lcn/nubia/camera/aj/a/g$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/a/g$2;-><init>(Lcn/nubia/camera/aj/a/g;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/a/g;->k:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcn/nubia/camera/aj/a/g$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/a/g$3;-><init>(Lcn/nubia/camera/aj/a/g;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/a/g;->l:Ljava/lang/Runnable;

    .line 54
    iput-object p3, p0, Lcn/nubia/camera/aj/a/g;->a:Landroid/app/Activity;

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    .line 56
    iput-object p2, p0, Lcn/nubia/camera/aj/a/g;->b:Lcn/nubia/camera/k/ah;

    .line 57
    invoke-virtual {p3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a/g;->e:Lcn/nubia/k/a/a;

    const p1, 0x7f0f0070

    .line 58
    invoke-virtual {p3, p1}, Lcn/nubia/camera/a/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a/g;->f:Ljava/lang/String;

    .line 59
    new-instance p1, Lcn/nubia/camera/aj/a/e;

    iget-object p2, p0, Lcn/nubia/camera/aj/a/g;->e:Lcn/nubia/k/a/a;

    invoke-direct {p1, p2}, Lcn/nubia/camera/aj/a/e;-><init>(Lcn/nubia/k/a/a;)V

    iput-object p1, p0, Lcn/nubia/camera/aj/a/g;->i:Lcn/nubia/camera/aj/a/e;

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;
    .locals 1

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    invoke-static {p3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 164
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
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

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    iget-object p1, p0, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 175
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/a/g;)Lcn/nubia/camera/aj/a/b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/aj/a/g;->c:Lcn/nubia/camera/aj/a/b;

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

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 196
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 198
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/a/g;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/camera/aj/a/g;->h:I

    return p0
.end method

.method private c()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 183
    iget-object v1, p0, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/a/g;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcn/nubia/camera/aj/a/g;->e:Lcn/nubia/k/a/a;

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/a/g;->f:Ljava/lang/String;

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


# virtual methods
.method public a(Lcn/nubia/camera/aj/a/b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/aj/a/g;->c:Lcn/nubia/camera/aj/a/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 21

    move-object/from16 v9, p0

    .line 105
    iget-object v0, v9, Lcn/nubia/camera/aj/a/g;->i:Lcn/nubia/camera/aj/a/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/a/e;->a()Z

    move-result v0

    const-string v1, "QualityContinuousShot"

    if-nez v0, :cond_0

    const-string v0, "MultiShootStabler checkstorageQueue false"

    .line 106
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    iget-boolean v0, v9, Lcn/nubia/camera/aj/a/g;->j:Z

    if-nez v0, :cond_1

    const-string v0, "Multishoot has stop, drop the picture"

    .line 111
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 119
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v14

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 121
    iget-object v10, v9, Lcn/nubia/camera/aj/a/g;->g:Ljava/lang/String;

    .line 122
    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 123
    invoke-static {v14}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v19

    .line 126
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v15, 0x1

    .line 127
    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    .line 128
    array-length v4, v14

    invoke-static {v14, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 129
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 130
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 131
    array-length v8, v14

    move-object/from16 v0, p0

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, v19

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/aj/a/g;->a(JLjava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;

    move-result-object v18

    .line 133
    new-instance v0, Lcn/nubia/k/b/f;

    iget-object v1, v9, Lcn/nubia/camera/aj/a/g;->a:Landroid/app/Activity;

    .line 134
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v9, Lcn/nubia/camera/aj/a/g;->d:Lcn/nubia/camera/ad/a;

    .line 135
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v12

    iget-object v13, v9, Lcn/nubia/camera/aj/a/g;->e:Lcn/nubia/k/a/a;

    .line 138
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/aj/a/g;->c()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v3, Lcn/nubia/camera/aj/a/g$a;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v4}, Lcn/nubia/camera/aj/a/g$a;-><init>(Lcn/nubia/camera/aj/a/g;Lcn/nubia/camera/aj/a/g$1;)V

    move-object v10, v0

    move-object v11, v1

    move v1, v15

    move-object v15, v2

    move-object/from16 v20, v3

    invoke-direct/range {v10 .. v20}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    .line 145
    iget-object v2, v9, Lcn/nubia/camera/aj/a/g;->e:Lcn/nubia/k/a/a;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 146
    sget-object v2, Lcn/nubia/k/a/a$b;->a:Lcn/nubia/k/a/a$b;

    if-ne v0, v2, :cond_3

    .line 147
    iget v0, v9, Lcn/nubia/camera/aj/a/g;->h:I

    add-int/2addr v0, v1

    iput v0, v9, Lcn/nubia/camera/aj/a/g;->h:I

    .line 148
    iget-object v0, v9, Lcn/nubia/camera/aj/a/g;->a:Landroid/app/Activity;

    new-instance v1, Lcn/nubia/camera/aj/a/g$1;

    invoke-direct {v1, v9}, Lcn/nubia/camera/aj/a/g$1;-><init>(Lcn/nubia/camera/aj/a/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 40
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start, ShootingStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QualityContinuousShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    .line 74
    iput v1, p0, Lcn/nubia/camera/aj/a/g;->h:I

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/g;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/a/g;->g:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/aj/a/g;->b:Lcn/nubia/camera/k/ah;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcn/nubia/camera/ao/m;

    if-eqz v2, :cond_1

    .line 77
    check-cast v1, Lcn/nubia/camera/ao/m;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/o;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 78
    instance-of v2, v1, Lcn/nubia/camera/aj/h;

    if-eqz v2, :cond_2

    .line 79
    check-cast v1, Lcn/nubia/camera/aj/h;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/o;)V

    .line 81
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aj/a/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/camera/aj/a/g;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public b()Z
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, ShootingStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QualityContinuousShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/aj/a/g;->j:Z

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g;->b:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/camera/ao/m;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->e()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 96
    instance-of v1, v0, Lcn/nubia/camera/aj/h;

    if-eqz v1, :cond_2

    .line 97
    check-cast v0, Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->e()V

    .line 99
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/camera/aj/a/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

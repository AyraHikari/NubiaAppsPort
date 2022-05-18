.class public Lcn/nubia/camera/multiRecord/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# instance fields
.field a:Lcn/nubia/k/b/d;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/g/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:[[B

.field private g:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/g/c;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/e;->e:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/e;->f:[[B

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcn/nubia/camera/multiRecord/e;->g:I

    .line 95
    new-instance v0, Lcn/nubia/camera/multiRecord/e$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/e$1;-><init>(Lcn/nubia/camera/multiRecord/e;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/e;->a:Lcn/nubia/k/b/d;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/e;->c:Lcn/nubia/camera/g/c;

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;
    .locals 1

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    invoke-static {p3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 131
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".heic"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_display_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string p2, "image/*"

    .line 133
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 140
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 108
    sget v1, Lcn/nubia/d/a;->ag:I

    const-string v2, "mr667"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/e;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/e;)Lcn/nubia/camera/g/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/e;->c:Lcn/nubia/camera/g/c;

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

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 121
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/e;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/e;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 22

    move-object/from16 v9, p0

    const-string v0, "HeifPictureCallback"

    const-string v1, "onPictureTaken E"

    .line 50
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v0

    .line 53
    iget-object v10, v9, Lcn/nubia/camera/multiRecord/e;->e:Ljava/util/ArrayList;

    monitor-enter v10

    .line 54
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->f:[[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->f:[[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v11

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->f:[[B

    const/4 v3, 0x2

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v1, v3

    .line 63
    :goto_0
    iget v1, v9, Lcn/nubia/camera/multiRecord/e;->g:I

    add-int/2addr v1, v11

    iput v1, v9, Lcn/nubia/camera/multiRecord/e;->g:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v9, Lcn/nubia/camera/multiRecord/e;->f:[[B

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v9, Lcn/nubia/camera/multiRecord/e;->e:Ljava/util/ArrayList;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 67
    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    iget-object v5, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    iget-object v6, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v3, v4}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ".heic"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcn/nubia/camera/multiRecord/e;->d:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v20

    .line 73
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    array-length v7, v0

    invoke-static {v0, v2, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 77
    iget v15, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 78
    new-instance v14, Lcn/nubia/camera/multiRecord/f;

    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    .line 79
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iget-object v1, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    .line 80
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v16

    iget-object v12, v9, Lcn/nubia/camera/multiRecord/e;->e:Ljava/util/ArrayList;

    .line 82
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/multiRecord/e;->a()Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v1, p0

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, v20

    move v7, v0

    move v8, v15

    .line 83
    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/multiRecord/e;->a(JLjava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, v9, Lcn/nubia/camera/multiRecord/e;->a:Lcn/nubia/k/b/d;

    move-object v3, v12

    move-object v12, v14

    move-object v4, v14

    move-object/from16 v14, v16

    move v5, v15

    move-object v15, v3

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move/from16 v18, v0

    move/from16 v19, v5

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Lcn/nubia/camera/multiRecord/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/content/ContentValues;IIILcn/nubia/k/b/d;)V

    .line 88
    iget-object v0, v9, Lcn/nubia/camera/multiRecord/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0, v4, v11}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    .line 90
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "HeifPictureCallback"

    const-string v1, "onPictureTaken X"

    .line 92
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 32
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/multiRecord/e;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method

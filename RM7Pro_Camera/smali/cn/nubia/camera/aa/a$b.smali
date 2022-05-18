.class Lcn/nubia/camera/aa/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/aa/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/aa/a;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcn/nubia/camera/aa/a$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/aa/a;Lcn/nubia/camera/aa/a$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcn/nubia/camera/aa/a$b;-><init>(Lcn/nubia/camera/aa/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;
    .locals 2

    .line 235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
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

    .line 238
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    iget-object p1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {p1}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 245
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 252
    sget v1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget v1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 255
    iget-object p1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {p1}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 259
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/aa/a$b;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 27

    move-object/from16 v7, p0

    .line 209
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    .line 210
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 211
    invoke-virtual {v13, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 213
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    iget-object v1, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    iget-object v2, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->c(Lcn/nubia/camera/aa/a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 215
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->c(Lcn/nubia/camera/aa/a;)J

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/aa/a$b;->a(Ljava/lang/String;Ljava/lang/String;JII)Landroid/content/ContentValues;

    move-result-object v23

    .line 216
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    .line 217
    new-instance v1, Lcn/nubia/k/b/b;

    iget-object v2, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    .line 218
    invoke-static {v2}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    iget-object v2, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    .line 220
    invoke-static {v2}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v18

    iget-object v2, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    .line 222
    invoke-static {v2}, Lcn/nubia/camera/aa/a;->c(Lcn/nubia/camera/aa/a;)J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcn/nubia/camera/aa/a$b;->a(J)Landroid/util/SparseArray;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    if-lez v0, :cond_0

    new-instance v2, Lcn/nubia/m/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcn/nubia/m/b;-><init>(II)V

    move-object/from16 v26, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_0
    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v26}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 229
    iget-object v0, v7, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save livephoto elefno picture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoGenerator"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_picture_artist_info"

    .line 268
    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 271
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 273
    :cond_1
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 116
    const-class v0, Lcn/nubia/camera/aa/a$b;

    const-string v1, "EleFnoGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LivePhoto EleFno GenerateThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aa/a$b;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-enter v0

    .line 118
    :goto_0
    :try_start_0
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "EleFnoGenerator"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EleFno GenerateThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aa/a$b;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wait last thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v1, "EleFnoGenerator"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EleFno GenerateThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aa/a$b;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wakeup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcn/nubia/camera/o/b;

    invoke-direct {v1}, Lcn/nubia/camera/o/b;-><init>()V

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->a(Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;

    .line 128
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v2

    iget-object v1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->e(Lcn/nubia/camera/aa/a;)I

    move-result v3

    iget-object v1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->f(Lcn/nubia/camera/aa/a;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/camera/o/b;->a(IIIIIZII)V

    .line 134
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    monitor-enter v1

    .line 135
    :try_start_3
    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->d(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x64

    if-eqz v2, :cond_5

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->c(Lcn/nubia/camera/aa/a;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x5dc

    cmp-long v2, v7, v9

    if-lez v2, :cond_1

    .line 138
    monitor-exit v1

    goto :goto_2

    .line 140
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->a(Lcn/nubia/camera/aa/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    const-string v1, "EleFnoGenerator"

    const-string v2, "all data has been added"

    .line 175
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v1}, Lcn/nubia/camera/aa/a;->e(Lcn/nubia/camera/aa/a;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->f(Lcn/nubia/camera/aa/a;)I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-array v2, v3, [I

    .line 179
    :goto_3
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcn/nubia/camera/o/b;->a(Landroid/graphics/Bitmap;[I)V

    .line 181
    aget v3, v2, v4

    iget v7, p0, Lcn/nubia/camera/aa/a$b;->a:I

    if-ge v3, v7, :cond_2

    .line 183
    :try_start_4
    invoke-static {v5, v6}, Lcn/nubia/camera/aa/a$b;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 185
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 193
    :cond_2
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/o/b;->a(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/o/b;->b()V

    .line 195
    monitor-enter v0

    const/4 v2, 0x0

    .line 196
    :try_start_5
    invoke-static {v2}, Lcn/nubia/camera/aa/a;->a(Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    invoke-direct {p0, v1}, Lcn/nubia/camera/aa/a$b;->a(Landroid/graphics/Bitmap;)V

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->g(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/aa/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->g(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/aa/a$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aa/a$c;->a()V

    :cond_3
    const-string v0, "EleFnoGenerator"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LivePhoto EleFno GenerateThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aa/a$b;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 198
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 145
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v2

    .line 147
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    :goto_4
    monitor-exit v1

    goto/16 :goto_1

    .line 151
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->d(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/aa/a$a;

    .line 152
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 153
    iget-object v1, v2, Lcn/nubia/camera/aa/a$a;->a:[B

    array-length v1, v1

    iget-object v4, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v4}, Lcn/nubia/camera/aa/a;->e(Lcn/nubia/camera/aa/a;)I

    move-result v4

    iget-object v7, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v7}, Lcn/nubia/camera/aa/a;->f(Lcn/nubia/camera/aa/a;)I

    move-result v7

    mul-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v3

    if-eq v1, v4, :cond_6

    const-string v1, "EleFnoGenerator"

    const-string v2, "continue: error data!"

    .line 154
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 157
    :cond_6
    iget-object v1, v2, Lcn/nubia/camera/aa/a$a;->a:[B

    iget-object v2, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v2}, Lcn/nubia/camera/aa/a;->e(Lcn/nubia/camera/aa/a;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/aa/a$b;->b:Lcn/nubia/camera/aa/a;

    invoke-static {v3}, Lcn/nubia/camera/aa/a;->f(Lcn/nubia/camera/aa/a;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/ba/a;->a([BII)[B

    move-result-object v1

    .line 160
    :goto_5
    invoke-static {}, Lcn/nubia/camera/aa/a;->c()Lcn/nubia/camera/o/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/o/b;->a([B)I

    move-result v2

    .line 163
    iget v3, p0, Lcn/nubia/camera/aa/a$b;->a:I

    if-ne v2, v3, :cond_7

    .line 165
    :try_start_9
    invoke-static {v5, v6}, Lcn/nubia/camera/aa/a$b;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 167
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 173
    iput v3, p0, Lcn/nubia/camera/aa/a$b;->a:I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    .line 152
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 128
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1
.end method

.class public Lcn/nubia/camera/panorama/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/panorama/e$a;,
        Lcn/nubia/camera/panorama/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/net/Uri;

.field private c:Lcn/nubia/camera/panorama/d;

.field private d:Lcom/morpho/core/MorphoPanoramaGP;

.field private e:Landroid/content/ContentResolver;

.field private f:Lcn/nubia/camera/panorama/e$b;

.field private g:Lcn/nubia/camera/panorama/e$a;

.field private h:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/e$b;Lcn/nubia/camera/panorama/e$a;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/panorama/e;->c:Lcn/nubia/camera/panorama/d;

    .line 44
    iput-object p2, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    .line 45
    iput-object p3, p0, Lcn/nubia/camera/panorama/e;->e:Landroid/content/ContentResolver;

    .line 46
    iput-object p4, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    .line 47
    iput-object p5, p0, Lcn/nubia/camera/panorama/e;->g:Lcn/nubia/camera/panorama/e$a;

    .line 48
    iput-object p6, p0, Lcn/nubia/camera/panorama/e;->h:Lcn/nubia/camera/ad/a;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Call SaveOutputImageTask to finish the capture, saveImage: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-boolean p2, p2, Lcn/nubia/camera/panorama/e$b;->a:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SaveOutputImageTask"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/net/Uri;
    .locals 5

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object v0, v0, Lcn/nubia/camera/panorama/e$b;->c:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object v2, v2, Lcn/nubia/camera/panorama/e$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 103
    iget-object v4, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v4, v1, p1, v2, v3}, Lcom/morpho/core/MorphoPanoramaGP;->a(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMorphoPanoramaGP saveOutputJpeg failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveOutputImageTask"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/panorama/e;->a(Ljava/lang/String;II)V

    .line 109
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/camera/panorama/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/net/Uri;
    .locals 3

    .line 115
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".jpg"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "datetaken"

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string v1, "image/jpeg"

    .line 119
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget v1, v1, Lcn/nubia/camera/panorama/e$b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "_data"

    .line 122
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "width"

    .line 123
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "height"

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p1, p1, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    if-eqz p1, :cond_0

    const-string p1, "latitude"

    .line 126
    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p1, "longitude"

    .line 127
    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/panorama/e;->e:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SaveOutputImageTask"

    const-string p3, "updateDataRes fail"

    .line 132
    invoke-static {p2, p3, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(DDLandroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 184
    sget v0, Lcn/nubia/d/a;->aQ:I

    invoke-static {p1, p2}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget v0, Lcn/nubia/d/a;->aS:I

    invoke-static {p3, p4}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget v0, Lcn/nubia/d/a;->aP:I

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    if-ltz p1, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p5, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget p1, Lcn/nubia/d/a;->aR:I

    cmpl-double p2, p3, v1

    if-ltz p2, :cond_1

    const-string p2, "E"

    goto :goto_1

    :cond_1
    const-string p2, "W"

    :goto_1
    invoke-virtual {p5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 178
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 7

    .line 139
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget v0, v0, Lcn/nubia/camera/panorama/e$b;->g:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    .line 156
    :goto_0
    sget v1, Lcn/nubia/d/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget v0, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget v0, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget v0, Lcn/nubia/d/a;->H:I

    new-instance v1, Lcn/nubia/d/l;

    iget-object v2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget v2, v2, Lcn/nubia/camera/panorama/e$b;->e:F

    const v3, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v3}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget v0, Lcn/nubia/d/a;->ad:I

    new-instance v1, Lcn/nubia/d/l;

    iget-object v2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget v2, v2, Lcn/nubia/camera/panorama/e$b;->f:F

    invoke-direct {v1, v2, v3}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget v0, Lcn/nubia/d/a;->am:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget p2, Lcn/nubia/d/a;->an:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    if-eqz p2, :cond_3

    .line 165
    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p2, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/e$b;->d:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/panorama/e;->a(DDLandroid/util/SparseArray;)V

    .line 167
    :cond_3
    invoke-direct {p0, v6}, Lcn/nubia/camera/panorama/e;->a(Landroid/util/SparseArray;)V

    .line 168
    invoke-static {p1, v6}, Lcn/nubia/k/c/d;->a(Ljava/lang/String;Landroid/util/SparseArray;)Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    .line 57
    iget-object p1, p0, Lcn/nubia/camera/panorama/e;->c:Lcn/nubia/camera/panorama/d;

    invoke-virtual {p1}, Lcn/nubia/camera/panorama/d;->c()V

    .line 58
    iget-object p1, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {p1}, Lcom/morpho/core/MorphoPanoramaGP;->c()I

    move-result p1

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-boolean v0, v0, Lcn/nubia/camera/panorama/e$b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "SaveOutputImageTask"

    if-eqz p1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "morhpo panorama gp end failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->a(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "morhpo panorama gp getClippingRect failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/e;->a(Landroid/graphics/Rect;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/e;->b:Landroid/net/Uri;

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    invoke-virtual {p1}, Lcom/morpho/core/MorphoPanoramaGP;->a()I

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/panorama/e;->d:Lcom/morpho/core/MorphoPanoramaGP;

    const-string p1, "SaveOutputImageTask"

    const-string v0, "SaveOutputImageTask onPostExecute"

    .line 87
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/panorama/e;->g:Lcn/nubia/camera/panorama/e$a;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/panorama/e;->b:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object v3, v3, Lcn/nubia/camera/panorama/e$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget-object v3, v3, Lcn/nubia/camera/panorama/e$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/panorama/e;->f:Lcn/nubia/camera/panorama/e$b;

    iget v3, v3, Lcn/nubia/camera/panorama/e$b;->g:I

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/camera/panorama/e$a;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MORTIME] PanoramaFinish time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/nubia/camera/panorama/e;->a:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/e;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/e;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "SaveOutputImageTask"

    const-string v1, "SaveOutputImageTask onPreExecute"

    .line 77
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/panorama/e;->a:J

    return-void
.end method

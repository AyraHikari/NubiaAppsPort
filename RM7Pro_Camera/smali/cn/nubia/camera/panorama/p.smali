.class public Lcn/nubia/camera/panorama/p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/panorama/p$a;,
        Lcn/nubia/camera/panorama/p$b;
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

.field private c:Landroid/content/ContentResolver;

.field private d:Lcn/nubia/camera/panorama/p$b;

.field private e:Lcn/nubia/camera/panorama/p$a;

.field private f:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/p$b;Lcn/nubia/camera/panorama/p$a;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/panorama/p;->c:Landroid/content/ContentResolver;

    .line 48
    iput-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    .line 49
    iput-object p3, p0, Lcn/nubia/camera/panorama/p;->e:Lcn/nubia/camera/panorama/p$a;

    .line 50
    iput-object p4, p0, Lcn/nubia/camera/panorama/p;->f:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 3

    .line 111
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 113
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

    .line 114
    iget-object v1, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-wide v1, v1, Lcn/nubia/camera/panorama/p$b;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string v1, "image/jpeg"

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v1, v1, Lcn/nubia/camera/panorama/p$b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "relative_path"

    .line 118
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "width"

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "height"

    .line 120
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "_size"

    .line 121
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p1, p1, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    if-eqz p1, :cond_0

    const-string p1, "latitude"

    .line 123
    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p1, "longitude"

    .line 124
    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->c:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "YuvSaveOutputImageTask"

    const-string p3, "updateDataRes fail"

    .line 129
    invoke-static {p2, p3, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a([BII)Landroid/net/Uri;
    .locals 7

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object v2, v0, Lcn/nubia/camera/panorama/p$b;->e:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/panorama/p;->b([BII)[B

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object v3, v0, Lcn/nubia/camera/panorama/p$b;->d:Ljava/lang/String;

    array-length v6, p1

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/panorama/p;->a(Ljava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->c:Landroid/content/ContentResolver;

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->c:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 97
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->c:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    :goto_0
    move-object p2, p3

    :cond_0
    :goto_1
    return-object p2
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

    .line 182
    sget v0, Lcn/nubia/d/a;->aQ:I

    invoke-static {p1, p2}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget v0, Lcn/nubia/d/a;->aS:I

    invoke-static {p3, p4}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
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

    .line 187
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

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->f:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->f:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 176
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private b([BII)[B
    .locals 7

    .line 136
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v0, v0, Lcn/nubia/camera/panorama/p$b;->i:I

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

    .line 153
    :goto_0
    sget v1, Lcn/nubia/d/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget v0, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget v0, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget v0, Lcn/nubia/d/a;->H:I

    new-instance v1, Lcn/nubia/d/l;

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v2, v2, Lcn/nubia/camera/panorama/p$b;->g:F

    const v3, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v3}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget v0, Lcn/nubia/d/a;->ad:I

    new-instance v1, Lcn/nubia/d/l;

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v2, v2, Lcn/nubia/camera/panorama/p$b;->h:F

    invoke-direct {v1, v2, v3}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget v0, Lcn/nubia/d/a;->am:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget p2, Lcn/nubia/d/a;->an:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-wide p2, p2, Lcn/nubia/camera/panorama/p$b;->k:J

    invoke-static {v6, p2, p3}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 162
    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    if-eqz p2, :cond_3

    .line 163
    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p2, p2, Lcn/nubia/camera/panorama/p$b;->f:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/panorama/p;->a(DDLandroid/util/SparseArray;)V

    .line 165
    :cond_3
    invoke-direct {p0, v6}, Lcn/nubia/camera/panorama/p;->a(Landroid/util/SparseArray;)V

    .line 166
    invoke-static {p1, v6}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DlgPanoramaResult1 Total heap memory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", free heap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "panorama"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object p1, p1, Lcn/nubia/camera/panorama/p$b;->a:[B

    if-eqz p1, :cond_0

    .line 61
    new-instance p1, Landroid/graphics/YuvImage;

    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object v1, v0, Lcn/nubia/camera/panorama/p$b;->a:[B

    const/16 v2, 0x11

    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v3, v0, Lcn/nubia/camera/panorama/p$b;->b:I

    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v4, v0, Lcn/nubia/camera/panorama/p$b;->c:I

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v2, v2, Lcn/nubia/camera/panorama/p$b;->b:I

    iget-object v3, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v3, v3, Lcn/nubia/camera/panorama/p$b;->c:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v0, v0, Lcn/nubia/camera/panorama/p$b;->b:I

    iget-object v1, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v1, v1, Lcn/nubia/camera/panorama/p$b;->c:I

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/panorama/p;->a([BII)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/p;->b:Landroid/net/Uri;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/panorama/p;->e:Lcn/nubia/camera/panorama/p$a;

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/panorama/p;->b:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object v2, v2, Lcn/nubia/camera/panorama/p$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget-object v2, v2, Lcn/nubia/camera/panorama/p$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/p;->d:Lcn/nubia/camera/panorama/p$b;

    iget v2, v2, Lcn/nubia/camera/panorama/p$b;->i:I

    invoke-interface {p1, v0, v1, v2}, Lcn/nubia/camera/panorama/p$a;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MORTIME] PanoramaFinish time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/camera/panorama/p;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YuvSaveOutputImageTask"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/p;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/p;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/panorama/p;->a:J

    return-void
.end method

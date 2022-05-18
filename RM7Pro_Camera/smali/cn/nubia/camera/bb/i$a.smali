.class final Lcn/nubia/camera/bb/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bb/i$a$a;
    }
.end annotation


# instance fields
.field a:Landroid/location/Location;

.field final synthetic b:Lcn/nubia/camera/bb/i;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/bb/i;Landroid/location/Location;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcn/nubia/camera/bb/i$a;->a:Landroid/location/Location;

    return-void
.end method

.method private a(Ljava/lang/String;JI[BLjava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;
    .locals 2

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 245
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
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

    .line 247
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    .line 248
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-static {p6}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    array-length p1, p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x1

    .line 254
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 255
    array-length p2, p5

    const/4 p3, 0x0

    invoke-static {p5, p3, p2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 256
    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    .line 259
    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 260
    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a([BLandroid/location/Location;)V
    .locals 21

    move-object/from16 v8, p0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-static/range {p1 .. p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v19

    .line 213
    iget-object v0, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/i;->u()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    iget-object v4, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v4}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v4, v19

    move-object/from16 v5, p1

    move-object v6, v10

    move-object/from16 v7, p2

    .line 215
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/bb/i$a;->a(Ljava/lang/String;JI[BLjava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v18

    .line 217
    new-instance v0, Lcn/nubia/k/b/f;

    iget-object v1, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    .line 218
    invoke-virtual {v1}, Lcn/nubia/camera/bb/i;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v1, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    .line 219
    invoke-virtual {v1}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v12

    iget-object v1, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    .line 220
    invoke-virtual {v1}, Lcn/nubia/camera/bb/i;->u()Lcn/nubia/k/a/a;

    move-result-object v13

    iget-object v1, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    .line 222
    invoke-static {v1}, Lcn/nubia/camera/bb/i;->a(Lcn/nubia/camera/bb/i;)Landroid/util/SparseArray;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcn/nubia/camera/bb/i$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcn/nubia/camera/bb/i$a$a;-><init>(Lcn/nubia/camera/bb/i$a;Lcn/nubia/camera/bb/i$1;)V

    move-object v10, v0

    move-object/from16 v14, p1

    move-object/from16 v20, v1

    invoke-direct/range {v10 .. v20}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    .line 228
    iget-object v1, v8, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/i;->u()Lcn/nubia/k/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 2

    .line 187
    iget-object p2, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {p2}, Lcn/nubia/camera/bb/i;->l()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/i;->l()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; No need to save snapshot"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NormalVideoRecordManagerImpl"

    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/bb/i;->a(I)V

    return-void

    .line 198
    :cond_2
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 200
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/bb/i$a;->a:Landroid/location/Location;

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/bb/i$a;->a([BLandroid/location/Location;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/i;->o()V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/bb/i$a;->b:Lcn/nubia/camera/bb/i;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/bb/i;->a(I)V

    .line 205
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 177
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/bb/i$a;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

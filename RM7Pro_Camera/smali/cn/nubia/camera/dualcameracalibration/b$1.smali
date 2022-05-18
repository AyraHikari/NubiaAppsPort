.class Lcn/nubia/camera/dualcameracalibration/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 17

    move-object/from16 v0, p0

    .line 267
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 268
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 269
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/b/a/f$a;

    .line 270
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 271
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    .line 272
    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->b()I

    move-result v13

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->a()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v16

    .line 270
    invoke-static/range {v6 .. v16}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v1

    .line 274
    iget-object v2, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/b;->a(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "DualCalibrationFragment"

    if-eqz v2, :cond_3

    .line 275
    iget-object v2, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/b;->b(Lcn/nubia/camera/dualcameracalibration/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/k/c/e;->a(Ljava/lang/String;[B)Z

    const-string v1, "receive Sub YUV"

    .line 276
    invoke-static {v4, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/b;->c(Lcn/nubia/camera/dualcameracalibration/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/b;->d(Lcn/nubia/camera/dualcameracalibration/b;)I

    move-result v1

    const-wide/16 v6, 0x7d0

    const/4 v2, 0x3

    if-ne v1, v3, :cond_0

    const-string v1, "do Factory Calibration!"

    .line 280
    invoke-static {v4, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    const/4 v3, 0x0

    const-string v4, "TakePictureSuccess"

    invoke-static {v1, v4, v3}, Lcn/nubia/camera/dualcameracalibration/b;->a(Lcn/nubia/camera/dualcameracalibration/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {v1}, Lcn/nubia/camera/dualcameracalibration/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/dualcameracalibration/c;

    invoke-virtual {v1}, Lcn/nubia/camera/dualcameracalibration/c;->n()Lcn/nubia/camera/dualcameracalibration/c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lcn/nubia/camera/dualcameracalibration/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/b;->d(Lcn/nubia/camera/dualcameracalibration/b;)I

    move-result v1

    if-ne v1, v5, :cond_1

    const-string v1, "do Sale Calibration"

    .line 284
    invoke-static {v4, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/b;->e(Lcn/nubia/camera/dualcameracalibration/b;)V

    goto :goto_0

    :cond_1
    const-string v1, "do Factory Verify"

    .line 287
    invoke-static {v4, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/b;->f(Lcn/nubia/camera/dualcameracalibration/b;)V

    .line 289
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {v1}, Lcn/nubia/camera/dualcameracalibration/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/dualcameracalibration/c;

    invoke-virtual {v1}, Lcn/nubia/camera/dualcameracalibration/c;->n()Lcn/nubia/camera/dualcameracalibration/c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v6, v7}, Lcn/nubia/camera/dualcameracalibration/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    const-string v2, "main file not found!"

    invoke-static {v1, v2}, Lcn/nubia/camera/dualcameracalibration/b;->a(Lcn/nubia/camera/dualcameracalibration/b;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/b;->g(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    iget-object v2, v0, Lcn/nubia/camera/dualcameracalibration/b$1;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v2}, Lcn/nubia/camera/dualcameracalibration/b;->c(Lcn/nubia/camera/dualcameracalibration/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/k/c/e;->a(Ljava/lang/String;[B)Z

    const-string v1, "receive Main YUV"

    .line 296
    invoke-static {v4, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 264
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/dualcameracalibration/b$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

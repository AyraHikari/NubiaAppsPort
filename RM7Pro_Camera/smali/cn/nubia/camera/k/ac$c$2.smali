.class Lcn/nubia/camera/k/ac$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ac$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ac$c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ac$c;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 24

    move-object/from16 v0, p0

    .line 286
    iget-object v1, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v1}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 287
    iget-object v2, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v2}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 288
    iget-object v3, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v3}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/b/a/f$a;

    .line 289
    iget-object v4, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v4, v4, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v4}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v4

    .line 290
    iget-object v5, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v5, v5, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v5}, Lcn/nubia/camera/k/ac;->c(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/x$c;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 291
    iget v6, v5, Lcn/nubia/camera/k/x$c;->d:I

    if-nez v6, :cond_0

    iget v6, v5, Lcn/nubia/camera/k/x$c;->b:I

    if-nez v6, :cond_0

    iget v6, v5, Lcn/nubia/camera/k/x$c;->c:I

    if-eqz v6, :cond_1

    .line 293
    :cond_0
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v8

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v9

    .line 294
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v11

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v12

    .line 295
    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->b()I

    move-result v14

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->a()I

    move-result v15

    iget-object v6, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    .line 296
    invoke-static {v6}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/b/a/f;->f()I

    move-result v16

    iget-object v6, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v6}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/b/a/f;->c()I

    move-result v17

    iget v6, v5, Lcn/nubia/camera/k/x$c;->b:I

    move-object/from16 v22, v3

    iget v3, v5, Lcn/nubia/camera/k/x$c;->c:I

    iget v5, v5, Lcn/nubia/camera/k/x$c;->d:I

    move-object/from16 v23, v2

    iget-object v2, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v2, v2, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    .line 297
    invoke-static {v2}, Lcn/nubia/camera/k/ac;->d(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v18, v6

    move/from16 v19, v3

    move/from16 v20, v5

    .line 293
    invoke-static/range {v7 .. v21}, Lcn/nubia/algorithm/camera/ArcsoftPrettyAlgorithm;->pretty(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIII)V

    goto :goto_0

    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    .line 299
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v2}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 300
    iget-object v3, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v3, v3, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v3}, Lcn/nubia/camera/k/ac;->e(Lcn/nubia/camera/k/ac;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "none"

    .line 301
    invoke-static {v3, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 302
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 303
    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 304
    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    iget-object v12, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    .line 305
    invoke-static {v12}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v12

    invoke-interface {v12}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    iget-object v13, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v13}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v13

    invoke-interface {v13}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    move v15, v2

    .line 302
    invoke-static/range {v3 .. v15}, Lcn/nubia/algorithm/camera/EffectAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILjava/lang/String;I)V

    .line 308
    :cond_2
    iget-object v3, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v3, v3, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v3}, Lcn/nubia/camera/k/ac;->f(Lcn/nubia/camera/k/ac;)I

    move-result v14

    if-eqz v14, :cond_3

    .line 310
    iget-object v3, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v3, v3, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    invoke-static {v3}, Lcn/nubia/camera/k/ac;->b(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/s;

    move-result-object v3

    instance-of v3, v3, Lcn/nubia/camera/k/m;

    if-eqz v3, :cond_3

    .line 311
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 312
    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface/range {v23 .. v23}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 313
    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface/range {v22 .. v22}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    iget-object v1, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    .line 314
    invoke-static {v1}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    iget-object v1, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v1}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    invoke-static {}, Lcn/nubia/camera/ba/a;->E()Z

    move-result v16

    move v15, v2

    .line 311
    invoke-static/range {v3 .. v16}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->addNubiaWaterMark(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIZ)V

    .line 316
    :cond_3
    iget-object v1, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v1, v1, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    iget-object v2, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v2}, Lcn/nubia/camera/k/ac$c;->d(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/k;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v3}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v4}, Lcn/nubia/camera/k/ac$c;->b(Lcn/nubia/camera/k/ac$c;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    iget-object v5, v0, Lcn/nubia/camera/k/ac$c$2;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v5}, Lcn/nubia/camera/k/ac$c;->e(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/camera/k/o;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/b/k;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)Z

    return-void
.end method

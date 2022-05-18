.class Lcn/nubia/camera/y/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/b;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/b;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "PictureCallBack"

    .line 480
    iput-object p1, p0, Lcn/nubia/camera/y/b$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 13

    .line 484
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;Z)Z

    .line 485
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;)I

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval onPictureTaken "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/y/b;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PictureCallBack"

    invoke-static {v1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->c(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p2

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq p2, v1, :cond_1

    .line 491
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void

    .line 494
    :cond_1
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    .line 495
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 496
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 497
    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v3

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v4

    .line 498
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v6

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v7

    .line 499
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v9

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v10

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v11

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v12

    .line 497
    invoke-static/range {v2 .. v12}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    .line 500
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 501
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 502
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->d(Lcn/nubia/camera/y/b;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 503
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->e(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/y/h;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 504
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->e(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/y/h;

    move-result-object p2

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcn/nubia/camera/y/h;->a([BII)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->f(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/z/a/d;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 508
    iget-object p2, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    invoke-static {p2}, Lcn/nubia/camera/y/b;->f(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/z/a/d;

    move-result-object p2

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/y/b$b;->a:Lcn/nubia/camera/y/b;

    .line 509
    invoke-static {v3}, Lcn/nubia/camera/y/b;->g(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual {p2, v0, v1, v2, v3}, Lcn/nubia/camera/z/a/d;->a([BIILjava/lang/String;)V

    .line 513
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 478
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/y/b$b;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

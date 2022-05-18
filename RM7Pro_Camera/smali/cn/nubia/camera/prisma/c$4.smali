.class Lcn/nubia/camera/prisma/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "PrismaFragment"

    const-string v2, "onPictureTaken"

    .line 301
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 303
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 304
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 305
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/b/a/f$a;

    .line 306
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v5

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v6

    .line 307
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v8

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v9

    .line 308
    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->b()I

    move-result v11

    invoke-interface {v3}, Lcn/nubia/b/a/f$a;->a()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v14

    .line 306
    invoke-static/range {v4 .. v14}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v16

    .line 309
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->close()V

    .line 310
    new-instance v1, Lcn/nubia/camera/prisma/b;

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v18

    .line 311
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v3}, Lcn/nubia/camera/prisma/c;->d(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v2, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    .line 312
    invoke-static {v2}, Lcn/nubia/camera/prisma/c;->e(Lcn/nubia/camera/prisma/c;)I

    move-result v20

    new-instance v2, Lcn/nubia/camera/prisma/c$4$1;

    invoke-direct {v2, v0}, Lcn/nubia/camera/prisma/c$4$1;-><init>(Lcn/nubia/camera/prisma/c$4;)V

    move-object v15, v1

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, Lcn/nubia/camera/prisma/b;-><init>(Lcn/nubia/algorithm/utils/a;IIIILcn/nubia/camera/prisma/b$a;)V

    .line 323
    iget-object v2, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v2}, Lcn/nubia/camera/prisma/c;->g(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/prisma/g;->a(Lcn/nubia/camera/prisma/b;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 298
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/prisma/c$4;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

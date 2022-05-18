.class public Lcn/nubia/camera/clone/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcn/nubia/camera/clone/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 46
    iget v0, p0, Lcn/nubia/camera/clone/a;->a:I

    return v0
.end method

.method public a([BILandroid/graphics/Bitmap;IIII)I
    .locals 11

    move-object v0, p0

    .line 25
    iget v1, v0, Lcn/nubia/camera/clone/a;->a:I

    const/4 v9, -0x1

    const-string v10, "Clone"

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const-string v1, "savePicture failed, because mPicture > 5"

    .line 26
    invoke-static {v10, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    .line 30
    invoke-static/range {v1 .. v8}, Lcn/nubia/camera/clone/e;->a(IIIII[BILandroid/graphics/Bitmap;)I

    move-result v1

    .line 32
    iget v2, v0, Lcn/nubia/camera/clone/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/nubia/camera/clone/a;->a:I

    if-gez v1, :cond_1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicture failed, because ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    return v2
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 77
    invoke-static {p1, p2}, Lcn/nubia/camera/clone/e;->c(ILandroid/graphics/Bitmap;)I

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 67
    invoke-static {p1, p2, p3}, Lcn/nubia/camera/clone/e;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcn/nubia/camera/clone/e;->a(Landroid/graphics/Bitmap;)I

    return-void
.end method

.method public b(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 100
    invoke-static {p1, p2}, Lcn/nubia/camera/clone/e;->a(ILandroid/graphics/Bitmap;)I

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcn/nubia/camera/clone/e;->b(Landroid/graphics/Bitmap;)I

    return-void
.end method

.method public b()[B
    .locals 1

    .line 93
    invoke-static {}, Lcn/nubia/camera/clone/e;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcn/nubia/camera/clone/a;->a:I

    .line 112
    invoke-static {}, Lcn/nubia/camera/clone/e;->b()I

    return-void
.end method

.method public c(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 104
    invoke-static {p1, p2}, Lcn/nubia/camera/clone/e;->b(ILandroid/graphics/Bitmap;)I

    return-void
.end method

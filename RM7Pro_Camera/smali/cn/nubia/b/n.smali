.class public Lcn/nubia/b/n;
.super Lcn/nubia/b/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/b/m<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/b/m;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/b/n;->a:Landroid/graphics/SurfaceTexture;

    .line 22
    iput p2, p0, Lcn/nubia/b/n;->b:I

    .line 23
    iput p3, p0, Lcn/nubia/b/n;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcn/nubia/b/n;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method protected a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 47
    instance-of v0, p1, Lcn/nubia/b/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcn/nubia/b/n;

    .line 49
    iget-object v2, p0, Lcn/nubia/b/n;->a:Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, Lcn/nubia/b/n;->a:Landroid/graphics/SurfaceTexture;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/b/n;->b:I

    iget v3, v0, Lcn/nubia/b/n;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/b/n;->c:I

    iget v0, v0, Lcn/nubia/b/n;->c:I

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected b()Landroid/view/Surface;
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcn/nubia/b/n;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/b/n;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/n;->a:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/b/n;->b:I

    iget v2, p0, Lcn/nubia/b/n;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 37
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcn/nubia/b/n;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcn/nubia/b/n;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcn/nubia/b/n;->b()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

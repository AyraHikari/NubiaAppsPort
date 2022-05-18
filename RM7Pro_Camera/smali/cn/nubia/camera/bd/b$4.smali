.class Lcn/nubia/camera/bd/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bd/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bd/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bd/b;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcn/nubia/camera/bd/b$4;->a:Lcn/nubia/camera/bd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "yuweiwei"

    const-string v1, "takepicture onFrameAvailable!"

    .line 261
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/bd/b$4;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/bd/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bd/b$4;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v1}, Lcn/nubia/camera/bd/b;->c(Lcn/nubia/camera/bd/b;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/bd/b$4;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v2}, Lcn/nubia/camera/bd/b;->c(Lcn/nubia/camera/bd/b;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/bd/f;->a(IILandroid/graphics/SurfaceTexture;)V

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/bd/b$4;->a:Lcn/nubia/camera/bd/b;

    invoke-static {p1}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/bd/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/bd/f;->a(Z)V

    return-void
.end method

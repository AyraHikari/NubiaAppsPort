.class Lcn/nubia/camera/aa/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aa/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcn/nubia/camera/aa/b$4;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LivePhoto"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/aa/b$4;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aa/b$4;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->k(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object p1, p0, Lcn/nubia/camera/aa/b$4;->a:Lcn/nubia/camera/aa/b;

    invoke-static {p1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aa/b$4;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->k(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

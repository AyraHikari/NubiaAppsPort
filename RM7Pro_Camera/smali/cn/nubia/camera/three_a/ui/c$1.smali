.class Lcn/nubia/camera/three_a/ui/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/c;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;I)I

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->q()V

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->b(Lcn/nubia/camera/three_a/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$1;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->j()Z

    :cond_0
    return-void
.end method

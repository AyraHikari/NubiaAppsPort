.class Lcn/nubia/camera/three_a/ui/c$2;
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

    .line 473
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;I)I

    .line 477
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;Z)Z

    .line 481
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->d(Lcn/nubia/camera/three_a/ui/c;)V

    goto :goto_1

    .line 478
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$2;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->c(Lcn/nubia/camera/three_a/ui/c;)V

    :goto_1
    return-void
.end method

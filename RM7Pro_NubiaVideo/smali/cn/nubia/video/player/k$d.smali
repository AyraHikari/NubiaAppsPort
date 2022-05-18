.class Lcn/nubia/video/player/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/k;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/k$d;->a:Lcn/nubia/video/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/k$d;->a:Lcn/nubia/video/player/k;

    invoke-virtual {v0}, Lcn/nubia/video/player/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/k$d;->a:Lcn/nubia/video/player/k;

    invoke-static {v0}, Lcn/nubia/video/player/k;->p(Lcn/nubia/video/player/k;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/k$d;->a:Lcn/nubia/video/player/k;

    invoke-static {v0}, Lcn/nubia/video/player/k;->r(Lcn/nubia/video/player/k;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/k$d;->a:Lcn/nubia/video/player/k;

    invoke-static {v1}, Lcn/nubia/video/player/k;->q(Lcn/nubia/video/player/k;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

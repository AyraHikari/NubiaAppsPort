.class Lcn/nubia/video/player/PIPPlayer$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/PIPPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PIPPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$e;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$e;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->r(Lcn/nubia/video/player/PIPPlayer;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$e;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$e;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->p(Lcn/nubia/video/player/PIPPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

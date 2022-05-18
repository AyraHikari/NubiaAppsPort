.class Lcn/nubia/video/player/nubiaplayer/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$e;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$e;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->Q(Lcn/nubia/video/player/nubiaplayer/c;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$e;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->Y(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c$e;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/c;->W(Lcn/nubia/video/player/nubiaplayer/c;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/c$e;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/c;->X(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->getPlaySpeed()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide/16 v2, 0x78

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

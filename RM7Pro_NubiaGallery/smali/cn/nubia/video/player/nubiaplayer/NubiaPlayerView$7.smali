.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$7;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$7;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$7;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->hide()V

    return-void
.end method

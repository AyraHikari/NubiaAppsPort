.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;
.super Ljava/lang/Object;
.source "NubiaPlayerController.java"

# interfaces
.implements Lcn/nubia/video/player/common/CommandManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCommandNotify"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)V

    return-void
.end method


# virtual methods
.method public onNotify(I)V
    .locals 1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->onFinish()V

    :goto_0
    return-void
.end method

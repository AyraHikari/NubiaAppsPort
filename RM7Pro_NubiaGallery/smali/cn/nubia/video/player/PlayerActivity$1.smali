.class Lcn/nubia/video/player/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PlayerActivity;->onPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PlayerActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity$1;->this$0:Lcn/nubia/video/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity$1;->this$0:Lcn/nubia/video/player/PlayerActivity;

    invoke-static {v0}, Lcn/nubia/video/player/PlayerActivity;->access$000(Lcn/nubia/video/player/PlayerActivity;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity$1;->this$0:Lcn/nubia/video/player/PlayerActivity;

    invoke-static {v0}, Lcn/nubia/video/player/PlayerActivity;->access$000(Lcn/nubia/video/player/PlayerActivity;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.class Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;
.super Ljava/lang/Object;
.source "VideoTrimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->onVideoTrimError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->val$error:I

    const/16 v1, 0x3e9

    const v2, 0x7f100124

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    const v1, 0x7f10022d

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$300(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0, v2}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$300(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0, v2}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$300(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    :goto_0
    return-void
.end method

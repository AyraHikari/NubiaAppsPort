.class Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;
.super Ljava/lang/Object;
.source "VideoTrimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->onVideoTrimComplete(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

.field final synthetic val$foldername:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->val$foldername:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->val$foldername:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1001d6

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$102(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 87
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, -0x1

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$200(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onFinish()V

    :cond_0
    return-void
.end method

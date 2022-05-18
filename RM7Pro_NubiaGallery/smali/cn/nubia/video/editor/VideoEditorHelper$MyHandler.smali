.class Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;
.super Landroid/os/Handler;
.source "VideoEditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/editor/VideoEditorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/editor/VideoEditorHelper;


# direct methods
.method private constructor <init>(Lcn/nubia/video/editor/VideoEditorHelper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/editor/VideoEditorHelper;Lcn/nubia/video/editor/VideoEditorHelper$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$400(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onFinish()V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$200(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$300(Lcn/nubia/video/editor/VideoEditorHelper;)Z

    move-result v1

    const-string v2, "isWallPaper"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 105
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/video/editor/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->access$400(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onFinish()V

    :goto_0
    return-void
.end method

.class Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;
.super Ljava/lang/Object;
.source "VideoTrimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$102(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 140
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

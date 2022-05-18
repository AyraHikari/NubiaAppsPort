.class Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;
.super Ljava/lang/Object;
.source "VideoTrimHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->showTrimTypeDialog()V
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

    .line 160
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 171
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {p2, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$400(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-static {p2, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$400(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->access$400(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    :goto_0
    return-void
.end method

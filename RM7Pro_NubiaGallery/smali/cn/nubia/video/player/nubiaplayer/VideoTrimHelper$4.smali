.class Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$4;
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

    .line 153
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$4;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$4;->this$0:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->release()V

    return-void
.end method

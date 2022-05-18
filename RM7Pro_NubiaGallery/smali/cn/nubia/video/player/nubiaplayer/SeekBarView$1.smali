.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$1;
.super Landroid/os/Handler;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 71
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->invalidate()V

    :cond_1
    return-void
.end method

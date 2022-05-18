.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$a;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$a;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

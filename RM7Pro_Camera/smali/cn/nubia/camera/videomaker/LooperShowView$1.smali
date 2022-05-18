.class Lcn/nubia/camera/videomaker/LooperShowView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/LooperShowView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/LooperShowView;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/LooperShowView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView$1;->a:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView$1;->a:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/LooperShowView;->invalidate()V

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView$1;->a:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/LooperShowView;->b(Lcn/nubia/camera/videomaker/LooperShowView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView$1;->a:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/LooperShowView;->a(Lcn/nubia/camera/videomaker/LooperShowView;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method

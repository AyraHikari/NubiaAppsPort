.class Lcn/nubia/video/mediajni/VideoReverse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediajni/VideoReverse;->executeFFmpegCmd([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/mediajni/VideoReverse;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediajni/VideoReverse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse$1;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 2

    const-string v0, "VideoReverse"

    const-string v1, "handle video onBegin..."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnd(I)V
    .locals 1

    const-string p1, "VideoReverse"

    const-string v0, "handle video onEnd..."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse$1;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    invoke-static {p1}, Lcn/nubia/video/mediajni/VideoReverse;->access$100(Lcn/nubia/video/mediajni/VideoReverse;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

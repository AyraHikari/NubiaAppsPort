.class Lcn/nubia/video/mediajni/VideoReverse$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediajni/VideoReverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/mediajni/VideoReverse;


# direct methods
.method private constructor <init>(Lcn/nubia/video/mediajni/VideoReverse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse$MyHandler;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/mediajni/VideoReverse;Lcn/nubia/video/mediajni/VideoReverse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediajni/VideoReverse$MyHandler;-><init>(Lcn/nubia/video/mediajni/VideoReverse;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse$MyHandler;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    invoke-static {p1}, Lcn/nubia/video/mediajni/VideoReverse;->access$200(Lcn/nubia/video/mediajni/VideoReverse;)Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;->onComplete()V

    :goto_0
    return-void
.end method

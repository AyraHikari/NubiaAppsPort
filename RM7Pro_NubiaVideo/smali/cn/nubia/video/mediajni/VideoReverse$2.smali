.class Lcn/nubia/video/mediajni/VideoReverse$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediajni/VideoReverse;->execute([Ljava/lang/String;Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/mediajni/VideoReverse;

.field final synthetic val$commands:[Ljava/lang/String;

.field final synthetic val$onHandleListener:Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediajni/VideoReverse;Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    iput-object p2, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->val$onHandleListener:Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;

    iput-object p3, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->val$commands:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->val$onHandleListener:Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;->onBegin()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->this$0:Lcn/nubia/video/mediajni/VideoReverse;

    iget-object v1, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->val$commands:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v0, v2, v1}, Lcn/nubia/video/mediajni/VideoReverse;->access$300(Lcn/nubia/video/mediajni/VideoReverse;I[Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediajni/VideoReverse$2;->val$onHandleListener:Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;->onEnd(I)V

    :cond_1
    return-void
.end method

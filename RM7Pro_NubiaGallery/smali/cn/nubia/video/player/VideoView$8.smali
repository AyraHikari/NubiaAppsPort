.class Lcn/nubia/video/player/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$8;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$8;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->relayout(Z)V

    return-void
.end method

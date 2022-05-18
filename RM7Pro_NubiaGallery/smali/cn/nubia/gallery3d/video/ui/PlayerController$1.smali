.class Lcn/nubia/gallery3d/video/ui/PlayerController$1;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/ui/PlayerController;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsStart:Z

.field private mNeedResume:Z

.field private mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

.field final synthetic this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mNeedResume:Z

    .line 79
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mIsStart:Z

    .line 80
    new-instance p1, Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-direct {p1}, Lcn/nubia/gallery3d/video/TimeCounter;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    return-void
.end method


# virtual methods
.method public onClickPlayControl()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongPress(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mNeedResume:Z

    .line 123
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    goto :goto_0

    .line 126
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mNeedResume:Z

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->resume()V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mNeedResume:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 2

    .line 83
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 84
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mTimeCounter:Lcn/nubia/gallery3d/video/TimeCounter;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/TimeCounter;->count100Ms()Z

    move-result p2

    const-string v0, "PlayerController"

    if-eqz p2, :cond_0

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p1, "STATE_PREPARED"

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    .line 91
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 93
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentState()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 94
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(I)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mIsStart:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mIsStart:Z

    .line 107
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    .line 113
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->mIsStart:Z

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$1;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    :cond_0
    return-void
.end method

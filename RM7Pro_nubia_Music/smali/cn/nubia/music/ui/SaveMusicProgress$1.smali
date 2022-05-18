.class final Lcn/nubia/music/ui/SaveMusicProgress$1;
.super Landroid/os/Handler;
.source "SaveMusicProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/SaveMusicProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/16 v2, 0x63

    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const/16 v0, 0xc8

    .line 119
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-le v1, v2, :cond_0

    .line 120
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 121
    const/16 v0, 0x7d0

    .line 124
    :cond_0
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$000()Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$000()Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 127
    :cond_1
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$100()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 128
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$100()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$300()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 132
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 133
    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 134
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->access$300()Landroid/os/Handler;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

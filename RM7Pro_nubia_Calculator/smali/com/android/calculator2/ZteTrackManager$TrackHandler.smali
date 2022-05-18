.class final Lcom/android/calculator2/ZteTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "ZteTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ZteTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ZteTrackManager;


# direct methods
.method public constructor <init>(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Looper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->this$0:Lcom/android/calculator2/ZteTrackManager;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "ZteTrackManager"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->this$0:Lcom/android/calculator2/ZteTrackManager;

    invoke-static {p0}, Lcom/android/calculator2/ZteTrackManager;->access$500(Lcom/android/calculator2/ZteTrackManager;)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->this$0:Lcom/android/calculator2/ZteTrackManager;

    invoke-static {p0, p1}, Lcom/android/calculator2/ZteTrackManager;->access$400(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Message;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcn/nubia/deskclock/AsyncRingtonePlayer$1;
.super Landroid/os/Handler;
.source "AsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 163
    const-string v0, "AsyncRingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [ringtone] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return-void

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$000()Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$100(Lcn/nubia/deskclock/AsyncRingtonePlayer;Lcn/nubia/deskclock/model/Alarm;)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->stop()V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->stop()V

    goto :goto_0

    .line 179
    :pswitch_5
    invoke-static {}, Lcn/nubia/deskclock/AlarmKlaxon;->getHasClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, " mHasClosed "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$300(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$400(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$302(Lcn/nubia/deskclock/AsyncRingtonePlayer;I)I

    .line 186
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$000()Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v2}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$500(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->playAlarm(Lcn/nubia/deskclock/model/Alarm;Z)V

    goto :goto_0

    .line 189
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$600(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    goto :goto_0

    .line 192
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$700(Lcn/nubia/deskclock/AsyncRingtonePlayer;I)V

    goto :goto_0

    .line 195
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$800(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    goto :goto_0

    .line 198
    :pswitch_9
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$900(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

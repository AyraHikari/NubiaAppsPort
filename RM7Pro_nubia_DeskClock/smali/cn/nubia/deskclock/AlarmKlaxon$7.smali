.class Lcn/nubia/deskclock/AlarmKlaxon$7;
.super Landroid/os/Handler;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon;->getNewHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 473
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$7;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 477
    const-string v0, "AlarmKlaxon"

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

    .line 479
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 493
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 494
    return-void

    .line 481
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$7;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1400(Lcn/nubia/deskclock/AlarmKlaxon;Z)V

    goto :goto_0

    .line 484
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$7;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$600(Lcn/nubia/deskclock/AlarmKlaxon;I)V

    .line 485
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$7;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1400(Lcn/nubia/deskclock/AlarmKlaxon;Z)V

    goto :goto_0

    .line 488
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$7;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1500(Lcn/nubia/deskclock/AlarmKlaxon;)V

    goto :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x378 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

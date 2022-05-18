.class Lcn/nubia/deskclock/AlarmKlaxon$1;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$1;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 120
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange: focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$1;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$1;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

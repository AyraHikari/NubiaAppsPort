.class Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 270
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";; incomingNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$300(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$300(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$300(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$300(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

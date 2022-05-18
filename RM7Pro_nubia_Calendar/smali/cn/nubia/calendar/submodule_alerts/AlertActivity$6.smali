.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 787
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 794
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 795
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1400(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1400(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .line 797
    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Vibrator;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1200(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 799
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1300(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 800
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 813
    :cond_2
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 815
    :try_start_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    :cond_3
    :goto_1
    return-void

    .line 816
    :catch_0
    move-exception v2

    goto :goto_1

    .line 803
    :catch_1
    move-exception v2

    goto :goto_0
.end method

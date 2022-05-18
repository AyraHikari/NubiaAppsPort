.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$4;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 716
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$4;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 719
    return-void
.end method

.class Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;
.super Ljava/lang/Object;
.source "AddAlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

.field final synthetic val$ringtoneUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    .prologue
    .line 555
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iput-object p2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->val$ringtoneUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iget-object v0, v0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$500(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->val$ringtoneUri:Landroid/net/Uri;

    iput-object v1, v0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 559
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iget-object v0, v0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$700(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$600(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->val$ringtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setRingtone(Landroid/os/Handler;Landroid/net/Uri;)V

    .line 560
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;->this$1:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iget-object v0, v0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$802(Lcn/nubia/deskclock/activity/AddAlarmActivity;Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;)Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    .line 561
    return-void
.end method

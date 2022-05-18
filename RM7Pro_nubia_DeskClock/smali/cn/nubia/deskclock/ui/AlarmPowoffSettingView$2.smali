.class Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;
.super Ljava/lang/Object;
.source "AlarmPowoffSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isCheck"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v0, p2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$102(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;Z)Z

    .line 64
    const-string v0, "AlarmPowoffSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPowoffAlarm check= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->saveSharedPreferences(Z)V

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->val$context:Landroid/content/Context;

    const-string v1, "alarmpoweoff_setting_click"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$2;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->enableAlert(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;J)V

    goto :goto_0
.end method

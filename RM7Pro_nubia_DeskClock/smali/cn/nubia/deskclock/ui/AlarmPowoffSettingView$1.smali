.class Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$1;
.super Ljava/lang/Object;
.source "AlarmPowoffSettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 46
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/model/Alarms;->calculateNextPowerOffAlarmAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->access$002(Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;Lcn/nubia/deskclock/model/Alarm;)Lcn/nubia/deskclock/model/Alarm;

    .line 50
    return-void
.end method

.class Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;
.super Ljava/lang/Object;
.source "ShowNextAlarmPointSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isCheck"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    invoke-static {v0, p2}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->access$002(Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;Z)Z

    .line 55
    const-string v0, "ShowNextAlarmPointSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsShowNextAlarmPoint check= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->access$000(Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->this$0:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->access$000(Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->saveSharedPreferences(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView$1;->val$context:Landroid/content/Context;

    const-string v1, "show_next_alarm_point_setting_click"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    return-void
.end method

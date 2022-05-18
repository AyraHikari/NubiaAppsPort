.class Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;
.super Ljava/lang/Object;
.source "AlarmTypeSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isCheck"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-static {v0, p2}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->access$002(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;Z)Z

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->this$0:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->saveSharedPreferences(Z)V

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;->val$context:Landroid/content/Context;

    const-string v1, "alarmtype_setting_click"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

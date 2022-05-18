.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$closeOnceAlarminfo:Ljava/lang/String;

.field final synthetic val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 146
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iput-object p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iput-object p4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$closeOnceAlarminfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iget-object v1, v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    .line 150
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 152
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$002(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 154
    :cond_0
    const-string v1, "AlarmClockAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmSwitch OnClick  alarm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-wide v2, v1, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iget-object v1, v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$viewHolder:Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    iget-object v4, v4, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->val$closeOnceAlarminfo:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$100(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$002(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 159
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

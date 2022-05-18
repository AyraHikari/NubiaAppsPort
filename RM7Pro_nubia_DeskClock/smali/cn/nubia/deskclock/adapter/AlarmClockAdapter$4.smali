.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field final synthetic val$alarm:Lcn/nubia/deskclock/model/Alarm;

.field final synthetic val$alarmInfo:Landroid/widget/TextView;

.field final synthetic val$alarmInfoString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 231
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    iput-object p3, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarmInfo:Landroid/widget/TextView;

    iput-object p4, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarmInfoString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/Alarm;->setEnableRecentAlarm(J)V

    .line 236
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v0, v1, v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$700(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 237
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarmInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->val$alarmInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 239
    return-void
.end method

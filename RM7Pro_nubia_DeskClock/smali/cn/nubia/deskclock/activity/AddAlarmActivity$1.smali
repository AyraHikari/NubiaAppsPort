.class Lcn/nubia/deskclock/activity/AddAlarmActivity$1;
.super Landroid/os/Handler;
.source "AddAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AddAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v3, p1, Landroid/os/Message;->what:I

    .line 108
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 111
    .local v4, "time":J
    const-string v8, "AddAlarmActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: MSG_SAVE_ALARM : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    .line 113
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    iget-object v9, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-virtual {v9}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$000(Lcn/nubia/deskclock/activity/AddAlarmActivity;Ljava/lang/String;)V

    .line 120
    :goto_1
    const-string v8, "AddAlarmActivity"

    const-string v9, "handleMessage: MSG_SAVE_ALARM save finish "

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    iget-object v9, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v8, v9, v4, v5}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$100(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/content/Context;J)V

    .line 116
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v8}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$200(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V

    .line 117
    const-string v8, "AddAlarmActivity"

    const-string v9, "handleMessage: already toast"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-virtual {v8}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->finish()V

    goto :goto_1

    .line 123
    .end local v4    # "time":J
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 124
    .local v6, "timeInMillis":J
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-virtual {v8}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcn/nubia/deskclock/util/AlarmUtils;->formatAddAlarmClockText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "mPickerText":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v8}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$300(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    .end local v2    # "mPickerText":Ljava/lang/String;
    .end local v6    # "timeInMillis":J
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

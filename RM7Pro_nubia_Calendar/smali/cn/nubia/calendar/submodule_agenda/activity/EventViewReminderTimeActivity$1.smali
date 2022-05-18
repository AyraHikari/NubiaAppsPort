.class Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;
.super Ljava/lang/Object;
.source "EventViewReminderTimeActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->onBindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-static {v4, v6}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    .line 72
    const-string v1, " "

    .line 73
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0007

    .line 74
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 76
    .local v2, "reminderLabel":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0030

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 79
    .local v3, "reminderValue":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 108
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "reminder_time_name"

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    .line 110
    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$000(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;)I

    move-result v5

    aget-object v5, v2, v5

    .line 109
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 111
    const-string v4, "reminder_time_index"

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$000(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    return-void

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-static {v4, v6}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 96
    :pswitch_5
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 99
    :pswitch_6
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 102
    :pswitch_7
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 105
    :pswitch_8
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f11024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

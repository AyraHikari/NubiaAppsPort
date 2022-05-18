.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

.field final synthetic val$mReminderTime:Ljava/lang/String;

.field final synthetic val$reminderLabel:[Ljava/lang/CharSequence;

.field final synthetic val$reminderValue:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 2051
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$mReminderTime:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderLabel:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2054
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 2056
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2057
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-boolean v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsAllDay:Z

    if-nez v3, :cond_4

    .line 2058
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2059
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    sget v4, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    aget-object v2, v3, v4

    check-cast v2, Ljava/lang/String;

    .line 2060
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2061
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$mReminderTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2063
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    aget-object v2, v3, v0

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2060
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2066
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderLabel:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 2067
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderLabel:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    .line 2068
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2067
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2069
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->val$reminderValue:[Ljava/lang/CharSequence;

    aget-object v2, v3, v0

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2066
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2072
    :cond_3
    const-string v3, "reminder_time_value"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2076
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2085
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 2080
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$7;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2082
    :catch_0
    move-exception v3

    goto :goto_2
.end method

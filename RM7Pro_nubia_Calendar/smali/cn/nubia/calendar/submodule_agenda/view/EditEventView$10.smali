.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setModel(Lcn/nubia/calendar/model/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 2379
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2383
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v6, p2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 2384
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iput-boolean p2, v6, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsAllDay:Z

    .line 2385
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-boolean v6, v6, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mIsAllDay:Z

    if-eqz v6, :cond_0

    .line 2386
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v6

    .line 2387
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001b

    .line 2388
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2390
    .local v4, "reminderMethodLabel":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 2391
    invoke-static {v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0035

    .line 2390
    invoke-static {v7, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3400(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2393
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 2394
    invoke-static {v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I

    move-result v7

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2395
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I

    move-result v6

    sput v6, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 2427
    .end local v4    # "reminderMethodLabel":[Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 2401
    :cond_0
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 2402
    invoke-static {v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0036

    .line 2401
    invoke-static {v7, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3400(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2404
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 2405
    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "preferences_default_reminder"

    const-string v8, "-1"

    .line 2406
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2409
    .local v1, "mReminderTime":Ljava/lang/String;
    const-string v2, " "

    .line 2410
    .local v2, "mReminderTimeLabel":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v6

    .line 2411
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0007

    .line 2412
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2414
    .local v3, "reminderLabel":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v6

    .line 2415
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0030

    .line 2416
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 2418
    .local v5, "reminderValue":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 2419
    aget-object v6, v5, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2421
    aget-object v2, v3, v0

    .end local v2    # "mReminderTimeLabel":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2422
    .restart local v2    # "mReminderTimeLabel":Ljava/lang/String;
    sput v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 2418
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2425
    :cond_2
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$10;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

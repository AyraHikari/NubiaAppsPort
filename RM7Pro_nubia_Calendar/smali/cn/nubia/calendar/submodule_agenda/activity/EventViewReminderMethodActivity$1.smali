.class Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;
.super Ljava/lang/Object;
.source "EventViewReminderMethodActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->onBindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    .prologue
    .line 400
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "index":I
    const-string v3, " "

    .line 405
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0026

    .line 406
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 407
    .local v4, "reminderMethodLabel":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0030

    .line 408
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 410
    .local v5, "reminderValue":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 442
    :goto_0
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "methodName"

    .line 443
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 444
    .local v2, "methodName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 445
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "reminder_method_name"

    .line 446
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 445
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v6, "reminder_method_index"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->setResult(ILandroid/content/Intent;)V

    .line 449
    return-void

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "methodName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const/4 v0, 0x0

    .line 413
    goto :goto_0

    .line 415
    :pswitch_1
    const/4 v0, 0x1

    .line 416
    goto :goto_0

    .line 418
    :pswitch_2
    const/4 v0, 0x2

    .line 419
    goto :goto_0

    .line 421
    :pswitch_3
    const/4 v0, 0x3

    .line 422
    goto :goto_0

    .line 424
    :pswitch_4
    const/4 v0, 0x4

    .line 425
    goto :goto_0

    .line 427
    :pswitch_5
    const/4 v0, 0x5

    .line 428
    goto :goto_0

    .line 430
    :pswitch_6
    const/4 v0, 0x6

    .line 431
    goto :goto_0

    .line 433
    :pswitch_7
    const/4 v0, 0x7

    .line 434
    goto :goto_0

    .line 436
    :pswitch_8
    const/16 v0, 0x8

    .line 437
    goto :goto_0

    .line 439
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 410
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
        :pswitch_9
    .end packed-switch
.end method

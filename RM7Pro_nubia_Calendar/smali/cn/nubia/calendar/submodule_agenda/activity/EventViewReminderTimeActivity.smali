.class public Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "EventViewReminderTimeActivity.java"


# static fields
.field public static final REMINDER_TIME_INDEX:Ljava/lang/String; = "reminder_time_index"

.field public static final REMINDER_TIME_NAME:Ljava/lang/String; = "reminder_time_name"

.field public static final REMINDER_TIME_VALUE:Ljava/lang/String; = "reminder_time_value"


# instance fields
.field private index:I

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    return p1
.end method

.method private getReminderTimeCheckIdByTime(I)I
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 118
    const v0, 0x7f11024e

    .line 119
    .local v0, "id":I
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_0
    return v0

    .line 121
    :sswitch_0
    const v0, 0x7f11024e

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 125
    :sswitch_1
    const v0, 0x7f11024f

    .line 126
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 129
    :sswitch_2
    const v0, 0x7f110250

    .line 130
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 133
    :sswitch_3
    const v0, 0x7f110251

    .line 134
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 137
    :sswitch_4
    const v0, 0x7f110252

    .line 138
    const/4 v1, 0x4

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 141
    :sswitch_5
    const v0, 0x7f110253

    .line 142
    const/4 v1, 0x5

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 145
    :sswitch_6
    const v0, 0x7f110254

    .line 146
    const/4 v1, 0x6

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 149
    :sswitch_7
    const v0, 0x7f110255

    .line 150
    const/4 v1, 0x7

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 153
    :sswitch_8
    const v0, 0x7f110256

    .line 154
    const/16 v1, 0x8

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_5
        0x3c -> :sswitch_6
        0x5a0 -> :sswitch_7
        0x2760 -> :sswitch_8
    .end sparse-switch
.end method

.method private onBindView()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "reminder_time_value"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "reminderTimeValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "time":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getReminderTimeCheckIdByTime(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 66
    const-string v3, "reminder_time_index"

    iget v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->index:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity$1;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;)V

    .line 68
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 31
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 36
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 41
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 47
    :cond_0
    const v0, 0x7f0300b1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f11024d

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 49
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->onBindView()V

    .line 50
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderTimeActivity;->finish()V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

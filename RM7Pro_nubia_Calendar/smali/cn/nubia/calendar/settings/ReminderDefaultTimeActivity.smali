.class public Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "ReminderDefaultTimeActivity.java"


# instance fields
.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->setReminderTime(Ljava/lang/String;)V

    return-void
.end method

.method private getReminderTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_default_reminder"

    const-string v2, "-1"

    .line 152
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method private getReminderTimeCheckIdByTime(I)I
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 117
    const v0, 0x7f11024e

    .line 118
    .local v0, "id":I
    sparse-switch p1, :sswitch_data_0

    .line 147
    :goto_0
    return v0

    .line 120
    :sswitch_0
    const v0, 0x7f11024e

    .line 121
    goto :goto_0

    .line 123
    :sswitch_1
    const v0, 0x7f11024f

    .line 124
    goto :goto_0

    .line 126
    :sswitch_2
    const v0, 0x7f110250

    .line 127
    goto :goto_0

    .line 129
    :sswitch_3
    const v0, 0x7f110251

    .line 130
    goto :goto_0

    .line 132
    :sswitch_4
    const v0, 0x7f110252

    .line 133
    goto :goto_0

    .line 135
    :sswitch_5
    const v0, 0x7f110253

    .line 136
    goto :goto_0

    .line 138
    :sswitch_6
    const v0, 0x7f110254

    .line 139
    goto :goto_0

    .line 141
    :sswitch_7
    const v0, 0x7f110255

    .line 142
    goto :goto_0

    .line 144
    :sswitch_8
    const v0, 0x7f110256

    goto :goto_0

    .line 118
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
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 77
    invoke-direct {p0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->getReminderTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-direct {p0, v1}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->getReminderTimeCheckIdByTime(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 78
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity$1;-><init>(Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 114
    return-void
.end method

.method private setReminderTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_default_reminder"

    .line 161
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 32
    iput-object p0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 38
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 48
    :cond_0
    const v0, 0x7f0300b1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f11024d

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 51
    invoke-direct {p0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->onBindView()V

    .line 52
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderDefaultTimeActivity;->finish()V

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

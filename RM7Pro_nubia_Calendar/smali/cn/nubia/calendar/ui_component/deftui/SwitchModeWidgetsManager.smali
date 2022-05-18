.class public Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;
.super Ljava/lang/Object;
.source "SwitchModeWidgetsManager.java"


# instance fields
.field private mCheckedTextColor:I

.field private mDayTextView:Landroid/widget/TextView;

.field private mMonthTextView:Landroid/widget/TextView;

.field private mTextColor:I

.field private mWeekTextView:Landroid/widget/TextView;

.field private mYearTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    .line 15
    iput v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    .line 16
    iput v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mCheckedTextColor:I

    .line 19
    const v0, 0x7f11005f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f110060

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f110061

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f110062

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mCheckedTextColor:I

    .line 27
    return-void
.end method

.method private checked(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->clearAllTextViewBg()V

    .line 74
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->clearAllTextColor()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->setPressTextColor(Landroid/widget/TextView;)V

    .line 77
    const v0, 0x7f0202b8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 79
    :cond_0
    return-void
.end method

.method private clearAllTextColor()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    return-void
.end method

.method private clearAllTextViewBg()V
    .locals 2

    .prologue
    const v1, 0x106000d

    .line 82
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public adjustCurrentUI(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "view":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->checked(Landroid/widget/TextView;)V

    .line 70
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    .line 54
    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    .line 58
    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    .line 62
    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDayTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mDayTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonthTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mMonthTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWeekTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mWeekTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getYearTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mYearTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setPressTextColor(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->mCheckedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    return-void
.end method

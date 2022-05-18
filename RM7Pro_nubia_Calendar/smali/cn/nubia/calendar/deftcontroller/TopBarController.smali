.class public Lcn/nubia/calendar/deftcontroller/TopBarController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "TopBarController.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;,
        Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TopBarController"

.field public static final TOP_BAR_MSG_REFRESH_CURRENT_DATE:I = 0xbc3

.field public static final TOP_BAR_MSG_REFRESH_YEAR_TITLE:I = 0xbc4


# instance fields
.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mActionBarView:Landroid/view/View;

.field private mCurrentMonthDateWidget:Landroid/widget/TextView;

.field private mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

.field private mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

.field private mOutterHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 283
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 284
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 285
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    .line 286
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

    .line 287
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 288
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 289
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mOutterHandler:Landroid/os/Handler;

    .line 290
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mView:Landroid/view/View;

    .line 291
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBarView:Landroid/view/View;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/TopBarController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/TopBarController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/TopBarController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->refreshCurrentDateText()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/TopBarController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->refreshYearTitle()V

    return-void
.end method

.method private doWithUpdateYearTitle()V
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->sendWorkEvent(I)V

    .line 210
    return-void
.end method

.method private doWith_SelectedDayChange()V
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0xbc3

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->sendWorkEvent(I)V

    .line 202
    return-void
.end method

.method private doWith_WorkModeChange()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurWorkingMode()I

    move-result v0

    .line 186
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->adjustCurrentUI(I)V

    .line 192
    const/16 v1, 0xbc3

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/deftcontroller/TopBarController;->sendWorkEvent(I)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doWith_updateTopBar()V
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0xbc3

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->sendWorkEvent(I)V

    .line 206
    return-void
.end method

.method private initCurrentYearView()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mView:Landroid/view/View;

    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/TopBarController$4;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initDayTextView()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->getDayTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 98
    .local v0, "dayDate":Landroid/widget/TextView;
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/TopBarController$1;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private initMonthTextView()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->getMonthTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 124
    .local v0, "monthDate":Landroid/widget/TextView;
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/TopBarController$3;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private initWeekTextView()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->getWeekTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 112
    .local v0, "weekDate":Landroid/widget/TextView;
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/TopBarController$2;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private initYearTextView()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;->getYearTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 150
    .local v0, "yearDate":Landroid/widget/TextView;
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$5;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/TopBarController$5;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private refreshCurrentDateText()V
    .locals 13

    .prologue
    const v12, 0x7f0c0183

    .line 236
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurWorkingMode()I

    move-result v3

    .line 237
    .local v3, "mode":I
    const/4 v7, 0x0

    .line 238
    .local v7, "showDate":Landroid/text/format/Time;
    const/4 v2, 0x0

    .line 240
    .local v2, "curDate":Ljava/lang/String;
    new-instance v7, Landroid/text/format/Time;

    .end local v7    # "showDate":Landroid/text/format/Time;
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 241
    .restart local v7    # "showDate":Landroid/text/format/Time;
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 242
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 243
    .local v4, "milliTime":J
    const/4 v9, 0x4

    if-eq v3, v9, :cond_3

    .line 244
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v9, v4, v5}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildYearDate(J)I

    move-result v8

    .line 245
    .local v8, "year":I
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v9, v4, v5}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildMonthDate(J)I

    move-result v6

    .line 246
    .local v6, "month":I
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v9, v10}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->getMonthStr(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "MonthStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 248
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 251
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 250
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .end local v0    # "MonthStr":Ljava/lang/String;
    .end local v6    # "month":I
    .end local v8    # "year":I
    :goto_0
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    .line 261
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v9, v4, v5}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildMonthDate(J)I

    move-result v6

    .line 262
    .restart local v6    # "month":I
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v9, v10}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->getMonthStr(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .restart local v0    # "MonthStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 264
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_1
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v9, v4, v5}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildYearDate(J)I

    move-result v8

    .line 267
    .restart local v8    # "year":I
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    iget-object v10, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 268
    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v10

    .line 267
    invoke-virtual {v9, v7, v10, v11}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildYearDateWithShowWeek(Landroid/text/format/Time;J)Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "WeekAndYearStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 271
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .end local v0    # "MonthStr":Ljava/lang/String;
    .end local v1    # "WeekAndYearStr":Ljava/lang/String;
    .end local v6    # "month":I
    .end local v8    # "year":I
    :cond_2
    return-void

    .line 253
    :cond_3
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v9, v7}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildYearDate(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_4

    .line 255
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_4
    iget-object v9, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private refreshYearTitle()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 279
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getYearForYearMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->buildYearDate(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method


# virtual methods
.method public destroySelf()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 297
    :cond_0
    return-void
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;)V
    .locals 3
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;

    .prologue
    .line 53
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 54
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->widgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 55
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentMonthDateWidget:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentMonthDateWidget:Landroid/widget/TextView;

    .line 56
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentYearAndWeekDateWidget:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mCurrentYearAndWeekDateWidget:Landroid/widget/TextView;

    .line 57
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 58
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->dateCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 59
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mOutterHandler:Landroid/os/Handler;

    .line 60
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->view:Landroid/view/View;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mView:Landroid/view/View;

    .line 61
    iget-object v1, p1, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBarView:Landroid/view/View;

    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBarView:Landroid/view/View;

    .line 62
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/TopBarController$WorkHandler;-><init>(Lcn/nubia/calendar/deftcontroller/TopBarController;Landroid/os/Looper;)V

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/deftcontroller/TopBarController;->setWorkHandler(Landroid/os/Handler;)V

    .line 64
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->registerObserver(Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->initCurrentYearView()V

    .line 70
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mWidgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    if-nez v1, :cond_1

    .line 71
    const-string v1, "TopBarController"

    const-string v2, "mWidgetsMgr == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->initDayTextView()V

    .line 77
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->initWeekTextView()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->initMonthTextView()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->initYearTextView()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "exception":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "changeFlag"    # I

    .prologue
    .line 163
    sparse-switch p1, :sswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 165
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->doWith_WorkModeChange()V

    goto :goto_0

    .line 169
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->doWith_SelectedDayChange()V

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->doWith_updateTopBar()V

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->doWithUpdateYearTitle()V

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
    .end sparse-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 93
    return-void
.end method

.method public updateGotoTime()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->refreshCurrentDateText()V

    .line 87
    return-void
.end method

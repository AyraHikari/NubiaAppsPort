.class public Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;
.super Landroid/widget/TextView;
.source "SimpleEveWeekView.java"


# static fields
.field protected static DAY_SEPARATOR_WIDTH:I = 0x0

.field protected static final DEFAULT_FOCUS_MONTH:I = -0x1

.field protected static DEFAULT_HEIGHT:F = 0.0f

.field protected static final DEFAULT_NUM_DAYS:I = 0x7

.field protected static final DEFAULT_SELECTED_DAY:I = -0x1

.field protected static final DEFAULT_SHOW_WK_NUM:I = 0x0

.field protected static final DEFAULT_WEEK_START:I = 0x0

.field protected static HOLIDAY_SIGN_TEXT_SIZE:I = 0x0

.field protected static MAX_HEIGHT:I = 0x0

.field protected static MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MINI_TODAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MINI_TODAY_OUTLINE_WIDTH:I = 0x0

.field protected static MINI_WK_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MIN_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field public static final VIEW_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final VIEW_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field public static final VIEW_PARAMS_NUM_DAYS:Ljava/lang/String; = "num_days"

.field public static final VIEW_PARAMS_SELECTED_DAY:Ljava/lang/String; = "selected_day"

.field public static final VIEW_PARAMS_SHOW_WK_NUM:Ljava/lang/String; = "show_wk_num"

.field public static final VIEW_PARAMS_WEEK:Ljava/lang/String; = "week"

.field public static final VIEW_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field protected static WEEK_NUM_MARGIN_BOTTOM:I

.field protected static WHITE_SEPARATOR_SIZE:I

.field protected static mScale:F


# instance fields
.field protected mBGColor:I

.field protected mChineseMonthNumPaint:Landroid/graphics/Paint;

.field protected mDayNumbers:[Ljava/lang/String;

.field protected mDaySeparatorColor:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field protected mFocusDay:[Z

.field protected mFocusMonthColor:I

.field protected mHasSelectedDay:Z

.field protected mHasToday:Z

.field protected mHeight:I

.field protected mHolidayPaint:Landroid/graphics/Paint;

.field mLastHoverTime:Landroid/text/format/Time;

.field protected mLastMonth:I

.field protected mMonth:[I

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthNumsPaint:Landroid/graphics/Paint;

.field protected mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

.field protected mNumCells:I

.field protected mNumDays:I

.field protected mOddMonth:[Z

.field mOnlyPortait:Z

.field protected mOtherMonthColor:I

.field protected mPadding:I

.field protected mSelectedDay:I

.field protected mSelectedDayLine:Landroid/graphics/drawable/Drawable;

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field protected mSelectedWeekBGColor:I

.field protected mShowWeekNum:Z

.field protected mTimeZone:Ljava/lang/String;

.field protected mToday:I

.field protected mTodayOutlineColor:I

.field protected mWeek:I

.field protected mWeekDayNumPaint:Landroid/graphics/Paint;

.field protected mWeekDayNumsPaint:Landroid/graphics/Paint;

.field protected mWeekNumColor:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected p:Landroid/graphics/Paint;

.field protected r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 100
    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WHITE_SEPARATOR_SIZE:I

    .line 108
    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 110
    const/16 v0, 0x3c

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 112
    const/16 v0, 0x24

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    .line 115
    const/16 v0, 0x14

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->HOLIDAY_SIGN_TEXT_SIZE:I

    .line 117
    const/16 v0, 0xc

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    .line 118
    const/16 v0, 0x12

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 119
    const/4 v0, 0x2

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    .line 120
    const/4 v0, 0x4

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    .line 123
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 273
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    .line 128
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    .line 129
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    .line 158
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstJulianDay:I

    .line 160
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstMonth:I

    .line 162
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastMonth:I

    .line 165
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeek:I

    .line 169
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DEFAULT_HEIGHT:F

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    .line 171
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    .line 173
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    .line 175
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    .line 177
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDay:I

    .line 179
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    .line 181
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    .line 183
    const/4 v4, 0x7

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    .line 185
    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    .line 187
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedLeft:I

    .line 189
    iput v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedRight:I

    .line 192
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTimeZone:Ljava/lang/String;

    .line 207
    new-instance v4, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v4}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 714
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 277
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mBGColor:I

    .line 278
    const v4, 0x7f0d011b

    .line 279
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedWeekBGColor:I

    .line 280
    const v4, 0x7f0d004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusMonthColor:I

    .line 281
    const v4, 0x7f0d011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOtherMonthColor:I

    .line 282
    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDaySeparatorColor:I

    .line 283
    const v4, 0x7f0d0049

    .line 284
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTodayOutlineColor:I

    .line 285
    const v4, 0x7f0d0120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekNumColor:I

    .line 286
    const v4, 0x7f0200ff

    .line 287
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    .line 289
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    .line 291
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 295
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 297
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    .line 299
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 300
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    .line 301
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    .line 302
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 303
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    .line 309
    :cond_0
    const v4, 0x7f0f0005

    .line 310
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 312
    .local v0, "isOnlyPortrait":Z
    const v4, 0x7f0900b1

    .line 313
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 315
    .local v1, "monthViewHeadHeight":I
    if-eqz v0, :cond_1

    .line 316
    const/4 v4, 0x1

    .line 317
    invoke-static {v4}, Lcn/nubia/calendar/CalendarApplication;->getMonthViewHeight(I)I

    move-result v4

    sub-int/2addr v4, v1

    sget v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    div-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    .line 327
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->SetDisplaySize(Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->initView()V

    .line 329
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcn/nubia/calendar/CalendarApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 324
    .local v2, "orientation":I
    invoke-static {v2}, Lcn/nubia/calendar/CalendarApplication;->getMonthViewHeight(I)I

    move-result v4

    sub-int/2addr v4, v1

    sget v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    div-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 333
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    .line 158
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstJulianDay:I

    .line 160
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstMonth:I

    .line 162
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastMonth:I

    .line 165
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeek:I

    .line 169
    sget v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DEFAULT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    .line 171
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    .line 173
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    .line 175
    iput-boolean v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    .line 177
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDay:I

    .line 179
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    .line 181
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    .line 183
    const/4 v0, 0x7

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    .line 185
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    .line 187
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedLeft:I

    .line 189
    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedRight:I

    .line 192
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTimeZone:Ljava/lang/String;

    .line 207
    new-instance v0, Lcn/nubia/calendar/util/MonthUtil;

    invoke-direct {v0}, Lcn/nubia/calendar/util/MonthUtil;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 334
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->SetDisplaySize(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->initSimpleWeekView(Landroid/content/Context;)V

    .line 336
    return-void
.end method


# virtual methods
.method public SetDisplaySize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DEFAULT_HEIGHT:F

    .line 271
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 555
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedWeekBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 561
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 562
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 563
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 564
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedLeft:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 565
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 566
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedRight:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 567
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 568
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 569
    :cond_0
    return-void
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 628
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 630
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 631
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedLeft:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 632
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 633
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 634
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 635
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTodayOutlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 638
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDaySeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 640
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    div-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int v6, v0, v1

    .line 643
    .local v6, "x":I
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 645
    .end local v6    # "x":I
    :cond_1
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 579
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    sget v7, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    sub-int v5, v6, v7

    .line 581
    .local v5, "y":I
    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    .line 583
    .local v3, "nDays":I
    const/4 v1, 0x0

    .line 584
    .local v1, "i":I
    mul-int/lit8 v0, v3, 0x2

    .line 585
    .local v0, "divisor":I
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_0

    .line 586
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget v7, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 587
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 588
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 589
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 590
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekNumColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/2addr v6, v0

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int v4, v6, v7

    .line 592
    .local v4, "x":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 593
    add-int/lit8 v1, v1, 0x1

    .line 596
    .end local v4    # "x":I
    :cond_0
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    aget-boolean v2, v6, v1

    .line 597
    .local v2, "isFocusMonth":Z
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusMonthColor:I

    :goto_0
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 600
    :goto_1
    if-ge v1, v3, :cond_6

    .line 601
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eq v6, v2, :cond_1

    .line 602
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    aget-boolean v2, v6, v1

    .line 603
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusMonthColor:I

    :goto_2
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    :cond_1
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    if-ne v6, v1, :cond_2

    .line 607
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v7, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 608
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 610
    :cond_2
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v8, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    div-int/2addr v6, v0

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int v4, v6, v7

    .line 612
    .restart local v4    # "x":I
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 613
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    if-ne v6, v1, :cond_3

    .line 614
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v7, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 615
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 600
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 597
    .end local v4    # "x":I
    :cond_4
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOtherMonthColor:I

    goto :goto_0

    .line 603
    :cond_5
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOtherMonthColor:I

    goto :goto_2

    .line 618
    :cond_6
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 9
    .param p1, "x"    # F

    .prologue
    const v8, 0x253d8c    # 3.419992E-39f

    const/4 v7, 0x1

    .line 515
    iget-boolean v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    div-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int v2, v4, v5

    .line 517
    .local v2, "dayStart":I
    :goto_0
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 518
    :cond_0
    const/4 v3, 0x0

    .line 537
    :goto_1
    return-object v3

    .line 515
    .end local v2    # "dayStart":I
    :cond_1
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    goto :goto_0

    .line 521
    .restart local v2    # "dayStart":I
    :cond_2
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 522
    .local v1, "dayPosition":I
    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstJulianDay:I

    add-int v0, v4, v1

    .line 524
    .local v0, "day":I
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 525
    .local v3, "time":Landroid/text/format/Time;
    iget v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeek:I

    if-nez v4, :cond_3

    .line 527
    if-ge v0, v8, :cond_4

    .line 528
    add-int/lit8 v0, v0, 0x1

    .line 536
    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    goto :goto_1

    .line 529
    :cond_4
    if-ne v0, v8, :cond_3

    .line 530
    const/4 v4, 0x0

    const/16 v5, 0x7b2

    invoke-virtual {v3, v7, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 531
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_1
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstJulianDay:I

    return v0
.end method

.method public getFirstMonth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstMonth:I

    return v0
.end method

.method public getLastMonth()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastMonth:I

    return v0
.end method

.method public getSimpleWeekViewHeight()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    return v0
.end method

.method public getmDayNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getmMonth()[I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonth:[I

    return-object v0
.end method

.method public initSimpleWeekView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 213
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mBGColor:I

    .line 214
    const v4, 0x7f0d011b

    .line 215
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedWeekBGColor:I

    .line 216
    const v4, 0x7f0d004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusMonthColor:I

    .line 217
    const v4, 0x7f0d011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOtherMonthColor:I

    .line 218
    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDaySeparatorColor:I

    .line 219
    const v4, 0x7f0d0049

    .line 220
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTodayOutlineColor:I

    .line 221
    const v4, 0x7f0d0120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekNumColor:I

    .line 222
    const v4, 0x7f0200ff

    .line 223
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    .line 225
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    .line 227
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 231
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 233
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_CHINESE_DAY_NUMBER_TEXT_SIZE:I

    .line 235
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 236
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    .line 237
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    .line 238
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 239
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    .line 243
    :cond_0
    const v4, 0x7f0f0005

    .line 244
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 246
    .local v0, "isOnlyPortrait":Z
    const v4, 0x7f0900b1

    .line 247
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 248
    .local v1, "monthViewHeadHeight":I
    if-eqz v0, :cond_1

    .line 249
    const/4 v4, 0x1

    .line 250
    invoke-static {v4}, Lcn/nubia/calendar/CalendarApplication;->getMonthViewHeight(I)I

    move-result v4

    sub-int/2addr v4, v1

    sget v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    div-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090160

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DEFAULT_HEIGHT:F

    .line 262
    sget v4, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->DEFAULT_HEIGHT:F

    float-to-int v4, v4

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    .line 263
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->initView()V

    .line 265
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcn/nubia/calendar/CalendarApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 257
    .local v2, "orientation":I
    invoke-static {v2}, Lcn/nubia/calendar/CalendarApplication;->getMonthViewHeight(I)I

    move-result v4

    sub-int/2addr v4, v1

    sget v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mNumWeeks:I

    div-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHeight:I

    goto :goto_0
.end method

.method protected initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 454
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 455
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 456
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 457
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 460
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 461
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 462
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 463
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusMonthColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    .line 468
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 469
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 470
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 471
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 473
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekDayNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 476
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 543
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 544
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 545
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 688
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 691
    .local v1, "context":Landroid/content/Context;
    const-string v0, "accessibility"

    .line 692
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 693
    .local v8, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 711
    :goto_0
    return v0

    .line 696
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v10

    .line 698
    .local v10, "hover":Landroid/text/format/Time;
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 699
    invoke-static {v10, v0}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    :cond_2
    invoke-virtual {v10, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 702
    .local v11, "millis":Ljava/lang/Long;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 703
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x10

    .line 702
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/util/MonthUtil;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 704
    .local v9, "date":Ljava/lang/String;
    const/16 v0, 0x40

    .line 705
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 706
    .local v7, "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-virtual {p0, v7}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 708
    iput-object v10, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .end local v7    # "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v9    # "date":Ljava/lang/String;
    .end local v10    # "hover":Landroid/text/format/Time;
    .end local v11    # "millis":Ljava/lang/Long;
    :cond_3
    move v0, v12

    .line 711
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 649
    iput p1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    .line 650
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->updateSelectionPositions()V

    .line 651
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .param p2, "tz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 356
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "You must specify the week number for this view"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->setTag(Ljava/lang/Object;)V

    .line 360
    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mTimeZone:Ljava/lang/String;

    .line 361
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDay:I

    .line 364
    :cond_1
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDay:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    .line 365
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 366
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    .line 368
    :cond_2
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 369
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_b

    .line 370
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    .line 375
    :cond_3
    :goto_1
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    add-int/lit8 v6, v6, 0x1

    :goto_2
    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    .line 378
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    .line 379
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    .line 380
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOddMonth:[Z

    .line 381
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonth:[I

    .line 382
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeek:I

    .line 383
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonthUtil:Lcn/nubia/calendar/util/MonthUtil;

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeek:I

    invoke-virtual {v6, v7}, Lcn/nubia/calendar/util/MonthUtil;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v3

    .line 384
    .local v3, "julianMonday":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 385
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, "i":I
    iget-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_4

    .line 389
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 393
    :cond_4
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    .line 399
    :cond_5
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    if-eq v6, v7, :cond_7

    .line 400
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    sub-int v0, v6, v7

    .line 401
    .local v0, "diff":I
    if-gez v0, :cond_6

    .line 402
    add-int/lit8 v0, v0, 0x7

    .line 404
    :cond_6
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v6, v0

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 405
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 408
    .end local v0    # "diff":I
    :cond_7
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstJulianDay:I

    .line 409
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstMonth:I

    .line 412
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 413
    .local v5, "today":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 414
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    .line 415
    const/4 v6, -0x1

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    .line 417
    const-string v6, "focus_month"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "focus_month"

    .line 418
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 420
    .local v1, "focusMonth":I
    :goto_3
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    if-ge v2, v6, :cond_10

    .line 421
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 422
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFirstMonth:I

    .line 424
    :cond_8
    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mOddMonth:[Z

    iget v6, v4, Landroid/text/format/Time;->month:I

    rem-int/lit8 v6, v6, 0x2

    const/4 v8, 0x1

    if-ne v6, v8, :cond_e

    const/4 v6, 0x1

    :goto_4
    aput-boolean v6, v7, v2

    .line 425
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mMonth:[I

    iget v7, v4, Landroid/text/format/Time;->month:I

    aput v7, v6, v2

    .line 426
    iget v6, v4, Landroid/text/format/Time;->month:I

    if-ne v6, v1, :cond_f

    .line 427
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v2

    .line 431
    :goto_5
    iget v6, v4, Landroid/text/format/Time;->year:I

    iget v7, v5, Landroid/text/format/Time;->year:I

    if-ne v6, v7, :cond_9

    iget v6, v4, Landroid/text/format/Time;->yearDay:I

    iget v7, v5, Landroid/text/format/Time;->yearDay:I

    if-ne v6, v7, :cond_9

    .line 432
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasToday:Z

    .line 433
    iput v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mToday:I

    .line 435
    :cond_9
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 436
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 364
    .end local v1    # "focusMonth":I
    .end local v2    # "i":I
    .end local v3    # "julianMonday":I
    .end local v4    # "time":Landroid/text/format/Time;
    .end local v5    # "today":Landroid/text/format/Time;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 372
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    goto/16 :goto_1

    .line 375
    :cond_c
    iget v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumDays:I

    goto/16 :goto_2

    .line 418
    .restart local v2    # "i":I
    .restart local v3    # "julianMonday":I
    .restart local v4    # "time":Landroid/text/format/Time;
    .restart local v5    # "today":Landroid/text/format/Time;
    :cond_d
    const/4 v1, -0x1

    goto :goto_3

    .line 424
    .restart local v1    # "focusMonth":I
    :cond_e
    const/4 v6, 0x0

    goto :goto_4

    .line 429
    :cond_f
    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mFocusDay:[Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v2

    goto :goto_5

    .line 440
    :cond_10
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 441
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 442
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 444
    :cond_11
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mLastMonth:I

    .line 446
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->updateSelectionPositions()V

    .line 447
    return-void
.end method

.method public setmDayNumbers([Ljava/lang/String;)V
    .locals 0
    .param p1, "mDayNumbers"    # [Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mDayNumbers:[Ljava/lang/String;

    .line 150
    return-void
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 657
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mHasSelectedDay:Z

    if-eqz v1, :cond_2

    .line 658
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedDay:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWeekStart:I

    sub-int v0, v1, v2

    .line 659
    .local v0, "selectedPosition":I
    if-gez v0, :cond_0

    .line 660
    add-int/lit8 v0, v0, 0x7

    .line 662
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    .line 663
    add-int/lit8 v0, v0, 0x1

    .line 665
    :cond_1
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedLeft:I

    .line 667
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mWidth:I

    iget v3, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/SimpleEveWeekView;->mSelectedRight:I

    .line 670
    .end local v0    # "selectedPosition":I
    :cond_2
    return-void
.end method

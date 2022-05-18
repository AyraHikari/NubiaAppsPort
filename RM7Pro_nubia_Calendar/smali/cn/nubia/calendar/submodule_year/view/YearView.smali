.class public Lcn/nubia/calendar/submodule_year/view/YearView;
.super Landroid/view/View;
.source "YearView.java"


# static fields
.field protected static DAY_LABEL_CIRCLE_RADIUS:I = 0x0

.field protected static DAY_LABEL_TEXT_SIZE:I = 0x0

.field protected static MONTH_HEADER_HEIGHT:I = 0x0

.field protected static MONTH_LABEL_TEXT_SIZE:I = 0x0

.field protected static MONTH_NUMBER_INITY_MARGIN:I = 0x0

.field protected static MONTH_NUMBER_INIT_MARGINX:I = 0x0

.field protected static MONTH_NUMBER_INIT_STARTNINE2ELE:I = 0x0

.field protected static MONTH_NUMBER_INIT_STARTSIX2EIG:I = 0x0

.field protected static MONTH_NUMBER_INIT_STARTTHREE2TFIV:I = 0x0

.field protected static MONTH_NUMBER_INIT_STARTY:I = 0x0

.field protected static MONTH_NUMBER_INIT_STARTZERO2TWO:I = 0x0

.field protected static MONTH_NUMBER_PATIN_ALPHA:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN10X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN11X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN12X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN1X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN2X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN3X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN5X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN6X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN8X:I = 0x0

.field protected static MONTH_TITLE_INIT_ENGSTARTMARGIN9X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN10X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN11X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN12X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN2X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN3X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN8X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGIN9X:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGINY:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGINYFOUR2SIX:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGINYSEV2NINE:I = 0x0

.field protected static MONTH_TITLE_INIT_MARGINYTEN2TEl:I = 0x0

.field protected static MONTH_TITLE_INIT_STARTY:I = 0x0

.field protected static MONTH_TITLE__ARRAY:[Ljava/lang/String; = null

.field public static NAVIGATION_PADDING:I = 0x0

.field public static final VIEW_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field public static final VIEW_PARAMS_YEAR_CURRENT:Ljava/lang/String; = "current"

.field protected static YEAR_HEADER_TEXT_HEIGHT:I


# instance fields
.field private CIRCLESIZE:F

.field private YEAR_TEXT_SIZE0:I

.field private YEAR_TEXT_SIZE1:I

.field private final calendar:Ljava/util/Calendar;

.field protected final currentTime:Landroid/text/format/Time;

.field protected dayLabelCircleBgColor:I

.field protected dayLabelCircleBgPaint:Landroid/graphics/Paint;

.field protected dayLabelTextColor:I

.field protected dayLabelTextPaint:Landroid/graphics/Paint;

.field protected dayLabelTextTodayColor:I

.field private dayOfWeekStart:I

.field protected dividerPaint:Landroid/graphics/Paint;

.field protected lineSpacingBetweenDayAndDay:I

.field protected lineSpacingBetweenYearAndMonth:I

.field private mContext:Landroid/content/Context;

.field private mDownMonth:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field private mMonthPositionpadding:I

.field private mOnMonthClickListener:Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;

.field private mTempYearTime:Landroid/text/format/Time;

.field private mUpMonth:I

.field protected mWidth:I

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

.field private mYearViewOneLine:I

.field private mYearViewThreeLine:I

.field private mYearViewTwoLine:I

.field private mcirclepadding:I

.field protected month:I

.field protected monthLabelTextPaint:Landroid/graphics/Paint;

.field protected monthTextColor:I

.field private mpadding:I

.field protected numCells:I

.field protected numDays:I

.field protected padding:I

.field protected rowMonthHeight:I

.field protected today:I

.field protected weekStart:I

.field private width:I

.field private xyMax:I

.field public year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    .line 78
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    .line 79
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenDayAndDay:I

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    .line 89
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    .line 90
    const/4 v1, 0x7

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    .line 91
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    .line 92
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    .line 108
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mUpMonth:I

    .line 113
    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mDownMonth:I

    .line 123
    const-string v1, "595hd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAVIGATION_PADDING="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "resources":Landroid/content/res/Resources;
    iput-object p3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 127
    new-instance v1, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    invoke-direct {v1, p1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    .line 129
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mHomeTimeZone:Ljava/lang/String;

    .line 130
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    .line 131
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    .line 132
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 133
    const/16 v1, 0x8

    const v2, 0x7f0d004c

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 133
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthTextColor:I

    .line 136
    const/16 v1, 0xb

    const v2, 0x7f0d003b

    .line 138
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 136
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextColor:I

    .line 139
    const/16 v1, 0xc

    const v2, 0x7f0d003c

    .line 141
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 139
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextTodayColor:I

    .line 142
    const/16 v1, 0xe

    const v2, 0x7f0d00e1

    .line 144
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 142
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgColor:I

    .line 146
    const/16 v1, 0xd

    const v2, 0x7f090006

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 146
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->DAY_LABEL_TEXT_SIZE:I

    .line 149
    const/16 v1, 0x9

    const v2, 0x7f090189

    .line 151
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 149
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_LABEL_TEXT_SIZE:I

    .line 153
    const/4 v1, 0x2

    const v2, 0x7f090270

    .line 157
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 154
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    .line 158
    const/16 v1, 0xa

    const v2, 0x7f090188

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 159
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_HEADER_HEIGHT:I

    .line 163
    const/16 v1, 0xf

    const v2, 0x7f09015b

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 164
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->DAY_LABEL_CIRCLE_RADIUS:I

    .line 169
    const/16 v1, 0x10

    const v2, 0x7f090187

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 169
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    .line 172
    const v1, 0x7f09024c

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenDayAndDay:I

    .line 174
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    .line 175
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE__ARRAY:[Ljava/lang/String;

    .line 179
    const v1, 0x7f100022

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    .line 181
    const v1, 0x7f10001e

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    .line 183
    const v1, 0x7f10000a

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    .line 185
    const v1, 0x7f100005

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INITY_MARGIN:I

    .line 187
    const v1, 0x7f100006

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    .line 189
    const v1, 0x7f10000c

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_PATIN_ALPHA:I

    .line 191
    const v1, 0x7f10001a

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN2X:I

    .line 193
    const v1, 0x7f10001b

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN3X:I

    .line 195
    const v1, 0x7f10001c

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN8X:I

    .line 197
    const v1, 0x7f10001d

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN9X:I

    .line 199
    const v1, 0x7f100017

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN10X:I

    .line 201
    const v1, 0x7f100018

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN11X:I

    .line 203
    const v1, 0x7f100019

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN12X:I

    .line 205
    const v1, 0x7f10001f

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    .line 207
    const v1, 0x7f100020

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    .line 209
    const v1, 0x7f100021

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    .line 211
    const v1, 0x7f10000b

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTZERO2TWO:I

    .line 213
    const v1, 0x7f100009

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTTHREE2TFIV:I

    .line 215
    const v1, 0x7f100008

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTSIX2EIG:I

    .line 217
    const v1, 0x7f100007

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTNINE2ELE:I

    .line 219
    const v1, 0x7f100010

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN1X:I

    .line 221
    const v1, 0x7f100011

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN2X:I

    .line 223
    const v1, 0x7f100012

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN3X:I

    .line 225
    const v1, 0x7f100013

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN5X:I

    .line 227
    const v1, 0x7f100014

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN6X:I

    .line 229
    const v1, 0x7f100015

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN8X:I

    .line 231
    const v1, 0x7f100016

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN9X:I

    .line 233
    const v1, 0x7f10000d

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN10X:I

    .line 235
    const v1, 0x7f10000e

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN11X:I

    .line 237
    const v1, 0x7f10000f

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN12X:I

    .line 239
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_TEXT_SIZE0:I

    .line 240
    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_TEXT_SIZE1:I

    .line 241
    const v1, 0x7f09026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->CIRCLESIZE:F

    .line 242
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mpadding:I

    .line 243
    const v1, 0x7f09014f

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mcirclepadding:I

    .line 245
    const v1, 0x7f090273

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewOneLine:I

    .line 247
    const v1, 0x7f090275

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewTwoLine:I

    .line 249
    const v1, 0x7f090274

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewThreeLine:I

    .line 251
    const v1, 0x7f09018b

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mMonthPositionpadding:I

    .line 254
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->initXyMax()V

    .line 255
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->initView()V

    .line 256
    return-void
.end method

.method private drawAllMonthNums(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 489
    sget v20, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_HEADER_HEIGHT:I

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 491
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    div-int v15, v20, v21

    .line 492
    .local v15, "paddingDay":I
    const/4 v8, 0x1

    .line 494
    .local v8, "day":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v20, 0xc

    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 495
    packed-switch v10, :pswitch_data_0

    .line 527
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(II)V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->findDayOffset()I

    move-result v9

    .line 529
    .local v9, "dayOffset":I
    const/4 v8, 0x1

    .line 530
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v8, v0, :cond_9

    .line 531
    const/4 v6, 0x0

    .line 532
    .local v6, "column":I
    const/16 v18, 0x0

    .line 533
    .local v18, "x":I
    packed-switch v10, :pswitch_data_1

    .line 562
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_PATIN_ALPHA:I

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 563
    const-string v20, "%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v8, v10, v1}, Landroid/text/format/Time;->set(III)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 570
    .local v11, "julianDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    move-result-object v20

    int-to-long v0, v11

    move-wide/from16 v22, v0

    .line 572
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->hasEventsByDay(J)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_0

    .line 575
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mpadding:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->CIRCLESIZE:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 578
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_3

    .line 579
    const/4 v13, 0x0

    .line 580
    .local v13, "marginx":I
    const/16 v20, 0x9

    move/from16 v0, v20

    if-le v8, v0, :cond_5

    .line 581
    const/4 v13, -0x1

    .line 585
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    move-object/from16 v20, v0

    const/high16 v21, 0x40800000    # 4.0f

    invoke-virtual/range {v20 .. v21}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->dp2px(F)I

    move-result v20

    sub-int v7, v19, v20

    .line 586
    .local v7, "cy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->xyMax:I

    move/from16 v20, v0

    const/16 v21, 0x780

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->xyMax:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, -0x780

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x20

    add-int v7, v7, v20

    .line 589
    :cond_1
    const/4 v14, 0x0

    .line 590
    .local v14, "numPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 592
    .local v12, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 593
    .local v17, "screeenWidth":I
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 595
    .local v16, "screeenHeight":I
    const/16 v20, 0x8dc

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 596
    const/16 v14, 0x8

    .line 607
    .end local v12    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v16    # "screeenHeight":I
    .end local v17    # "screeenWidth":I
    :cond_2
    :goto_5
    sub-int v20, v18, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->mcirclepadding:I

    move/from16 v21, v0

    add-int v21, v21, v7

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcn/nubia/calendar/submodule_year/view/YearView;->DAY_LABEL_CIRCLE_RADIUS:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextTodayColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    const-string v20, "%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    .end local v7    # "cy":I
    .end local v13    # "marginx":I
    .end local v14    # "numPadding":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v9, v0, :cond_4

    .line 617
    const/4 v9, 0x0

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenDayAndDay:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, -0x15

    add-int v19, v19, v20

    .line 620
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 621
    goto/16 :goto_2

    .line 499
    .end local v6    # "column":I
    .end local v9    # "dayOffset":I
    .end local v11    # "julianDay":I
    .end local v18    # "x":I
    :pswitch_0
    sget v20, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INITY_MARGIN:I

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTZERO2TWO:I

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v19, v20, v21

    .line 501
    goto/16 :goto_1

    .line 505
    :pswitch_1
    sget v20, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x1

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTTHREE2TFIV:I

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v21, v21, 0x2

    add-int v19, v20, v21

    .line 509
    goto/16 :goto_1

    .line 513
    :pswitch_2
    sget v20, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTSIX2EIG:I

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v21, v21, 0x3

    add-int v19, v20, v21

    .line 517
    goto/16 :goto_1

    .line 521
    :pswitch_3
    sget v20, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTNINE2ELE:I

    add-int v20, v20, v21

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v21, v21, 0x4

    add-int v19, v20, v21

    goto/16 :goto_1

    .line 538
    .restart local v6    # "column":I
    .restart local v9    # "dayOffset":I
    .restart local v18    # "x":I
    :pswitch_4
    const/4 v6, 0x0

    .line 539
    mul-int/lit8 v20, v15, 0x2

    mul-int v20, v20, v9

    add-int v20, v20, v15

    mul-int/lit8 v21, v9, 0x6

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    move/from16 v21, v0

    mul-int v21, v21, v6

    div-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    add-int v20, v20, v15

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int v18, v20, v21

    .line 542
    goto/16 :goto_3

    .line 547
    :pswitch_5
    const/4 v6, 0x1

    .line 548
    mul-int/lit8 v20, v15, 0x2

    mul-int v20, v20, v9

    add-int v20, v20, v15

    mul-int/lit8 v21, v9, 0x6

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    move/from16 v21, v0

    mul-int v21, v21, v6

    div-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    add-int v20, v20, v15

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int v20, v20, v21

    add-int/lit8 v18, v20, -0x19

    .line 551
    goto/16 :goto_3

    .line 556
    :pswitch_6
    const/4 v6, 0x2

    .line 557
    mul-int/lit8 v20, v15, 0x2

    mul-int v20, v20, v9

    add-int v20, v20, v15

    mul-int/lit8 v21, v9, 0x6

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    move/from16 v21, v0

    mul-int v21, v21, v6

    div-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    add-int v20, v20, v15

    sget v21, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int v20, v20, v21

    add-int/lit8 v18, v20, -0x32

    goto/16 :goto_3

    .line 583
    .restart local v11    # "julianDay":I
    .restart local v13    # "marginx":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 597
    .restart local v7    # "cy":I
    .restart local v12    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v14    # "numPadding":I
    .restart local v16    # "screeenHeight":I
    .restart local v17    # "screeenWidth":I
    :cond_6
    const/16 v20, 0x8e8

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 598
    const/16 v14, 0xa

    goto/16 :goto_5

    .line 599
    :cond_7
    const/16 v20, 0x870

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 600
    const/4 v14, 0x5

    goto/16 :goto_5

    .line 601
    :cond_8
    const/16 v20, 0x8ac

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 602
    const/16 v14, 0x8

    goto/16 :goto_5

    .line 494
    .end local v6    # "column":I
    .end local v7    # "cy":I
    .end local v11    # "julianDay":I
    .end local v12    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "marginx":I
    .end local v14    # "numPadding":I
    .end local v16    # "screeenHeight":I
    .end local v17    # "screeenWidth":I
    .end local v18    # "x":I
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 623
    .end local v9    # "dayOffset":I
    :cond_a
    return-void

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private drawAllMonthNumsRtl(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 626
    sget v10, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_HEADER_HEIGHT:I

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    add-int v9, v10, v11

    .line 628
    .local v9, "y":I
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    div-int/lit8 v10, v10, 0x3

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    mul-int/lit8 v11, v11, 0x2

    div-int v7, v10, v11

    .line 629
    .local v7, "paddingDay":I
    const/4 v2, 0x1

    .line 631
    .local v2, "day":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v10, 0xc

    if-ge v4, v10, :cond_6

    .line 632
    packed-switch v4, :pswitch_data_0

    .line 664
    :goto_1
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-virtual {p0, v10, v4}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(II)V

    .line 665
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->findDayOffset()I

    move-result v3

    .line 666
    .local v3, "dayOffset":I
    const/4 v2, 0x1

    .line 667
    :goto_2
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    if-gt v2, v10, :cond_5

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "column":I
    const/4 v8, 0x0

    .line 670
    .local v8, "x":I
    packed-switch v4, :pswitch_data_1

    .line 702
    :goto_3
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_PATIN_ALPHA:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 703
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 705
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-virtual {v10, v2, v4, v11}, Landroid/text/format/Time;->set(III)V

    .line 706
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 707
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mTempYearTime:Landroid/text/format/Time;

    iget-wide v12, v12, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 709
    .local v5, "julianDay":I
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 710
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    move-result-object v10

    int-to-long v12, v5

    invoke-virtual {v10, v12, v13}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->hasEventsByDay(J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 714
    int-to-float v10, v8

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mpadding:I

    add-int/2addr v11, v9

    int-to-float v11, v11

    iget v12, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->CIRCLESIZE:F

    iget-object v13, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 717
    :cond_0
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    if-ne v10, v2, :cond_2

    .line 718
    const/4 v6, 0x0

    .line 719
    .local v6, "marginx":I
    const/16 v10, 0x9

    if-le v2, v10, :cond_4

    .line 720
    const/4 v6, -0x1

    .line 724
    :goto_4
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {v10, v11}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->dp2px(F)I

    move-result v10

    sub-int v1, v9, v10

    .line 725
    .local v1, "cy":I
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->xyMax:I

    const/16 v11, 0x780

    if-le v10, v11, :cond_1

    .line 726
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->xyMax:I

    add-int/lit16 v10, v10, -0x780

    div-int/lit8 v10, v10, 0x20

    add-int/lit8 v10, v10, -0xc

    add-int/2addr v1, v10

    .line 727
    :cond_1
    sub-int v10, v8, v6

    int-to-float v10, v10

    int-to-float v11, v1

    sget v12, Lcn/nubia/calendar/submodule_year/view/YearView;->DAY_LABEL_CIRCLE_RADIUS:I

    int-to-float v12, v12

    iget-object v13, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 730
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextTodayColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 731
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v8

    int-to-float v12, v9

    iget-object v13, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 733
    iget-object v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    .end local v1    # "cy":I
    .end local v6    # "marginx":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 736
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    if-ne v3, v10, :cond_3

    .line 737
    const/4 v3, 0x0

    .line 738
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenDayAndDay:I

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, -0x15

    add-int/2addr v9, v10

    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 741
    goto/16 :goto_2

    .line 636
    .end local v0    # "column":I
    .end local v3    # "dayOffset":I
    .end local v5    # "julianDay":I
    .end local v8    # "x":I
    :pswitch_0
    sget v10, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INITY_MARGIN:I

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTZERO2TWO:I

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v9, v10, v11

    .line 638
    goto/16 :goto_1

    .line 642
    :pswitch_1
    sget v10, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTTHREE2TFIV:I

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 646
    goto/16 :goto_1

    .line 650
    :pswitch_2
    sget v10, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTSIX2EIG:I

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v11, v11, 0x3

    add-int v9, v10, v11

    .line 654
    goto/16 :goto_1

    .line 658
    :pswitch_3
    sget v10, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTY:I

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    iget v11, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_STARTNINE2ELE:I

    add-int/2addr v10, v11

    sget v11, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v11, v11, 0x4

    add-int v9, v10, v11

    goto/16 :goto_1

    .line 675
    .restart local v0    # "column":I
    .restart local v3    # "dayOffset":I
    .restart local v8    # "x":I
    :pswitch_4
    const/4 v0, 0x0

    .line 676
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/2addr v11, v3

    add-int/2addr v11, v7

    mul-int/lit8 v12, v3, 0x6

    sub-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    mul-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    sget v12, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int/2addr v11, v12

    sub-int v8, v10, v11

    .line 680
    goto/16 :goto_3

    .line 685
    :pswitch_5
    const/4 v0, 0x1

    .line 686
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/2addr v11, v3

    add-int/2addr v11, v7

    mul-int/lit8 v12, v3, 0x6

    sub-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    mul-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    sget v12, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x19

    sub-int v8, v10, v11

    .line 690
    goto/16 :goto_3

    .line 695
    :pswitch_6
    const/4 v0, 0x2

    .line 696
    iget v10, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/2addr v11, v3

    add-int/2addr v11, v7

    mul-int/lit8 v12, v3, 0x6

    sub-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    mul-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    sget v12, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_NUMBER_INIT_MARGINX:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x32

    sub-int v8, v10, v11

    goto/16 :goto_3

    .line 722
    .restart local v5    # "julianDay":I
    .restart local v6    # "marginx":I
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 631
    .end local v0    # "column":I
    .end local v5    # "julianDay":I
    .end local v6    # "marginx":I
    .end local v8    # "x":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 743
    .end local v3    # "dayOffset":I
    :cond_6
    return-void

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 281
    iget v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    .line 282
    .local v2, "x":I
    const/4 v3, 0x0

    .line 283
    .local v3, "y":I
    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mMonthPositionpadding:I

    .line 284
    .local v1, "padding":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v4, 0xc

    if-gt v0, v4, :cond_1

    .line 285
    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_1
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v4, v5}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(II)V

    .line 360
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 361
    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_year/view/YearView;->convertMonth(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :pswitch_0
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewOneLine:I

    sub-int v2, v4, v5

    .line 288
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 289
    goto :goto_1

    .line 291
    :pswitch_1
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewTwoLine:I

    sub-int v2, v4, v5

    .line 292
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 293
    goto :goto_1

    .line 295
    :pswitch_2
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewThreeLine:I

    sub-int v2, v4, v5

    .line 296
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 297
    goto :goto_1

    .line 299
    :pswitch_3
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x4

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewOneLine:I

    sub-int v2, v4, v5

    .line 300
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 303
    goto :goto_1

    .line 305
    :pswitch_4
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x4

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewTwoLine:I

    sub-int v2, v4, v5

    .line 306
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 309
    goto/16 :goto_1

    .line 311
    :pswitch_5
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x4

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewThreeLine:I

    sub-int v2, v4, v5

    .line 312
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 315
    goto/16 :goto_1

    .line 317
    :pswitch_6
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x7

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewOneLine:I

    sub-int v2, v4, v5

    .line 318
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 322
    goto/16 :goto_1

    .line 324
    :pswitch_7
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x7

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewTwoLine:I

    sub-int v2, v4, v5

    .line 325
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 329
    goto/16 :goto_1

    .line 331
    :pswitch_8
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0x7

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewThreeLine:I

    sub-int v2, v4, v5

    .line 332
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 336
    goto/16 :goto_1

    .line 338
    :pswitch_9
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0xa

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewOneLine:I

    sub-int v2, v4, v5

    .line 339
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    .line 343
    goto/16 :goto_1

    .line 345
    :pswitch_a
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0xa

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewTwoLine:I

    sub-int v2, v4, v5

    .line 346
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    .line 350
    goto/16 :goto_1

    .line 352
    :pswitch_b
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v0, -0xa

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearViewThreeLine:I

    sub-int v2, v4, v5

    .line 353
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    goto/16 :goto_1

    .line 363
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 367
    :cond_1
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private drawMonthTitleRtl(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 370
    iget v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->padding:I

    .line 371
    .local v2, "x":I
    const/4 v3, 0x0

    .line 372
    .local v3, "y":I
    const/16 v1, 0x70

    .line 373
    .local v1, "padding":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v4, 0xc

    if-gt v0, v4, :cond_1

    .line 374
    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_1
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v4, v5}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(II)V

    .line 471
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 472
    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_year/view/YearView;->convertMonth(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :pswitch_0
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN1X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 378
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 379
    goto :goto_1

    .line 381
    :pswitch_1
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN2X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN2X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 384
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 385
    goto :goto_1

    .line 387
    :pswitch_2
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN3X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN3X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 390
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    add-int v3, v4, v5

    .line 391
    goto :goto_1

    .line 393
    :pswitch_3
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x4

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 394
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 398
    goto/16 :goto_1

    .line 400
    :pswitch_4
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x4

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN2X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN5X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 403
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 407
    goto/16 :goto_1

    .line 409
    :pswitch_5
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x4

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN3X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN6X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 412
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYFOUR2SIX:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 416
    goto/16 :goto_1

    .line 418
    :pswitch_6
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x7

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 419
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 423
    goto/16 :goto_1

    .line 425
    :pswitch_7
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x7

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN8X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN8X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 428
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 432
    goto/16 :goto_1

    .line 434
    :pswitch_8
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0x7

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN9X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN9X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 437
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYSEV2NINE:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v3, v4, v5

    .line 441
    goto/16 :goto_1

    .line 443
    :pswitch_9
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0xa

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN10X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN10X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 446
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    .line 450
    goto/16 :goto_1

    .line 452
    :pswitch_a
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0xa

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN11X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN11X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 455
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    .line 459
    goto/16 :goto_1

    .line 461
    :pswitch_b
    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v0, -0xa

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGIN12X:I

    sub-int/2addr v5, v6

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_ENGSTARTMARGIN12X:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 464
    sget v4, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINYTEN2TEl:I

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_STARTY:I

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE_INIT_MARGINY:I

    sub-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->lineSpacingBetweenYearAndMonth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v3, v4, v5

    goto/16 :goto_1

    .line 474
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Utils;->getColorForSeason(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 478
    :cond_1
    return-void

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private findDayOffset()I
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    goto :goto_0
.end method

.method private getMonthTounchLocation(Landroid/view/MotionEvent;)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 826
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 827
    .local v4, "y":F
    const/4 v2, 0x0

    .line 828
    .local v2, "month":I
    iget v5, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v1, v5, 0x3

    .line 829
    .local v1, "columnWidth":I
    const/4 v0, 0x0

    .line 830
    .local v0, "Index":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    const/4 v0, 0x2

    .line 833
    :cond_0
    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 834
    const/4 v5, 0x0

    .line 886
    :goto_0
    return v5

    .line 836
    :cond_1
    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    .line 837
    int-to-float v5, v1

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    .line 838
    add-int/lit8 v2, v0, 0x0

    .line 840
    :cond_2
    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 841
    const/4 v2, 0x1

    .line 843
    :cond_3
    mul-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    .line 844
    rsub-int/lit8 v2, v0, 0x2

    .line 847
    :cond_4
    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_7

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    .line 849
    int-to-float v5, v1

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_5

    .line 850
    add-int/lit8 v2, v0, 0x3

    .line 852
    :cond_5
    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_6

    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    .line 853
    const/4 v2, 0x4

    .line 855
    :cond_6
    mul-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_7

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_7

    .line 856
    rsub-int/lit8 v2, v0, 0x5

    .line 860
    :cond_7
    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_a

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a

    .line 862
    int-to-float v5, v1

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_8

    .line 863
    add-int/lit8 v2, v0, 0x6

    .line 865
    :cond_8
    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_9

    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    .line 866
    const/4 v2, 0x7

    .line 868
    :cond_9
    mul-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_a

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_a

    .line 869
    rsub-int/lit8 v2, v0, 0x8

    .line 873
    :cond_a
    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/lit16 v5, v5, 0xc8

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_d

    sget v5, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_d

    .line 875
    int-to-float v5, v1

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_b

    .line 876
    add-int/lit8 v2, v0, 0x9

    .line 878
    :cond_b
    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_c

    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_c

    .line 879
    const/16 v2, 0xa

    .line 881
    :cond_c
    mul-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_d

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_d

    .line 882
    rsub-int/lit8 v2, v0, 0xb

    :cond_d
    move v5, v2

    .line 886
    goto/16 :goto_0
.end method

.method private isToday(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 751
    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->month:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateNumRows()I
    .locals 5

    .prologue
    .line 274
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->findDayOffset()I

    move-result v1

    .line 275
    .local v1, "offset":I
    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    div-int v0, v3, v4

    .line 276
    .local v0, "dividend":I
    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numDays:I

    rem-int v2, v3, v4

    .line 277
    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public convertMonth(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 481
    const-string v0, ""

    .line 482
    .local v0, "string":Ljava/lang/String;
    sget-object v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE__ARRAY:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE__ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-gt p1, v1, :cond_0

    .line 483
    sget-object v1, Lcn/nubia/calendar/submodule_year/view/YearView;->MONTH_TITLE__ARRAY:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .line 485
    :cond_0
    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->month:I

    return v0
.end method

.method public getMonthFromLocation(Landroid/view/MotionEvent;)Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 757
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 758
    .local v4, "y":F
    const/4 v2, -0x1

    .line 759
    .local v2, "month":I
    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    div-int/lit8 v1, v6, 0x3

    .line 760
    .local v1, "columnWidth":I
    const/4 v0, 0x0

    .line 761
    .local v0, "Index":I
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 762
    const/4 v0, 0x2

    .line 764
    :cond_0
    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    .line 821
    :cond_1
    :goto_0
    return-object v5

    .line 767
    :cond_2
    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_5

    .line 768
    int-to-float v6, v1

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    .line 769
    add-int/lit8 v2, v0, 0x0

    .line 771
    :cond_3
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    int-to-float v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    .line 772
    const/4 v2, 0x1

    .line 774
    :cond_4
    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_5

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_5

    .line 775
    rsub-int/lit8 v2, v0, 0x2

    .line 778
    :cond_5
    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_8

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    .line 780
    int-to-float v6, v1

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_6

    .line 781
    add-int/lit8 v2, v0, 0x3

    .line 783
    :cond_6
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_7

    int-to-float v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_7

    .line 784
    const/4 v2, 0x4

    .line 786
    :cond_7
    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_8

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_8

    .line 787
    rsub-int/lit8 v2, v0, 0x5

    .line 791
    :cond_8
    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_b

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_b

    .line 793
    int-to-float v6, v1

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_9

    .line 794
    add-int/lit8 v2, v0, 0x6

    .line 796
    :cond_9
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    int-to-float v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_a

    .line 797
    const/4 v2, 0x7

    .line 799
    :cond_a
    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_b

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    .line 800
    rsub-int/lit8 v2, v0, 0x8

    .line 804
    :cond_b
    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, 0xc8

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_e

    sget v6, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_HEADER_TEXT_HEIGHT:I

    iget v7, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->rowMonthHeight:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_e

    .line 806
    int-to-float v6, v1

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_c

    .line 807
    add-int/lit8 v2, v0, 0x9

    .line 809
    :cond_c
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_d

    int-to-float v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_d

    .line 810
    const/16 v2, 0xa

    .line 812
    :cond_d
    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_e

    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_e

    .line 813
    rsub-int/lit8 v2, v0, 0xb

    .line 816
    :cond_e
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 819
    new-instance v5, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;

    iget v6, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-direct {v5, v6, v2}, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;-><init>(II)V

    .line 821
    .local v5, "yearViewClickEventModel":Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;
    goto/16 :goto_0
.end method

.method public getWindowWidth()I
    .locals 5

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1050
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1051
    .local v1, "cwidth":I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1052
    .local v0, "cheight":I
    if-ge v1, v0, :cond_0

    .end local v1    # "cwidth":I
    :goto_0
    return v1

    .restart local v1    # "cwidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 890
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    .line 891
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 893
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_TEXT_SIZE0:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 894
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 896
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 897
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "yearTextStyle":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "yearMonthTitleStyle":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->monthLabelTextPaint:Landroid/graphics/Paint;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 903
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    .line 904
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 906
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->YEAR_TEXT_SIZE1:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 908
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 909
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 911
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 912
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    .line 913
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 914
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    sget v3, Lcn/nubia/calendar/submodule_year/view/YearView;->DAY_LABEL_TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 916
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 917
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 918
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayLabelCircleBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 919
    return-void
.end method

.method public initXyMax()V
    .locals 5

    .prologue
    .line 263
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    .line 265
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 266
    .local v2, "win":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 267
    .local v1, "size":Landroid/graphics/Point;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 268
    .local v0, "dis":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 269
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/Point;->y:I

    :goto_0
    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->xyMax:I

    .line 271
    .end local v0    # "dis":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "win":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 269
    .restart local v0    # "dis":Landroid/view/Display;
    .restart local v1    # "size":Landroid/graphics/Point;
    .restart local v2    # "win":Landroid/view/WindowManager;
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1010
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 922
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isViewRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->drawMonthTitleRtl(Landroid/graphics/Canvas;)V

    .line 924
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->drawAllMonthNumsRtl(Landroid/graphics/Canvas;)V

    .line 930
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 927
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->drawAllMonthNums(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 933
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWidth:I

    .line 934
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 945
    :goto_0
    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mDownMonth:I

    iget v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mUpMonth:I

    if-ne v1, v2, :cond_0

    .line 946
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->getMonthFromLocation(Landroid/view/MotionEvent;)Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;

    move-result-object v0

    .line 947
    .local v0, "yearViewClickEventModel":Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;
    if-eqz v0, :cond_0

    .line 948
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mOnMonthClickListener:Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mOnMonthClickListener:Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;

    invoke-interface {v1, p0, v0}, Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;->onMonthClick(Lcn/nubia/calendar/submodule_year/view/YearView;Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;)V

    .line 955
    .end local v0    # "yearViewClickEventModel":Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 940
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->getMonthTounchLocation(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mDownMonth:I

    goto :goto_0

    .line 943
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->getMonthTounchLocation(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mUpMonth:I

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reuse()V
    .locals 0

    .prologue
    .line 969
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->requestLayout()V

    .line 970
    return-void
.end method

.method public setOnMonthClickListener(Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;)V
    .locals 0
    .param p1, "onMonthClickListener"    # Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;

    .prologue
    .line 1057
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mOnMonthClickListener:Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;

    .line 1058
    return-void
.end method

.method public setYearParams(II)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 973
    iput p2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->month:I

    .line 974
    iput p1, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    .line 975
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 977
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    .line 979
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 980
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 981
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 983
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getFirstDayOfWeek()I

    move-result v2

    .line 987
    .local v2, "mFirstDayOfWeek":I
    if-ne v2, v6, :cond_1

    .line 988
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 994
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    .line 995
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    .line 996
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    invoke-virtual {v3, p2, p1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    .line 998
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    if-ge v1, v3, :cond_3

    .line 999
    add-int/lit8 v0, v1, 0x1

    .line 1000
    .local v0, "day":I
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v3}, Lcn/nubia/calendar/submodule_year/view/YearView;->isToday(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1001
    iput v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    .line 998
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 989
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 990
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 1004
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setYearParams(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 1014
    const-string v2, "current"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "You must specify current_year for this view"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1018
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->setTag(Ljava/lang/Object;)V

    .line 1020
    const-string v2, "current"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    .line 1022
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    .line 1023
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1024
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1025
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1026
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->dayOfWeekStart:I

    .line 1028
    const-string v2, "week_start"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1029
    const-string v2, "week_start"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    .line 1034
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->mYearCommonUtils:Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    iget v3, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->month:I

    iget v4, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->getDaysInMonth(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    .line 1036
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->numCells:I

    if-ge v1, v2, :cond_3

    .line 1037
    add-int/lit8 v0, v1, 0x1

    .line 1038
    .local v0, "day":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->currentTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v2}, Lcn/nubia/calendar/submodule_year/view/YearView;->isToday(ILandroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    iput v0, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->today:I

    .line 1036
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1031
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->weekStart:I

    goto :goto_0

    .line 1043
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/YearView;->getWindowWidth()I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_year/view/YearView;->width:I

    .line 1045
    return-void
.end method

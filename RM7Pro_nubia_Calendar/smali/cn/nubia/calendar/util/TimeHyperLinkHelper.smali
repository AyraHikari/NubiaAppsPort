.class public Lcn/nubia/calendar/util/TimeHyperLinkHelper;
.super Ljava/lang/Object;
.source "TimeHyperLinkHelper.java"


# static fields
.field private static final CREATE_EVENT:Ljava/lang/String; = "cn.nubia.calendar.otherApp.CREATE_EVENT"

.field private static final DAYS_THIRTY:[I

.field private static final DEBUG:Z = true

.field private static final KEY_BEGIN_TIME_IN_MILLIS:Ljava/lang/String; = "begin_time_in_millis"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_END_TIME_IN_MILLIS:Ljava/lang/String; = "end_time_in_millis"

.field private static final KEY_TIME_IN_MILLIS:Ljava/lang/String; = "time_in_millis"

.field public static final MATCH_STRING:Ljava/lang/String; = "(([1-9][0-9]{3}\u5e74(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5)|([1-9][0-9]{3}\\.(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[12][0-9]|30|31|[1-9]))|([1-9][0-9]{3}\\/(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[12][0-9]|30|31|[1-9]))|([1-9][0-9]{3}-(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[12][0-9]|30|31|[1-9]))|((0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[1-9]|[12][0-9]|30|31)\\.[1-9][0-9]{3})|((0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[1-9]|[12][0-9]|30|31)\\/[1-9][0-9]{3})|((0[1-9]|[1-9]|10|11|12)-(0[1-9]|[1-9]|[12][0-9]|30|31)-[1-9][0-9]{3}))"

.field private static final MATCH_STRING_2:Ljava/lang/String; = "([1-9][0-9]{3})\u5e74(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5"

.field private static final MATCH_STRING_3:Ljava/lang/String; = "([1-9][0-9]{3})\\.(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[12][0-9]|30|31|[1-9])"

.field private static final MATCH_STRING_4:Ljava/lang/String; = "([1-9][0-9]{3})\\/(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[12][0-9]|30|31|[1-9])"

.field private static final MATCH_STRING_5:Ljava/lang/String; = "([1-9][0-9]{3})-(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[12][0-9]|30|31|[1-9])"

.field private static final MATCH_STRING_6:Ljava/lang/String; = "(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[1-9]|[12][0-9]|30|31)\\.([1-9][0-9]{3})"

.field private static final MATCH_STRING_7:Ljava/lang/String; = "(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[1-9]|[12][0-9]|30|31)\\/([1-9][0-9]{3})"

.field private static final MATCH_STRING_8:Ljava/lang/String; = "(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[1-9]|[12][0-9]|30|31)-([1-9][0-9]{3})"

.field private static final MATCH_STRING_9:Ljava/lang/String; = "(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5"

.field private static final MAX_DAY:I = 0x1f

.field private static final MAX_MONTH:I = 0xc

.field private static final MAX_YEAR:I = 0x7f5

.field private static final TAG:Ljava/lang/String; = "TimeHyperLinkUtils"

.field public static final TIME:Ljava/util/regex/Pattern;

.field private static final TIME_MATCH_STRING_1:Ljava/lang/String; = "([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]([0-5][0-9]|[0-9])(\u5206)?"

.field private static final TIME_MATCH_STRING_2:Ljava/lang/String; = "[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9([0-5][0-9]|[0-9])(\u5206)?"

.field private static final TIME_MATCH_STRING_3:Ljava/lang/String; = "([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]"

.field private static final TIME_MATCH_STRING_4:Ljava/lang/String; = "[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9"

.field private static final TIME_MATCH_STRING_5:Ljava/lang/String; = "([01][0-9]|2[0-3]|[0-9])((\\s*[ap]m)|(\\s*[ap]\\.m\\.))"

.field private static final TIME_MATCH_STRING_6:Ljava/lang/String; = "([01][0-9]|2[0-3]|[0-9]):([0-5][0-9]|[0-9])(((\\s*[ap]m)|(\\s*[ap]\\.m\\.))?)"

.field private static final VIEW_DATE:Ljava/lang/String; = "cn.nubia.calendar.otherApp.VIEW_DATE"

.field private static mDay:I

.field private static mDescription:Ljava/lang/String;

.field private static mHour:I

.field private static mMinutes:I

.field private static mMonth:I

.field private static mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    const-string v0, "([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]([0-5][0-9]|[0-9])(\u5206)?|[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9([0-5][0-9]|[0-9])(\u5206)?|([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]|[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9|([01][0-9]|2[0-3]|[0-9])((\\s*[ap]m)|(\\s*[ap]\\.m\\.))|([01][0-9]|2[0-3]|[0-9]):([0-5][0-9]|[0-9])(((\\s*[ap]m)|(\\s*[ap]\\.m\\.))?)"

    const/4 v1, 0x2

    .line 74
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->TIME:Ljava/util/regex/Pattern;

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->DAYS_THIRTY:[I

    .line 100
    const/16 v0, 0x7b2

    sput v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    .line 101
    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    .line 102
    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 103
    sput v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    .line 104
    sput v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    .line 105
    const-string v0, ""

    sput-object v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDescription:Ljava/lang/String;

    return-void

    .line 98
    :array_0
    .array-data 4
        0x2
        0x6
        0x9
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDateAndTime(III)Z
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/16 v3, 0x1c

    const/4 v1, 0x0

    .line 328
    const/16 v2, 0x7f5

    if-le p0, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    const/16 v2, 0xc

    if-gt p1, v2, :cond_0

    .line 336
    const/16 v2, 0x1f

    if-gt p2, v2, :cond_0

    .line 340
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 341
    const/16 v2, 0x1d

    if-gt p2, v2, :cond_0

    .line 345
    invoke-static {p0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-le p2, v3, :cond_2

    .line 347
    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 351
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->DAYS_THIRTY:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 352
    sget-object v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->DAYS_THIRTY:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_3

    const/16 v2, 0x1e

    if-gt p2, v2, :cond_0

    .line 351
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_4
    const-string v1, "TimeHyperLinkUtils"

    const-string v2, "checkDateAndTime: check pass."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkDateSuccess(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    if-nez p0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    const-string v2, "([1-9][0-9]{3})\u5e74(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "([1-9][0-9]{3})\\.(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[12][0-9]|30|31|[1-9])"

    .line 134
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "([1-9][0-9]{3})\\/(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[12][0-9]|30|31|[1-9])"

    .line 135
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "([1-9][0-9]{3})-(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[12][0-9]|30|31|[1-9])"

    .line 136
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5"

    .line 137
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchStringMonthAndDay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :cond_2
    const-string v2, "(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[1-9]|[12][0-9]|30|31)\\.([1-9][0-9]{3})"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchStringExtras(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[1-9]|[12][0-9]|30|31)\\/([1-9][0-9]{3})"

    .line 142
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchStringExtras(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[1-9]|[12][0-9]|30|31)-([1-9][0-9]{3})"

    .line 143
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchStringExtras(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    :cond_3
    const-string v2, "([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]([0-5][0-9]|[0-9])(\u5206)?"

    invoke-static {p0, v2, v1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9([0-5][0-9]|[0-9])(\u5206)?"

    .line 148
    invoke-static {p0, v2, v1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    :cond_4
    const-string v2, "([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]"

    invoke-static {p0, v2, v0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "[\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9"

    .line 152
    invoke-static {p0, v2, v0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "([01][0-9]|2[0-3]|[0-9]):([0-5][0-9]|[0-9])(((\\s*[ap]m)|(\\s*[ap]\\.m\\.))?)"

    .line 153
    invoke-static {p0, v2, v1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "([01][0-9]|2[0-3]|[0-9])((\\s*[ap]m)|(\\s*[ap]\\.m\\.))"

    .line 154
    invoke-static {p0, v2, v0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    :cond_5
    sget v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    sget v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    invoke-static {v2, v3, v4}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateAndTime(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 159
    goto/16 :goto_0
.end method

.method private static checkMatchString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "matchString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 292
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 293
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 294
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    .line 296
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    .line 297
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 303
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkMatchStringExtras(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "matchString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 191
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 192
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 193
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, "TimeHyperLinkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMatchStringExtras: matcher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    .line 196
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 197
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    .line 203
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkMatchStringMonthAndDay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "matchString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 309
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 312
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 313
    iget v4, v2, Landroid/text/format/Time;->year:I

    sput v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    .line 314
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    .line 315
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 317
    const-string v4, "TimeHyperLinkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMatchString: mDay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v2    # "time":Landroid/text/format/Time;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static checkMatchTimeExtras(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "matchString"    # Ljava/lang/String;
    .param p2, "hasMinutes"    # Z

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 168
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 169
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, "TimeHyperLinkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMatchTimeExtras: matcher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    .line 172
    if-eqz p2, :cond_0

    .line 173
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    .line 180
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkTime()Z
    .locals 2

    .prologue
    .line 184
    sget v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    if-ltz v0, :cond_0

    sget v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    sget v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    if-ltz v0, :cond_0

    sget v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBeginMillisByTime(Ljava/lang/String;)J
    .locals 9
    .param p0, "timeStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 209
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBeginMillisByTime timeStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {p0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateSuccess(Ljava/lang/String;)Z

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 212
    .local v2, "calendar":Ljava/util/Calendar;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 214
    .local v4, "time":Landroid/text/format/Time;
    const/4 v3, 0x0

    .line 215
    .local v3, "flag1970":Z
    if-eqz p0, :cond_0

    const-string v5, "1970"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    const/4 v3, 0x1

    .line 219
    :cond_0
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    const/16 v6, 0x7b2

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_3

    .line 221
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 222
    if-eqz p0, :cond_2

    const-string v5, "p"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_1

    const-string v5, "\u4e0b"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 223
    :cond_1
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    add-int/lit8 v5, v5, 0xc

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 224
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time.hour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 233
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBeginMillisByTime 1970 mYear="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMonth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMinutes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBeginMillisByTime 1970 mYear="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMonth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMinutes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 241
    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 259
    .local v0, "beginTimeInMillis":J
    invoke-static {}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->restTimeAndDate()V

    .line 261
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBeginMillisByTime beginTimeInMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-wide v0

    .line 226
    .end local v0    # "beginTimeInMillis":J
    :cond_2
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    iput v5, v4, Landroid/text/format/Time;->hour:I

    goto/16 :goto_0

    .line 244
    :cond_3
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 245
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 246
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 247
    if-eqz p0, :cond_5

    const-string v5, "p"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_4

    const-string v5, "\u4e0b"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 248
    :cond_4
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    add-int/lit8 v5, v5, 0xc

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 252
    :goto_2
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 254
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBeginMillisByTime mYear="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMonth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMinutes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :cond_5
    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    iput v5, v4, Landroid/text/format/Time;->hour:I

    goto :goto_2
.end method

.method public static getEndMillisByTime(Ljava/lang/String;)J
    .locals 12
    .param p0, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v1, "TimeHyperLinkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndMillisByTime timeStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateSuccess(Ljava/lang/String;)Z

    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 272
    .local v0, "calendar":Ljava/util/Calendar;
    sget v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    const/16 v2, 0x7b2

    if-ne v1, v2, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 274
    .local v10, "time":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 275
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 276
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v6}, Ljava/util/Date;->getDay()I

    move-result v3

    sget v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 283
    .end local v6    # "date":Ljava/util/Date;
    .end local v10    # "time":J
    :goto_0
    const-string v1, "TimeHyperLinkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndMillisByTime mYear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMonth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mHour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMinutes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 287
    .local v8, "endTimeInMillis":J
    invoke-static {}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->restTimeAndDate()V

    .line 288
    return-wide v8

    .line 279
    .end local v8    # "endTimeInMillis":J
    :cond_0
    sget v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    sget v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    sget v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    goto :goto_0
.end method

.method public static getMatchDateAndTime(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sput-object p0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDescription:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v0, "hp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v5, "(([1-9][0-9]{3}\u5e74(0[1-9]|[1-9]|10|11|12)\u6708(0[1-9]|[1-9]|[12][0-9]|30|31)\u65e5)|([1-9][0-9]{3}\\.(0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[12][0-9]|30|31|[1-9]))|([1-9][0-9]{3}\\/(0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[12][0-9]|30|31|[1-9]))|([1-9][0-9]{3}-(0[1-9]|[1-9]|10|11|12)-(0[1-9]|[12][0-9]|30|31|[1-9]))|((0[1-9]|[1-9]|10|11|12)\\.(0[1-9]|[1-9]|[12][0-9]|30|31)\\.[1-9][0-9]{3})|((0[1-9]|[1-9]|10|11|12)\\/(0[1-9]|[1-9]|[12][0-9]|30|31)\\/[1-9][0-9]{3})|((0[1-9]|[1-9]|10|11|12)-(0[1-9]|[1-9]|[12][0-9]|30|31)-[1-9][0-9]{3}))"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 112
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 113
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 115
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "url":Ljava/lang/String;
    const-string v5, "TimeHyperLinkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMatchDateAndTime: start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v4}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateSuccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static isLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_1

    .line 364
    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_0

    .line 366
    const-string v1, "TimeHyperLinkUtils"

    const-string v2, "isLeapYear: true."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    return v0

    .line 370
    :cond_0
    const-string v0, "TimeHyperLinkUtils"

    const-string v2, "isLeapYear: false."

    invoke-static {v0, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 371
    goto :goto_0

    .line 374
    :cond_1
    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_2

    .line 376
    const-string v1, "TimeHyperLinkUtils"

    const-string v2, "isLeapYear: true."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, "TimeHyperLinkUtils"

    const-string v2, "isLeapYear: false."

    invoke-static {v0, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 381
    goto :goto_0
.end method

.method private static restTimeAndDate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 447
    const/16 v0, 0x7b2

    sput v0, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    .line 448
    sput v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    .line 449
    sput v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    .line 450
    sput v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mHour:I

    .line 451
    sput v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMinutes:I

    .line 452
    return-void
.end method

.method public static sendCreateEventIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "charSequence"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v1, "TimeHyperLinkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCreateEventIntent: str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 392
    :cond_0
    const-string v1, "TimeHyperLinkUtils"

    const-string v2, "sendCreateEventIntent: context or str is NULL."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {p1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateSuccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    const-string v1, "TimeHyperLinkUtils"

    const-string v2, "sendCreateEventIntent: match date failed."

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 403
    .local v0, "calendar":Ljava/util/Calendar;
    sget v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    sget v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 404
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 405
    .local v6, "beginTimeInMillis":J
    sget v1, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    sget v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 406
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 408
    .local v8, "endTimeInMillis":J
    new-instance v10, Landroid/content/Intent;

    const-string v1, "cn.nubia.calendar.otherApp.CREATE_EVENT"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v10, "intent":Landroid/content/Intent;
    const-string v1, "begin_time_in_millis"

    invoke-virtual {v10, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 410
    const-string v1, "end_time_in_millis"

    invoke-virtual {v10, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    const-string v1, "description"

    sget-object v2, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDescription:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "TimeHyperLinkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCreateEventIntent: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendViewDateIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "charSequence"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v4, "TimeHyperLinkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendViewDateIntent: str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 424
    :cond_0
    const-string v4, "TimeHyperLinkUtils"

    const-string v5, "sendViewDateIntent: context or str is NULL."

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-static {p1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->checkDateSuccess(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 430
    const-string v4, "TimeHyperLinkUtils"

    const-string v5, "sendViewDateIntent: match date failed."

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 435
    .local v0, "calendar":Ljava/util/Calendar;
    sget v4, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mYear:I

    sget v5, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mMonth:I

    add-int/lit8 v5, v5, -0x1

    sget v6, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->mDay:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 436
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 438
    .local v2, "timeInMillis":J
    new-instance v1, Landroid/content/Intent;

    const-string v4, "cn.nubia.calendar.otherApp.VIEW_DATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "time_in_millis"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 441
    const-string v4, "TimeHyperLinkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendViewDateIntent: intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

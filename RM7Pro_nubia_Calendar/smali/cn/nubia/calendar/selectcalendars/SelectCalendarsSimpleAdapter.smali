.class public Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSimpleAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;,
        Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static BOTTOM_ITEM_HEIGHT:I = 0x0

.field public static final CALENDAR_CONTACT_BIRTHDAY_COLOR:I = 0xfeb012

.field public static final CALENDAR_DEFAULT_CALENDAR_COLOR:I = 0x11b3e9

.field public static final CALENDAR_EXCHANGE_ACCOUNT_COLOR:I = 0xf58655

.field public static final CALENDAR_GOOGLE_ACCOUNT_COLOR:I = 0xaf6ef1

.field public static final CALENDAR_NUBIA_ACCOUNT_COLOR:I = 0x52c74f

.field private static COLOR_CHIP_LEFT_MARGIN:I = 0x0

.field private static COLOR_CHIP_RIGHT_MARGIN:I = 0x0

.field private static COLOR_CHIP_TOP_OFFSET:I = 0x0

.field public static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "nobody@gmail.com"

.field public static final DEFAULT_CALENDAR_NAME:Ljava/lang/String; = "My Calendar"

.field public static final DEFAULT_CHINAESE_HOLIDAY:Ljava/lang/String; = "Chinese Holiday"

.field public static final DEFAULT_CONTACT_BIRTHDAY:Ljava/lang/String; = "Contact Birthday"

.field public static final DEFAULT_LUNAR:Ljava/lang/String; = "Lunar"

.field public static final DEFAULT_WESTERN_HOLIDAY:Ljava/lang/String; = "Western Holiday"

.field public static final EXCHANGE_ACCOUTN_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final GOOGLE_ACCOUTN_TYPE:Ljava/lang/String; = "com.google"

.field private static final IS_BELOW_SELECTED:I = 0x8

.field private static final IS_BOTTOM:I = 0x4

.field private static final IS_SELECTED:I = 0x1

.field private static final IS_TOP:I = 0x2

.field private static NORMAL_ITEM_HEIGHT:I = 0x0

.field public static final NUBIA_ACCOUTN_TYPE:Ljava/lang/String; = "com.ztemt"

.field private static SELECTED_COLOR_CHIP_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SelectCalendarsAdapter"

.field public static final TYPE_GROUP:I = 0x0

.field private static final TYPE_ITEM:I = 0x1

.field private static UNSELECTED_COLOR_CHIP_SIZE:I

.field private static mScale:F


# instance fields
.field private mAccountGroup:[Ljava/lang/String;

.field private mAccountGroupFlag:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountNameColumn:I

.field private mAccountTypeColumn:I

.field private mColorCalendarHidden:I

.field private mColorCalendarSecondaryHidden:I

.field private mColorCalendarSecondaryVisible:I

.field private mColorCalendarVisible:I

.field private mColorColumn:I

.field private mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLanguage:Ljava/lang/String;

.field private mLayout:I

.field private mNameColumn:I

.field private mOrientation:I

.field private mOwnerAccountColumn:I

.field mRes:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mVisibleColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x10

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 71
    const/16 v0, 0xa

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 72
    const/16 v0, 0x14

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 73
    const/16 v0, 0x8

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 74
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 75
    const/16 v0, 0x40

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 76
    const/16 v0, 0x30

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 97
    const/4 v0, 0x0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    .line 89
    iput v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 107
    iput v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    .line 111
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mHandler:Landroid/os/Handler;

    .line 140
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 142
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLanguage:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 144
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCountry:Ljava/lang/String;

    .line 145
    iput p2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    .line 148
    invoke-direct {p0, p3}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 149
    const-string v0, "layout_inflater"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    .line 153
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    .line 154
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d00d6

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d00d5

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .line 158
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 160
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 161
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 162
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 163
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 164
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 165
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 166
    sget v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 168
    :cond_0
    return-void
.end method

.method public static getColorByAccountsTypeAndName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "color":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const/4 v1, 0x0

    .line 774
    :goto_0
    return v1

    .line 760
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    const v0, 0x11b3e9

    :cond_1
    :goto_1
    move v1, v0

    .line 774
    goto :goto_0

    .line 765
    :cond_2
    const v0, 0xfeb012

    goto :goto_1

    .line 767
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    const v0, 0xf58655

    goto :goto_1

    .line 769
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 770
    const v0, 0xaf6ef1

    goto :goto_1

    .line 771
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    const v0, 0x52c74f

    goto :goto_1
.end method

.method private getGroupCount()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 367
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_type as primary_key"

    aput-object v0, v2, v8

    .line 369
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "sync_events=1) GROUP BY (primary_key"

    .line 370
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    .line 374
    iget v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroup:[Ljava/lang/String;

    .line 375
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 376
    const/4 v7, 0x0

    .line 377
    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroup:[Ljava/lang/String;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 379
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 381
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v7    # "index":I
    :cond_1
    iget v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    return v0
.end method

.method private getLocalAccountNum(Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 355
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "num":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    const-string v1, "LOCAL"

    iget v2, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountTypeColumn:I

    .line 359
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    return v0
.end method

.method private declared-synchronized hasCreateAccountGroup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountname"    # Ljava/lang/String;

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 347
    .local v0, "create":Z
    if-nez v0, :cond_0

    .line 348
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return v0

    .line 346
    .end local v0    # "create":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 220
    const/4 v11, 0x0

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 221
    const/4 v11, 0x0

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    .line 222
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v11, :cond_0

    .line 225
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_0
    if-nez p1, :cond_2

    .line 228
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 343
    :cond_1
    return-void

    .line 231
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getGroupCount()I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    .line 232
    const-string v11, "account_name"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountNameColumn:I

    .line 233
    const-string v11, "account_type"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountTypeColumn:I

    .line 234
    const-string v10, ""

    .line 235
    .local v10, "typeLabel":Ljava/lang/String;
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 236
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    .line 237
    const-string v11, "calendar_displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    .line 238
    const-string v11, "calendar_color"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    .line 239
    const-string v11, "visible"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    .line 240
    const-string v11, "ownerAccount"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    .line 241
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    iput v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 242
    invoke-direct {p0, p1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getLocalAccountNum(Landroid/database/Cursor;)I

    move-result v5

    .line 243
    .local v5, "localAccountNum":I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    const/4 v8, 0x0

    .line 245
    .local v8, "p":I
    const/4 v6, 0x0

    .line 246
    .local v6, "localP":I
    add-int/lit8 v7, v5, 0x1

    .line 247
    .local v7, "networkP":I
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 248
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    if-ge v4, v11, :cond_3

    .line 249
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    iget-object v12, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroup:[Ljava/lang/String;

    aget-object v12, v12, v4

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 252
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountNameColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "accountName":Ljava/lang/String;
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountTypeColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "accountType":Ljava/lang/String;
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountGroupFlag:Ljava/util/Hashtable;

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 257
    const-string v11, "LOCAL"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "PC Sync"

    .line 258
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 261
    :cond_4
    invoke-direct {p0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->hasCreateAccountGroup(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 262
    new-instance v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;)V

    .line 263
    .local v3, "calendarRowGroup":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    const-wide/16 v12, -0x1

    iput-wide v12, v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 264
    const/4 v11, 0x0

    iput v11, v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->type:I

    .line 265
    iput-object v1, v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 266
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "My Calendar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 267
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0188

    .line 268
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 274
    :goto_2
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "calendarRowGroup":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    :cond_5
    new-instance v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;)V

    .line 277
    .local v2, "calendarRowAccount":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 278
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 279
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 280
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 281
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 282
    const/4 v11, 0x1

    iput v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->type:I

    .line 283
    iput-object v1, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 290
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    const-string v12, "nobody@gmail.com"

    .line 292
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    const-string v12, "birthday@gmail.com"

    .line 293
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 294
    :cond_6
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    const-string v12, "custom_calendar"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 296
    .local v9, "pref":Landroid/content/SharedPreferences;
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    const-string v12, "My Calendar"

    .line 297
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 298
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0188

    .line 299
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 333
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_7
    :goto_4
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    iget-object v12, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c018b

    .line 334
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 333
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    iget-object v12, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c018a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 335
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    iget-object v12, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0242

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 340
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 271
    .end local v2    # "calendarRowAccount":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    .restart local v3    # "calendarRowGroup":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    :cond_8
    iget v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mAccountNameColumn:I

    .line 272
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 280
    .end local v3    # "calendarRowGroup":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    .restart local v2    # "calendarRowAccount":Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 300
    .restart local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_a
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    const-string v12, "Lunar"

    .line 301
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 302
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c018b

    .line 303
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 304
    const-string v11, "is_lunar_visible"

    const/4 v12, 0x1

    .line 305
    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    goto :goto_4

    .line 308
    :cond_b
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    const-string v12, "Chinese Holiday"

    .line 309
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 310
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c018a

    .line 311
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 312
    const-string v11, "is_holiday_visible"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    goto/16 :goto_4

    .line 315
    :cond_c
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    const-string v12, "Contact Birthday"

    .line 316
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 317
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0187

    .line 318
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 319
    const-string v11, "is_birthday_visible"

    const/4 v12, 0x1

    .line 320
    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    goto/16 :goto_4

    .line 323
    :cond_d
    iget-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    const-string v12, "Western Holiday"

    .line 324
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 325
    iget-object v11, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0242

    .line 326
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 327
    const-string v11, "is_western_holiday_visible"

    const/4 v12, 0x0

    .line 328
    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    goto/16 :goto_4
.end method

.method private isLocalCalendar(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;)Z
    .locals 2
    .param p1, "data"    # Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .prologue
    .line 649
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nobody@gmail.com"

    iget-object v1, p1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "birthday@gmail.com"

    iget-object v1, p1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    :cond_1
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalChineseHoliday(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c018a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLocalContactBirthday(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0187

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLocalLunar(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLocalWesternHoliday(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 388
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method protected getBackground(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 708
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 709
    .local v0, "bg":I
    :goto_0
    if-nez p1, :cond_2

    iget v3, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    if-ne v3, v1, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 711
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 712
    if-lez p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iget-boolean v1, v1, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int/2addr v0, v2

    .line 714
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    .line 715
    invoke-static {}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->getBackgrounds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 714
    return-object v1

    .end local v0    # "bg":I
    :cond_1
    move v0, v2

    .line 708
    goto :goto_0

    .restart local v0    # "bg":I
    :cond_2
    move v1, v2

    .line 709
    goto :goto_1

    :cond_3
    move v1, v2

    .line 711
    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "id":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    const/4 v1, 0x0

    .line 798
    :goto_0
    return v1

    .line 784
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 785
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    const v0, 0x7f020087

    :cond_1
    :goto_1
    move v1, v0

    .line 798
    goto :goto_0

    .line 789
    :cond_2
    const v0, 0x7f020086

    goto :goto_1

    .line 791
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    const v0, 0x7f020090

    goto :goto_1

    .line 793
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 794
    const v0, 0x7f020091

    goto :goto_1

    .line 795
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    const v0, 0x7f020098

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 729
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 733
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 734
    const-wide/16 v0, 0x0

    .line 736
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iget-wide v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mGroupCount:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, p1

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 393
    const/16 v23, 0x0

    .line 640
    :cond_0
    :goto_0
    return-object v23

    .line 395
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v14, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 396
    .local v14, "name":Ljava/lang/String;
    const-string v25, "nobody@gmail.com"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0188

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 400
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    move/from16 v20, v0

    .line 409
    .local v20, "selected":Z
    if-nez p2, :cond_d

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, p3

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 414
    .local v23, "view":Landroid/view/View;
    :goto_1
    const v25, 0x7f1100d8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 415
    .local v6, "calendarName":Landroid/widget/TextView;
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v25, 0x7f1100de

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    .line 417
    .local v21, "syncCheckBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 418
    const v25, 0x7f1100db

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 419
    .local v11, "group":Landroid/widget/TextView;
    const v25, 0x7f1100d9

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 420
    .local v19, "secondaryText":Landroid/widget/TextView;
    const v25, 0x7f1100d7

    .line 421
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 422
    .local v9, "calendar_layout":Landroid/widget/LinearLayout;
    const v25, 0x7f1100da

    .line 423
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 424
    .local v7, "calendar_group_layout":Landroid/widget/LinearLayout;
    const v25, 0x7f1100dc

    .line 425
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 426
    .local v8, "calendar_group_layout1":Landroid/widget/LinearLayout;
    const v25, 0x7f1100dd

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 427
    .local v12, "group1":Landroid/widget/TextView;
    const v25, 0x7f1100d6

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 429
    .local v10, "colorView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->type:I

    move/from16 v25, v0

    if-nez v25, :cond_f

    .line 430
    const/16 v25, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    if-nez p1, :cond_e

    .line 434
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 444
    :goto_2
    if-eqz v21, :cond_3

    .line 445
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 447
    :cond_3
    if-eqz v11, :cond_8

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0188

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 450
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0164

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 453
    :cond_4
    const-string v25, "com.android.exchange"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c00a3

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 456
    :cond_5
    const-string v25, "com.google"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0141

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 459
    :cond_6
    const-string v25, "com.ztemt"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0195

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 462
    :cond_7
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_8
    if-eqz v12, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0188

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 468
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0164

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 471
    :cond_9
    const-string v25, "com.android.exchange"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c00a3

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 474
    :cond_a
    const-string v25, "com.google"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0141

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 477
    :cond_b
    const-string v25, "com.ztemt"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0195

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 480
    :cond_c
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 412
    .end local v6    # "calendarName":Landroid/widget/TextView;
    .end local v7    # "calendar_group_layout":Landroid/widget/LinearLayout;
    .end local v8    # "calendar_group_layout1":Landroid/widget/LinearLayout;
    .end local v9    # "calendar_layout":Landroid/widget/LinearLayout;
    .end local v10    # "colorView":Landroid/widget/ImageView;
    .end local v11    # "group":Landroid/widget/TextView;
    .end local v12    # "group1":Landroid/widget/TextView;
    .end local v19    # "secondaryText":Landroid/widget/TextView;
    .end local v21    # "syncCheckBox":Landroid/widget/CheckBox;
    .end local v23    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v23, p2

    .restart local v23    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 439
    .restart local v6    # "calendarName":Landroid/widget/TextView;
    .restart local v7    # "calendar_group_layout":Landroid/widget/LinearLayout;
    .restart local v8    # "calendar_group_layout1":Landroid/widget/LinearLayout;
    .restart local v9    # "calendar_layout":Landroid/widget/LinearLayout;
    .restart local v10    # "colorView":Landroid/widget/ImageView;
    .restart local v11    # "group":Landroid/widget/TextView;
    .restart local v12    # "group1":Landroid/widget/TextView;
    .restart local v19    # "secondaryText":Landroid/widget/TextView;
    .restart local v21    # "syncCheckBox":Landroid/widget/CheckBox;
    :cond_e
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 485
    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0188

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 490
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c0189

    .line 493
    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 492
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    if-eqz v21, :cond_10

    .line 495
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 521
    :cond_10
    :goto_3
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    if-eqz v11, :cond_11

    .line 524
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    :cond_11
    if-eqz v21, :cond_22

    .line 528
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalCalendar(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;)Z

    move-result v25

    if-eqz v25, :cond_1d

    const-string v25, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCountry:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "custom_calendar"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 533
    .local v17, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalChineseHoliday(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 534
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_holiday_visible"

    .line 535
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 537
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_12
    :goto_4
    if-eqz v20, :cond_1f

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    move/from16 v22, v0

    .line 582
    .local v22, "textColor":I
    :goto_5
    const-string v25, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCountry:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 583
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalChineseHoliday(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalLunar(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 584
    :cond_13
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 585
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 586
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    move/from16 v22, v0

    .line 588
    :cond_14
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 589
    .local v13, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 590
    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 591
    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "calendar.google.com"

    .line 592
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 593
    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalCalendar(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;)Z

    move-result v25

    if-nez v25, :cond_21

    .line 595
    if-eqz v20, :cond_20

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    move/from16 v18, v0

    .line 600
    .local v18, "secondaryColor":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    const/16 v25, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    const/16 v25, -0x2

    move/from16 v0, v25

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 609
    .end local v18    # "secondaryColor":I
    :goto_7
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    .end local v13    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "textColor":I
    :cond_15
    :goto_8
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 497
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c018b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 499
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 502
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c018a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 504
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 507
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0242

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 509
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 512
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0187

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 514
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    if-eqz v21, :cond_10

    .line 518
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 538
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalLunar(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 539
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_lunar_visible"

    .line 540
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 542
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    sput-boolean v20, Lcn/nubia/calendar/CalendarViewAdapter;->mIsLunarVisible:Z

    goto/16 :goto_4

    .line 544
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalContactBirthday(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 545
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_birthday_visible"

    .line 546
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 548
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4

    .line 551
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalWesternHoliday(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 552
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_western_holiday_visible"

    .line 553
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 555
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 557
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalCalendar(Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "custom_calendar"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 561
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalContactBirthday(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 562
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_birthday_visible"

    .line 563
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 565
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 568
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->isLocalWesternHoliday(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 569
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "is_western_holiday_visible"

    .line 570
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 572
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 580
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    move/from16 v22, v0

    .restart local v22    # "textColor":I
    goto/16 :goto_5

    .line 598
    .restart local v13    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    move/from16 v18, v0

    .restart local v18    # "secondaryColor":I
    goto/16 :goto_6

    .line 605
    .end local v18    # "secondaryColor":I
    :cond_21
    const/16 v25, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    const/16 v25, -0x1

    move/from16 v0, v25

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 612
    .end local v13    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "textColor":I
    :cond_22
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v26, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 614
    .local v16, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 615
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 616
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 617
    if-nez v20, :cond_23

    .line 618
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 619
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 620
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    sget v26, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v27, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 621
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    sget v26, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v27, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 623
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getBackground(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 624
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 626
    .local v15, "newParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 627
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    move/from16 v0, v25

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 631
    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    const v25, 0x7f1101ae

    .line 633
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 634
    .local v24, "visibleCheckBox":Landroid/widget/CheckBox;
    if-eqz v24, :cond_15

    .line 635
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_8

    .line 629
    .end local v24    # "visibleCheckBox":Landroid/widget/CheckBox;
    :cond_24
    sget v25, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    move/from16 v0, v25

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9
.end method

.method public getVisible(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iget-boolean v0, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public setVisible(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "visible"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 741
    invoke-virtual {p0}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 742
    return-void

    .line 740
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

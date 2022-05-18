.class Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;
.super Ljava/lang/Object;
.source "SelectCalendarsSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabletCalendarItemBackgrounds"
.end annotation


# static fields
.field private static mBackgrounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgrounds()[I
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 180
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 215
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    .line 186
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x0

    const v2, 0x7f0200b5

    aput v2, v0, v1

    .line 188
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x1

    const v2, 0x7f0200b2

    aput v2, v0, v1

    .line 190
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x5

    const v2, 0x7f0200a6

    aput v2, v0, v1

    .line 192
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f0200a3

    aput v1, v0, v6

    .line 193
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xf

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 195
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v6

    aput v2, v0, v1

    .line 198
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f0200af

    aput v1, v0, v4

    .line 199
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xb

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 201
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x3

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v4

    aput v2, v0, v1

    .line 204
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x4

    const v2, 0x7f0200a9

    aput v2, v0, v1

    .line 206
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f0200ac

    aput v1, v0, v5

    .line 207
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xe

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 209
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 212
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const v1, 0x7f0200b8

    aput v1, v0, v3

    .line 213
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/16 v1, 0xa

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 214
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    const/4 v1, 0x2

    sget-object v2, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 215
    sget-object v0, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->mBackgrounds:[I

    goto/16 :goto_0
.end method

.class public Lcn/nubia/calendar/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ALL_DAY_TIME_MILLIS:J = 0x0L

.field public static final CALENDAR_EVENT_URI:Ljava/lang/String; = "content://com.android.calendar/events"

.field public static final WS_SIGN:Ljava/lang/String; = "ws"

.field public static final WeekendOnWorkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZH_LANGUAGE:Ljava/lang/String; = "zh"

.field public static final ZH_SIGN:Ljava/lang/String; = "zh"

.field public static final chineseFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final chineseHolidayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final westernFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcn/nubia/calendar/util/Constants;->ALL_DAY_TIME_MILLIS:J

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/Constants;->chineseHolidayMap:Ljava/util/HashMap;

    .line 21
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0101"

    const v2, 0x7f0c0235

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0115"

    const v2, 0x7f0c015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0505"

    const v2, 0x7f0c011f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0707"

    const v2, 0x7f0c011e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0815"

    const v2, 0x7f0c017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0909"

    const v2, 0x7f0c011d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh1208"

    const v2, 0x7f0c0114

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh1230"

    const v2, 0x7f0c018e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "zh0715"

    const v2, 0x7f0c024b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0101"

    const v2, 0x7f0c00f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0308"

    const v2, 0x7f0c0241

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0501"

    const v2, 0x7f0c015d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0504"

    const v2, 0x7f0c024a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0601"

    const v2, 0x7f0c00ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0801"

    const v2, 0x7f0c015b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0910"

    const v2, 0x7f0c022c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws1001"

    const v2, 0x7f0c018c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0312"

    const v2, 0x7f0c01d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0701"

    const v2, 0x7f0c015a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    .line 54
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0401"

    const v2, 0x7f0c0131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws1031"

    const v2, 0x7f0c0143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws1224"

    const v2, 0x7f0c0253

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws1225"

    const v2, 0x7f0c00ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0101"

    const v2, 0x7f0c018f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcn/nubia/calendar/util/Constants;->westernFestivalMap:Ljava/util/HashMap;

    const-string v1, "ws0214"

    const v2, 0x7f0c023b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/Constants;->WeekendOnWorkList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

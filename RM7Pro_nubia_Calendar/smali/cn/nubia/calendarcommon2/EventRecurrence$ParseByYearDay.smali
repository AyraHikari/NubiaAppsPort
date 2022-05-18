.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseByYearDay;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByYearDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 950
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByYearDay;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 953
    const/16 v1, -0x16e

    const/16 v2, 0x16e

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByYearDay;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 954
    .local v0, "byyearday":[I
    iput-object v0, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->byyearday:[I

    .line 955
    array-length v1, v0

    iput v1, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->byyeardayCount:I

    .line 956
    const/16 v1, 0x200

    return v1
.end method

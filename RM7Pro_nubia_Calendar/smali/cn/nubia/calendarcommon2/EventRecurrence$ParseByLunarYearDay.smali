.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseByLunarYearDay;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByLunarYearDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 939
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByLunarYearDay;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 942
    const/16 v1, -0x4ce

    const/16 v2, 0x4ce

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByLunarYearDay;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 943
    .local v0, "bylunaryearday":[I
    iput-object v0, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryearday:[I

    .line 944
    array-length v1, v0

    iput v1, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->bylunaryeardayCount:I

    .line 945
    const v1, 0x8000

    return v1
.end method

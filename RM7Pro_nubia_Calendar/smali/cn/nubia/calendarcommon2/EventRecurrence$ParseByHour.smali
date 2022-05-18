.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseByHour;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByHour"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 856
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByHour;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 858
    const-string v1, "wll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseByHour = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseByHour;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 860
    .local v0, "byhour":[I
    iput-object v0, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->byhour:[I

    .line 861
    array-length v1, v0

    iput v1, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->byhourCount:I

    .line 862
    const/16 v1, 0x40

    return v1
.end method

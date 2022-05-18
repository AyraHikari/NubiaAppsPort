.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseInterval;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseInterval"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 824
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseInterval;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    const/4 v3, 0x1

    .line 827
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v3}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseInterval;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->interval:I

    .line 828
    iget v0, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->interval:I

    if-ge v0, v3, :cond_0

    .line 829
    invoke-static {}, Lcn/nubia/calendarcommon2/EventRecurrence;->access$1700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Interval. Forcing INTERVAL to 1 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iput v3, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->interval:I

    .line 832
    :cond_0
    const/16 v0, 0x8

    return v0
.end method

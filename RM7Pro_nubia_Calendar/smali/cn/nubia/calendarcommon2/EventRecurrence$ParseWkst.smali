.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseWkst;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseWkst"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 988
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseWkst;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 990
    invoke-static {}, Lcn/nubia/calendarcommon2/EventRecurrence;->access$1800()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 991
    .local v0, "wkst":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 992
    new-instance v1, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid WKST value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 994
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->wkst:I

    .line 995
    const/16 v1, 0x2000

    return v1
.end method

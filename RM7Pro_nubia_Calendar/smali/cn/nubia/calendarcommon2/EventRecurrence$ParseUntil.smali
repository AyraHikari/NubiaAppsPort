.class Lcn/nubia/calendarcommon2/EventRecurrence$ParseUntil;
.super Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseUntil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 795
    invoke-direct {p0}, Lcn/nubia/calendarcommon2/EventRecurrence$ParseUntil;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcn/nubia/calendarcommon2/EventRecurrence;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    .line 807
    iput-object p1, p2, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 808
    const/4 v0, 0x2

    return v0
.end method

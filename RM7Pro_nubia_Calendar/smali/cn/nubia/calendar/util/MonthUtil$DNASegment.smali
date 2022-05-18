.class Lcn/nubia/calendar/util/MonthUtil$DNASegment;
.super Ljava/lang/Object;
.source "MonthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/MonthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DNASegment"
.end annotation


# instance fields
.field color:I

.field day:I

.field endMinute:I

.field startMinute:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/util/MonthUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/util/MonthUtil$1;

    .prologue
    .line 314
    invoke-direct {p0}, Lcn/nubia/calendar/util/MonthUtil$DNASegment;-><init>()V

    return-void
.end method

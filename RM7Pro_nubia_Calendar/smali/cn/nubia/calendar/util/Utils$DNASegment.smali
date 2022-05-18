.class Lcn/nubia/calendar/util/Utils$DNASegment;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/Utils;
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
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/util/Utils$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/util/Utils$1;

    .prologue
    .line 844
    invoke-direct {p0}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>()V

    return-void
.end method

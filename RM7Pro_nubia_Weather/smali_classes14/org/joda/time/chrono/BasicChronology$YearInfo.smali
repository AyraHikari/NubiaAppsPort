.class Lorg/joda/time/chrono/BasicChronology$YearInfo;
.super Ljava/lang/Object;
.source "BasicChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/BasicChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearInfo"
.end annotation


# instance fields
.field public final iFirstDayMillis:J

.field public final iYear:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput p1, p0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iYear:I

    .line 817
    iput-wide p2, p0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iFirstDayMillis:J

    .line 818
    return-void
.end method

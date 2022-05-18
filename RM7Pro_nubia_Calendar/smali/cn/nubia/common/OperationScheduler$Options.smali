.class public Lcn/nubia/common/OperationScheduler$Options;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/OperationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public backoffFixedMillis:J

.field public backoffIncrementalMillis:J

.field public maxMoratoriumMillis:J

.field public minTriggerMillis:J

.field public periodicIntervalMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcn/nubia/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 43
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/nubia/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 46
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcn/nubia/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    .line 49
    iput-wide v2, p0, Lcn/nubia/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 52
    iput-wide v2, p0, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 56
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcn/nubia/common/OperationScheduler$Options;->backoffFixedMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcn/nubia/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcn/nubia/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcn/nubia/common/OperationScheduler$Options;->minTriggerMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcn/nubia/common/OperationScheduler$Options;->periodicIntervalMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

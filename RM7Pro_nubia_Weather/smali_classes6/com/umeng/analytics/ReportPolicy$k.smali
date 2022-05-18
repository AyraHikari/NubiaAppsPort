.class public Lcom/umeng/analytics/ReportPolicy$k;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private final a:J

.field private b:Lu/aly/as;


# direct methods
.method public constructor <init>(Lu/aly/as;)V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 234
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$k;->a:J

    .line 238
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/as;

    .line 239
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/as;

    iget-wide v2, v2, Lu/aly/as;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

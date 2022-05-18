.class public Lb/a/a/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:F

.field private c:D

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lb/a/a/c/n;->b:F

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lb/a/a/c/n;->c:D

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lb/a/a/c/n;->a:J

    .line 5
    iput v0, p0, Lb/a/a/c/n;->b:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lb/a/a/c/n;->d:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/c/n;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/c/n;->g()V

    .line 2
    iget-wide v0, p0, Lb/a/a/c/n;->c:D

    double-to-int v0, v0

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lb/a/a/c/n;->d:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lb/a/a/c/n;->a:J

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/c/n;->b:F

    return-void
.end method

.method public e(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/c/n;->c:D

    .line 2
    invoke-virtual {p0}, Lb/a/a/c/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/c/n;->a:J

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lb/a/a/c/n;->d:I

    .line 2
    invoke-virtual {p0}, Lb/a/a/c/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/c/n;->a:J

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    iget v0, p0, Lb/a/a/c/n;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v0, p0, Lb/a/a/c/n;->c:D

    invoke-virtual {p0}, Lb/a/a/c/n;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lb/a/a/c/n;->a:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lb/a/a/c/n;->b:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lb/a/a/c/n;->c:D

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/a/a/c/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/c/n;->a:J

    return-void
.end method

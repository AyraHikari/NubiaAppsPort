.class public Lcom/android/common/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/common/ui/e;->a:I

    .line 9
    iput v0, p0, Lcom/android/common/ui/e;->b:I

    .line 10
    iput v0, p0, Lcom/android/common/ui/e;->c:I

    .line 12
    iput-boolean v0, p0, Lcom/android/common/ui/e;->d:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/common/ui/e;->e:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/android/common/ui/e;->f:J

    .line 16
    iput-wide v0, p0, Lcom/android/common/ui/e;->g:J

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 19
    iput-boolean p2, p0, Lcom/android/common/ui/e;->e:Z

    if-ltz p1, :cond_0

    .line 21
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 22
    :goto_0
    iget v0, p0, Lcom/android/common/ui/e;->c:I

    if-ne p1, v0, :cond_1

    return-void

    .line 24
    :cond_1
    iput p1, p0, Lcom/android/common/ui/e;->c:I

    if-eqz p2, :cond_5

    .line 26
    iget p1, p0, Lcom/android/common/ui/e;->a:I

    iput p1, p0, Lcom/android/common/ui/e;->b:I

    .line 27
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/ui/e;->f:J

    .line 29
    iget v0, p0, Lcom/android/common/ui/e;->c:I

    iget v1, p0, Lcom/android/common/ui/e;->a:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    add-int/lit16 v0, v0, -0x168

    :cond_3
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 36
    :goto_2
    iput-boolean v1, p0, Lcom/android/common/ui/e;->d:Z

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/common/ui/e;->g:J

    goto :goto_3

    .line 40
    :cond_5
    iput p1, p0, Lcom/android/common/ui/e;->a:I

    :goto_3
    return-void
.end method

.method public a()Z
    .locals 4

    .line 49
    iget v0, p0, Lcom/android/common/ui/e;->a:I

    iget v1, p0, Lcom/android/common/ui/e;->c:I

    if-eq v0, v1, :cond_3

    .line 50
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/android/common/ui/e;->g:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 52
    iget-wide v2, p0, Lcom/android/common/ui/e;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 53
    iget v1, p0, Lcom/android/common/ui/e;->b:I

    iget-boolean v2, p0, Lcom/android/common/ui/e;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 55
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 56
    :goto_1
    iput v1, p0, Lcom/android/common/ui/e;->a:I

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_2
    iget v0, p0, Lcom/android/common/ui/e;->c:I

    iput v0, p0, Lcom/android/common/ui/e;->a:I

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/common/ui/e;->a:I

    return v0
.end method

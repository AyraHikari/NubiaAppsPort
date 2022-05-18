.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "FinderPattern.java"


# instance fields
.field private final resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final startEnd:[I

.field private final value:I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "startEnd"    # [I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "rowNumber"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    .line 32
    iput-object p2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, p3

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Lcom/google/zxing/oned/rss/FinderPattern;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/google/zxing/oned/rss/FinderPattern;

    .line 57
    .local v0, "that":Lcom/google/zxing/oned/rss/FinderPattern;
    iget v2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    iget v3, v0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getStartEnd()[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    return v0
.end method

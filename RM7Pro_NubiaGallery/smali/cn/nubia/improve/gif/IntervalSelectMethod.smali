.class public Lcn/nubia/improve/gif/IntervalSelectMethod;
.super Ljava/lang/Object;
.source "IntervalSelectMethod.java"


# instance fields
.field private mMaxGifCount:I

.field private mOriginalSelectedPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mMaxGifCount:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mOriginalSelectedPaths:Ljava/util/ArrayList;

    return-void
.end method

.method private getNext(IF)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 56
    div-int/lit8 p2, p1, 0xa

    const/16 v0, 0xa

    .line 57
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x5

    if-lt p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    return p2
.end method


# virtual methods
.method public getMaxCount()I
    .locals 1

    .line 19
    iget v0, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mMaxGifCount:I

    return v0
.end method

.method public getOriginalSelectedPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mOriginalSelectedPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReSelectedPaths()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/nubia/improve/gif/IntervalSelectMethod;->getOriginalSelectedPaths()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcn/nubia/improve/gif/IntervalSelectMethod;->getMaxCount()I

    move-result v3

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-float v6, v1

    int-to-float v3, v3

    div-float/2addr v6, v3

    const/4 v3, 0x0

    .line 42
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v6}, Lcn/nubia/improve/gif/IntervalSelectMethod;->getNext(IF)I

    move-result v7

    if-gt v7, v1, :cond_2

    const/4 v8, 0x1

    add-int/2addr v3, v8

    if-le v7, v8, :cond_1

    add-int/lit8 v7, v7, -0x1

    .line 45
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IntervalSelectMethod consume time ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public setMaxCount(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mMaxGifCount:I

    return-void
.end method

.method public setOriginalSelectedPaths(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcn/nubia/improve/gif/IntervalSelectMethod;->mOriginalSelectedPaths:Ljava/util/ArrayList;

    return-void
.end method

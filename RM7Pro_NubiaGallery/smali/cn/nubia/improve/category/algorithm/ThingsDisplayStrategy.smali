.class public Lcn/nubia/improve/category/algorithm/ThingsDisplayStrategy;
.super Ljava/lang/Object;
.source "ThingsDisplayStrategy.java"


# static fields
.field private static final portrait:Ljava/lang/String; = "portrait"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter([F)[F
    .locals 2

    .line 15
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsGroupLabels()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/nubia/improve/category/algorithm/ThingsDisplayStrategy;->setZero([F[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private static varargs setZero([F[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 25
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 26
    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 27
    aput v1, p0, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

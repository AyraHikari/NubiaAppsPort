.class public Lcn/nubia/camera/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([FLjava/util/ArrayList;Ljava/util/ArrayList;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    const/4 p1, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    const/high16 p1, 0x43a00000    # 320.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const-string p1, "night_scene"

    .line 36
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcn/nubia/camera/b/m;->a([FLjava/util/ArrayList;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs a([FLjava/util/ArrayList;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 64
    aput v1, p0, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

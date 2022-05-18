.class public Lcn/nubia/camera/dualcameracalibration/a;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 7

    .line 67
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 72
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lcn/nubia/b/b;->m()I

    move-result v5

    if-nez v5, :cond_1

    .line 74
    invoke-virtual {v4}, Lcn/nubia/b/b;->n()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 75
    invoke-virtual {v4}, Lcn/nubia/b/b;->o()I

    move-result v4

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 77
    sput-object v3, Lcn/nubia/camera/dualcameracalibration/a;->b:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 83
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/a;->b:Ljava/lang/String;

    .line 85
    :cond_3
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 8

    .line 89
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 94
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lcn/nubia/b/b;->m()I

    move-result v6

    if-nez v6, :cond_1

    .line 96
    invoke-virtual {v5}, Lcn/nubia/b/b;->n()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 97
    invoke-virtual {v5}, Lcn/nubia/b/b;->o()I

    move-result v5

    const/16 v6, 0x100

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    .line 99
    sput-object v4, Lcn/nubia/camera/dualcameracalibration/a;->c:Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 105
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcn/nubia/camera/dualcameracalibration/a;->c:Ljava/lang/String;

    .line 107
    :cond_4
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 0

    .line 63
    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcn/nubia/camera/dualcameracalibration/f;->a(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 43
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/c;->m()Lcn/nubia/camera/dualcameracalibration/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 32
    new-instance v4, Lcn/nubia/camera/af/b;

    invoke-direct {v4, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    .line 36
    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v3

    :cond_2
    return-object v0
.end method

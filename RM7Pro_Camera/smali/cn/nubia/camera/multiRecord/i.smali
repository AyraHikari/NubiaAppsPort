.class public Lcn/nubia/camera/multiRecord/i;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 1

    .line 80
    new-instance v0, Lcn/nubia/camera/multiRecord/k;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/multiRecord/k;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 48
    invoke-static {}, Lcn/nubia/camera/multiRecord/j;->m()Lcn/nubia/camera/multiRecord/j;

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
    .locals 7

    .line 53
    new-instance p1, Lcn/nubia/camera/ac/c;

    new-instance p2, Lcn/nubia/camera/multiRecord/i$1;

    sget-object v0, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    .line 55
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    const v3, 0x7f0800b7

    const v4, 0x7f0800b7

    const v5, 0x7f0f0154

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/multiRecord/i$1;-><init>(Lcn/nubia/camera/multiRecord/i;IIIILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcn/nubia/camera/ac/c;-><init>(ZLcn/nubia/a/c;)V

    return-object p1
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 30
    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 31
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 35
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

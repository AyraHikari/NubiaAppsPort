.class public Lcn/nubia/camera/ag/e;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 1

    .line 64
    new-instance v0, Lcn/nubia/camera/ag/g;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/ag/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 32
    new-instance p1, Lcn/nubia/camera/ag/f;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcn/nubia/camera/ag/f;-><init>(I)V

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

    .line 37
    new-instance p1, Lcn/nubia/camera/ac/c;

    new-instance p2, Lcn/nubia/camera/ag/e$1;

    sget-object v0, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    .line 39
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    const v3, 0x7f0800b6

    const v4, 0x7f0800b6

    const v5, 0x7f0f0135

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/ag/e$1;-><init>(Lcn/nubia/camera/ag/e;IIIILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcn/nubia/camera/ac/c;-><init>(ZLcn/nubia/a/c;)V

    return-object p1
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 72
    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lcn/nubia/b/b;->m()I

    move-result v7

    if-nez v7, :cond_0

    .line 75
    invoke-virtual {v6}, Lcn/nubia/b/b;->n()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_0

    .line 76
    invoke-virtual {v6}, Lcn/nubia/b/b;->o()I

    move-result v6

    const/16 v7, 0x40

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    move-object v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :cond_2
    if-eqz v4, :cond_3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v2, Lcn/nubia/camera/af/b;

    invoke-direct {v2, v4, v1}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->k()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->l()Lcn/nubia/camera/af/b;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 103
    :cond_4
    invoke-super {p0}, Lcn/nubia/camera/ac/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 90
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->k()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->k()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->l()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 96
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->l()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 98
    invoke-virtual {p0}, Lcn/nubia/camera/ag/e;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    return-object v0
.end method

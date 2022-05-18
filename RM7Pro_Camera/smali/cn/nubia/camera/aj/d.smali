.class public Lcn/nubia/camera/aj/d;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 1

    .line 78
    new-instance v0, Lcn/nubia/camera/aj/g;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/aj/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 58
    invoke-static {}, Lcn/nubia/camera/aj/e;->m()Lcn/nubia/camera/aj/e;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 33
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->j()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->j()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "NX616J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->g()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p0}, Lcn/nubia/camera/aj/d;->g()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.class public Lcn/nubia/camera/pretty/f;
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

    .line 69
    new-instance v0, Lcn/nubia/camera/pretty/h;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/pretty/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 49
    invoke-static {p1}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/af/b;)Lcn/nubia/camera/pretty/g;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aQ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->h()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->h()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aQ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->h()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->h()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aQ()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->i()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->i()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/f;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    return-object v0
.end method

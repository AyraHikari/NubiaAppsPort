.class public Lcn/nubia/camera/lightpainting/c;
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
    new-instance v0, Lcn/nubia/camera/lightpainting/e;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/lightpainting/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 46
    invoke-static {}, Lcn/nubia/camera/lightpainting/d;->m()Lcn/nubia/camera/lightpainting/d;

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

    .line 51
    new-instance p1, Lcn/nubia/camera/ac/c;

    new-instance p2, Lcn/nubia/camera/lightpainting/c$1;

    sget-object v0, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    .line 53
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    const v3, 0x7f0800b5

    const v4, 0x7f0800b5

    const v5, 0x7f0f0129

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/lightpainting/c$1;-><init>(Lcn/nubia/camera/lightpainting/c;IIIILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcn/nubia/camera/ac/c;-><init>(ZLcn/nubia/a/c;)V

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

    .line 31
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0}, Lcn/nubia/camera/ac/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/c;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/c;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/c;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/c;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

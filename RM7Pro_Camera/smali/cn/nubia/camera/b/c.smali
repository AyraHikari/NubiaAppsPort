.class public Lcn/nubia/camera/b/c;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 7

    .line 60
    new-instance v6, Lcn/nubia/camera/b/e;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/b/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/b/k;)V

    return-object v6
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    .line 28
    invoke-static {}, Lcn/nubia/camera/b/d;->b()Lcn/nubia/camera/b/d;

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

    .line 33
    new-instance p1, Lcn/nubia/camera/ac/c;

    new-instance p2, Lcn/nubia/camera/b/c$1;

    sget-object v0, Lcn/nubia/camera/af/a;->N:Lcn/nubia/camera/af/a;

    .line 35
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    const v3, 0x7f0800ab

    const v4, 0x7f0800ab

    const v5, 0x7f0f0023

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/b/c$1;-><init>(Lcn/nubia/camera/b/c;IIIILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcn/nubia/camera/ac/c;-><init>(ZLcn/nubia/a/c;)V

    return-object p1
.end method

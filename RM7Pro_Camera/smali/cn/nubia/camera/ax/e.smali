.class public Lcn/nubia/camera/ax/e;
.super Lcn/nubia/camera/ax/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/camera/ax/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 7

    .line 42
    new-instance v6, Lcn/nubia/camera/ax/k;

    invoke-virtual {p3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/ax/b;

    invoke-direct {v4}, Lcn/nubia/camera/ax/b;-><init>()V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/ax/k;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/ax/b;Lcn/nubia/camera/af/a;)V

    return-object v6
.end method

.method public b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcn/nubia/camera/j;
.super Lcn/nubia/camera/ac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/ac/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 0

    const/4 p1, 0x0

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

    .line 39
    new-instance p1, Lcn/nubia/camera/j$1;

    sget-object p2, Lcn/nubia/camera/af/a;->L:Lcn/nubia/camera/af/a;

    .line 41
    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    const v3, 0x7f0800c3

    const/4 v4, 0x0

    const v5, 0x7f0f040b

    const-string v6, "cn.nubia.wlancamera;android.intent.action.MAIN;nubia.camera.family"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/j$1;-><init>(Lcn/nubia/camera/j;IIIILjava/lang/String;)V

    .line 62
    new-instance p2, Lcn/nubia/camera/ac/c;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lcn/nubia/camera/ac/c;-><init>(ZLcn/nubia/a/c;)V

    return-object p2
.end method

.class public Lcn/nubia/camera/u/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    return-void
.end method

.method public static c()Lcn/nubia/camera/u/a;
    .locals 2

    .line 45
    new-instance v0, Lcn/nubia/camera/u/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/u/a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected i_()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 37
    iget-boolean p3, p0, Lcn/nubia/camera/u/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0056

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.class public Lcn/nubia/camera/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;
    .locals 7

    .line 17
    new-instance v6, Lcn/nubia/camera/q/c;

    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/q/c;-><init>(Lcn/nubia/camera/ad/a;ZZZLandroid/view/ViewGroup;)V

    .line 18
    invoke-virtual {v6}, Lcn/nubia/camera/q/c;->a()Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v6}, Lcn/nubia/camera/q/c;->b()Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v6}, Lcn/nubia/camera/q/c;->c()Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v6}, Lcn/nubia/camera/q/c;->d()Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, v6}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/g;)V

    .line 23
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/q/i;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/e;)V

    :cond_0
    return-object v6
.end method

.method public static a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/q/c;->a()Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/a;->b(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Lcn/nubia/camera/q/c;->b()Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/a;->b(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcn/nubia/camera/q/c;->c()Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/a;->b(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lcn/nubia/camera/q/c;->d()Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/a;->b(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/a;->b(Lcn/nubia/camera/q/g;)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/q/i;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/e;)V

    :cond_1
    return-void
.end method

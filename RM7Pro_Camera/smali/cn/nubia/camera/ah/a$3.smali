.class Lcn/nubia/camera/ah/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ah/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->o(Lcn/nubia/camera/ah/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 913
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->l(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ah/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ah/e;->i()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 918
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiExposureFragment"

    const-string v1, "onOneFrameProcessDoneForUI"

    .line 921
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->o(Lcn/nubia/camera/ah/a;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 923
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->p(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 924
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;Z)Z

    .line 926
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->q(Lcn/nubia/camera/ah/a;)V

    .line 927
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v3

    invoke-static {v0, v3}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;I)V

    .line 928
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->r(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 929
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->r(Lcn/nubia/camera/ah/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->c(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->s(Lcn/nubia/camera/ah/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 933
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->t(Lcn/nubia/camera/ah/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 935
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 936
    iget-object v0, p0, Lcn/nubia/camera/ah/a$3;->a:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->i()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const-string v2, "FragmentUI"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

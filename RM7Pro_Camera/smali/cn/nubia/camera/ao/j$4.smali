.class Lcn/nubia/camera/ao/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/j;->af()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/j;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 446
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->o(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V

    .line 447
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "cam_interval"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->p(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    const v2, 0x7f0f028d

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ao/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_raw_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->l()Z

    move-result v0

    const-string v1, "afLock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->m()Z

    move-result v0

    const-string v1, "aeLock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->n()Z

    move-result v0

    const-string v1, "awbLock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->q(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/j$4;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v1}, Lcn/nubia/camera/ao/j;->r(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

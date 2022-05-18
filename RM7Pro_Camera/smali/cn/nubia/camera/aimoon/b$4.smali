.class Lcn/nubia/camera/aimoon/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aimoon/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->d(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->e(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/TeleSearchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/TeleSearchView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->g(Lcn/nubia/camera/aimoon/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->h(Lcn/nubia/camera/aimoon/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->i(Lcn/nubia/camera/aimoon/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const-string v2, "modeSwitcher"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->j(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->j(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->k(Lcn/nubia/camera/aimoon/b;)Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/b;->b(I)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "modeSwitcher"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->j(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$4;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->j(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/a;->a(Z)V

    :cond_1
    return-void
.end method

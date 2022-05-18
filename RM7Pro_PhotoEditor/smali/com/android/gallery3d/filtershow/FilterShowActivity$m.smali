.class Lcom/android/gallery3d/filtershow/FilterShowActivity$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->a:I

    const v1, 0x7f08010a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b1()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/o;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/editors/o;-><init>()V

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/editors/o;)Lcom/android/gallery3d/filtershow/editors/o;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/o;->p(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "MainPanel"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f0801bc

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/o;

    move-result-object v2

    const-string v3, "SubPanel"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

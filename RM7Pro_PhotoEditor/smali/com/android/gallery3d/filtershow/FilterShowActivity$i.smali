.class Lcom/android/gallery3d/filtershow/FilterShowActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->t1(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/editors/c;)V
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b1()V

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/o;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/o;-><init>()V

    iget v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->a:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/o;->p(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "MainPanel"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const v2, 0x7f0801bc

    const-string v3, "SubPanel"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.class Lcn/nubia/i/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/n;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/n;


# direct methods
.method constructor <init>(Lcn/nubia/i/n;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/i/n$1;->a:Lcn/nubia/i/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcn/nubia/i/n$1;->a:Lcn/nubia/i/n;

    invoke-virtual {p1}, Lcn/nubia/i/n;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 57
    sget v0, Lcn/nubia/i/q$a;->a:I

    sget v1, Lcn/nubia/i/q$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 58
    iget-object v0, p0, Lcn/nubia/i/n$1;->a:Lcn/nubia/i/n;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    iget-object p1, p0, Lcn/nubia/i/n$1;->a:Lcn/nubia/i/n;

    invoke-static {p1}, Lcn/nubia/i/n;->a(Lcn/nubia/i/n;)Lcn/nubia/i/n$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcn/nubia/i/n$1;->a:Lcn/nubia/i/n;

    invoke-static {p1}, Lcn/nubia/i/n;->a(Lcn/nubia/i/n;)Lcn/nubia/i/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/i/n$a;->a()V

    :cond_0
    return-void
.end method

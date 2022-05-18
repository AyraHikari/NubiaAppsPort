.class Lcn/nubia/camera/aw/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ad/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ad/a;

.field final synthetic b:Lcn/nubia/camera/aw/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/aw/a$1;->b:Lcn/nubia/camera/aw/a;

    iput-object p2, p0, Lcn/nubia/camera/aw/a$1;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/aw/a$1;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aw/a$1;->b:Lcn/nubia/camera/aw/a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "currentFragment"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aw/a$1;->b:Lcn/nubia/camera/aw/a;

    iget-object v0, v0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcn/nubia/camera/aw/a$1;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    return-void

    .line 99
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aw/a$1;->b:Lcn/nubia/camera/aw/a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f09008d

    iget-object v1, p0, Lcn/nubia/camera/aw/a$1;->b:Lcn/nubia/camera/aw/a;

    iget-object v1, v1, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v1, v1, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/aw/a$1;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    :cond_2
    :goto_0
    return-void
.end method

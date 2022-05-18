.class Lcn/nubia/camera/aw/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ad/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ad/a;

.field final synthetic b:Lcn/nubia/camera/af/a;

.field final synthetic c:Lcn/nubia/camera/af/a;

.field final synthetic d:Lcn/nubia/camera/aw/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iput-object p2, p0, Lcn/nubia/camera/aw/a$2;->a:Lcn/nubia/camera/ad/a;

    iput-object p3, p0, Lcn/nubia/camera/aw/a$2;->b:Lcn/nubia/camera/af/a;

    iput-object p4, p0, Lcn/nubia/camera/aw/a$2;->c:Lcn/nubia/camera/af/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/aw/a$2;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "currentFragment"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iget-object v0, v0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    if-ne p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/aw/a$2;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    return-void

    .line 181
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f09008d

    iget-object v1, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iget-object v1, v1, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v1, v1, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/aw/a$2;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/aw/a$2;->d:Lcn/nubia/camera/aw/a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p1, p1, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    iget-object p2, p0, Lcn/nubia/camera/aw/a$2;->b:Lcn/nubia/camera/af/a;

    iget-object v0, p0, Lcn/nubia/camera/aw/a$2;->c:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    :cond_2
    :goto_0
    return-void
.end method

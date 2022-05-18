.class public Lcn/nubia/video/list/ui/g;
.super Lcn/nubia/video/list/ui/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/list/ui/g$c;,
        Lcn/nubia/video/list/ui/g$b;,
        Lcn/nubia/video/list/ui/g$d;
    }
.end annotation


# instance fields
.field private r:Lcn/nubia/video/commonui/app/f;

.field private s:Lcn/nubia/video/commonui/app/b;

.field private t:Lb/a/b/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/e/a<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;-><init>()V

    .line 2
    new-instance v0, Lcn/nubia/video/list/ui/g$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/list/ui/g$d;-><init>(Lcn/nubia/video/list/ui/g;Lcn/nubia/video/list/ui/g$a;)V

    iput-object v0, p0, Lcn/nubia/video/list/ui/g;->u:Landroid/os/Handler;

    return-void
.end method

.method static synthetic W(Lcn/nubia/video/list/ui/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/g;->f0()V

    return-void
.end method

.method static synthetic X(Lcn/nubia/video/list/ui/g;)Lcn/nubia/video/commonui/app/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/g;->r:Lcn/nubia/video/commonui/app/f;

    return-object p0
.end method

.method static synthetic Y(Lcn/nubia/video/list/ui/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/g;->c0(I)V

    return-void
.end method

.method static synthetic Z(Lcn/nubia/video/list/ui/g;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/list/ui/g;->b0(II)V

    return-void
.end method

.method private a0(I)Lcn/nubia/video/commonui/app/f;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/g;->f0()V

    .line 2
    new-instance v0, Lcn/nubia/video/commonui/app/f;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/video/commonui/app/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f0f0041

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {v0, v2}, Lcn/nubia/video/commonui/app/f;->u(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/f;->w(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/f;->A(I)V

    return-object v0
.end method

.method private b0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private c0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->u:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->t:Lb/a/b/e/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lb/a/b/e/a;->cancel()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->t:Lb/a/b/e/a;

    invoke-interface {v0}, Lb/a/b/e/a;->a()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->r:Lcn/nubia/video/commonui/app/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcn/nubia/video/list/ui/g;->r:Lcn/nubia/video/commonui/app/f;

    .line 7
    :cond_0
    iput-object v1, p0, Lcn/nubia/video/list/ui/g;->t:Lb/a/b/e/a;

    :cond_1
    return-void
.end method


# virtual methods
.method protected R(I)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/video/list/ui/f;->R(I)V

    .line 2
    new-instance v0, Lcn/nubia/video/list/ui/g$b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/video/list/ui/g$b;-><init>(Lcn/nubia/video/list/ui/g;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v3, 0x7f0e0000

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 4
    :goto_0
    new-instance v3, Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0036

    .line 5
    invoke-virtual {v3, v4, v1}, Lcn/nubia/video/commonui/app/b$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 6
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f0c0021

    const v5, 0x7f09005f

    invoke-direct {p1, v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v0}, Lcn/nubia/video/commonui/app/b$a;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 7
    invoke-virtual {v3}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/list/ui/g;->s:Lcn/nubia/video/commonui/app/b;

    return-void
.end method

.method public d0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/list/ui/f;->p:I

    return-void
.end method

.method protected e0(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/g;->a0(I)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/list/ui/g;->r:Lcn/nubia/video/commonui/app/f;

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 3
    new-instance v0, Lcn/nubia/video/list/ui/g$c;

    invoke-direct {v0, p0, p1}, Lcn/nubia/video/list/ui/g$c;-><init>(Lcn/nubia/video/list/ui/g;I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/list/app/a;

    .line 5
    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->c()Lb/a/b/e/d;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/a/b/e/d;->a(Lb/a/b/e/d$c;Lb/a/b/e/b;)Lb/a/b/e/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/list/ui/g;->t:Lb/a/b/e/a;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g;->s:Lcn/nubia/video/commonui/app/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/g;->s:Lcn/nubia/video/commonui/app/b;

    .line 4
    :cond_0
    invoke-super {p0}, Lcn/nubia/video/list/ui/f;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/g;->f0()V

    .line 2
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/f;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/video/list/ui/f;->V(I)V

    :cond_0
    return-void
.end method

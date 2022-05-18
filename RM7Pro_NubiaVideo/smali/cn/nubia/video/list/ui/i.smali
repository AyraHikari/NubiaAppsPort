.class public abstract Lcn/nubia/video/list/ui/i;
.super Lcn/nubia/video/list/ui/j;
.source "SourceFile"


# instance fields
.field protected c:Lcn/nubia/video/commonui/app/e;

.field private d:Landroid/view/View;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/i;->c:Lcn/nubia/video/commonui/app/e;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/list/ui/i;->e:Z

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/list/ui/i;->f:Z

    return-void
.end method

.method private B()V
    .locals 0

    return-void
.end method

.method static synthetic w(Lcn/nubia/video/list/ui/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;->B()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/i;->c:Lcn/nubia/video/commonui/app/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/e;->m()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/i;->c:Lcn/nubia/video/commonui/app/e;

    :cond_0
    return-void
.end method


# virtual methods
.method protected A(Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/list/ui/i;->e:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f0037

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public abstract C(Landroid/graphics/Bitmap;)V
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;->x()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onResume()V

    const-string v0, "VerticalViewFragment"

    const-string v1, "onResume"

    .line 2
    invoke-static {v0, v1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v0}, Lb/a/b/c/b/f;->K()V

    :cond_0
    return-void
.end method

.method public y(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/i;->c:Lcn/nubia/video/commonui/app/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;->x()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;->B()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected z(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcn/nubia/video/list/ui/i;->d:Landroid/view/View;

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/list/ui/i;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcn/nubia/video/list/ui/i$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/i$a;-><init>(Lcn/nubia/video/list/ui/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcn/nubia/video/commonui/app/b;
.super Lcn/nubia/video/commonui/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/commonui/app/b$a;
    }
.end annotation


# instance fields
.field private f:Lcn/nubia/video/commonui/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcn/nubia/video/commonui/app/b;->f(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/video/commonui/app/b;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/commonui/app/b;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcn/nubia/video/commonui/app/b;->f(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/video/commonui/app/d;-><init>(Landroid/content/Context;IZ)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "alwaysReadCloseOnTouchAttr"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lb/a/b/a/i;->d(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p1, p2, p0, p3}, Lcn/nubia/video/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/video/commonui/app/b;)Lcn/nubia/video/commonui/app/AlertController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    return-object p0
.end method

.method private e(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method static f(Landroid/content/Context;I)I
    .locals 2

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    .line 1
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/AlertController;->E(I)V

    return-void
.end method

.method public h(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/video/commonui/app/AlertController;->G(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/video/commonui/app/b;->h(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public j(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/AlertController;->O(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/AlertController;->S(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/AlertController;->w()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/video/commonui/app/AlertController;->z(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/video/commonui/app/AlertController;->A(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/b;->f:Lcn/nubia/video/commonui/app/AlertController;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/AlertController;->Q(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/b;->e(Landroid/view/Window;)V

    return-void
.end method

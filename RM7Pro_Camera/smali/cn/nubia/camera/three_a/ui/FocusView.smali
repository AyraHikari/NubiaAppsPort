.class public Lcn/nubia/camera/three_a/ui/FocusView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/FocusView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcn/nubia/camera/three_a/ui/FocusView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusView;->c:Lcn/nubia/camera/three_a/ui/FocusView$a;

    .line 32
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/FocusView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/FocusView;->b:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080138

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/FocusView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080138

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/FocusView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080137

    .line 64
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/FocusView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusView;->c:Lcn/nubia/camera/three_a/ui/FocusView$a;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/FocusView$a;->n_()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFocusViewStateChangeListener(Lcn/nubia/camera/three_a/ui/FocusView$a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusView;->c:Lcn/nubia/camera/three_a/ui/FocusView$a;

    return-void
.end method

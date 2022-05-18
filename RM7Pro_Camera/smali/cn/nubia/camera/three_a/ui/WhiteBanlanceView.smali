.class public Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080152

    .line 45
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080151

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;->z()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWhiteBanlanceViewStateChangeListener(Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/WhiteBanlanceView;->a:Lcn/nubia/camera/three_a/ui/WhiteBanlanceView$a;

    return-void
.end method

.class public Lcn/nubia/camera/three_a/ui/ExposureView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/ExposureView$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/three_a/ui/ExposureView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/ExposureView;->a:Lcn/nubia/camera/three_a/ui/ExposureView$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080135

    .line 44
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/ExposureView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080134

    .line 46
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/ExposureView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/ExposureView;->a:Lcn/nubia/camera/three_a/ui/ExposureView$a;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/ExposureView$a;->m_()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExposureViewStateChangeListener(Lcn/nubia/camera/three_a/ui/ExposureView$a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/ExposureView;->a:Lcn/nubia/camera/three_a/ui/ExposureView$a;

    return-void
.end method

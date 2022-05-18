.class public Lcn/nubia/notepad/imagepreview/EclairMotionEvent;
.super Lcn/nubia/notepad/imagepreview/WrapMotionEvent;
.source "EclairMotionEvent.java"


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getPointerCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

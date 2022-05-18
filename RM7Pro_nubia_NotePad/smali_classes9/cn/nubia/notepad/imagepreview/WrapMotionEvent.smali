.class public Lcn/nubia/notepad/imagepreview/WrapMotionEvent;
.super Ljava/lang/Object;
.source "WrapMotionEvent.java"


# instance fields
.field protected event:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    .line 28
    return-void
.end method

.method private verifyPointerIndex(I)V
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 70
    if-lez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pointer index for Donut/Cupcake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public static wrap(Landroid/view/MotionEvent;)Lcn/nubia/notepad/imagepreview/WrapMotionEvent;
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/imagepreview/EclairMotionEvent;-><init>(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/VerifyError;
    new-instance v1, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY()F

    move-result v0

    return v0
.end method

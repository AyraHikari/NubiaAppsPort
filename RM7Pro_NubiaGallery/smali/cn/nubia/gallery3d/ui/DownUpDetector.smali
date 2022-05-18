.class public Lcn/nubia/gallery3d/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mListener:Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;

    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mStillDown:Z

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mListener:Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mListener:Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/DownUpDetector;->mStillDown:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0, v1, p1}, Lcn/nubia/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.class public Lcn/nubia/gallery3d/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;,
        Lcn/nubia/gallery3d/ui/GestureRecognizer$MyScaleListener;,
        Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;,
        Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field private final mDownUpDetector:Lcn/nubia/gallery3d/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mListener:Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    .line 50
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;Lcn/nubia/gallery3d/ui/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 52
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyScaleListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyScaleListener;-><init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;Lcn/nubia/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 54
    new-instance p1, Lcn/nubia/gallery3d/ui/DownUpDetector;

    new-instance p2, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {p2, p0, v1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;Lcn/nubia/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/DownUpDetector;-><init>(Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcn/nubia/gallery3d/ui/DownUpDetector;

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mListener:Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    return-object p0
.end method


# virtual methods
.method public cancelScale()V
    .locals 8

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 69
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isDown()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcn/nubia/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcn/nubia/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

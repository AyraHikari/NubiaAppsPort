.class Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;Lcn/nubia/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onLongPress(FF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 101
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    move v1, p3

    move v2, p4

    invoke-interface/range {v0 .. v6}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFFFF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result p1

    return p1
.end method

.class public Lcn/nubia/collage/ui/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/ui/e$c;,
        Lcn/nubia/collage/ui/e$e;,
        Lcn/nubia/collage/ui/e$d;,
        Lcn/nubia/collage/ui/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field private final b:Landroid/view/ScaleGestureDetector;

.field private final c:Lcn/nubia/collage/ui/d;

.field private final d:Lcn/nubia/collage/ui/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/collage/ui/e$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/nubia/collage/ui/e;->d:Lcn/nubia/collage/ui/e$b;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcn/nubia/collage/ui/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/ui/e$d;-><init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcn/nubia/collage/ui/e;->a:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcn/nubia/collage/ui/e$e;

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/ui/e$e;-><init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcn/nubia/collage/ui/e;->b:Landroid/view/ScaleGestureDetector;

    new-instance p1, Lcn/nubia/collage/ui/d;

    new-instance p2, Lcn/nubia/collage/ui/e$c;

    invoke-direct {p2, p0, v1}, Lcn/nubia/collage/ui/e$c;-><init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V

    invoke-direct {p1, p2}, Lcn/nubia/collage/ui/d;-><init>(Lcn/nubia/collage/ui/d$a;)V

    iput-object p1, p0, Lcn/nubia/collage/ui/e;->c:Lcn/nubia/collage/ui/d;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/e;->d:Lcn/nubia/collage/ui/e$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcn/nubia/collage/ui/e;->a:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p2, p0, Lcn/nubia/collage/ui/e;->c:Lcn/nubia/collage/ui/d;

    invoke-virtual {p2, p1}, Lcn/nubia/collage/ui/d;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/nubia/collage/ui/e;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

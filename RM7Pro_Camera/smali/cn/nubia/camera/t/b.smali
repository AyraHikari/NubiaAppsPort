.class public Lcn/nubia/camera/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/t/b$b;,
        Lcn/nubia/camera/t/b$d;,
        Lcn/nubia/camera/t/b$c;,
        Lcn/nubia/camera/t/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field private final b:Landroid/view/ScaleGestureDetector;

.field private final c:Lcn/nubia/camera/t/a;

.field private final d:Lcn/nubia/camera/t/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/t/b$a;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcn/nubia/camera/t/b;->d:Lcn/nubia/camera/t/b$a;

    .line 58
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcn/nubia/camera/t/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/t/b$c;-><init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcn/nubia/camera/t/b;->a:Landroid/view/GestureDetector;

    .line 60
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcn/nubia/camera/t/b$d;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/t/b$d;-><init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcn/nubia/camera/t/b;->b:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance p1, Lcn/nubia/camera/t/a;

    new-instance p2, Lcn/nubia/camera/t/b$b;

    invoke-direct {p2, p0, v1}, Lcn/nubia/camera/t/b$b;-><init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V

    invoke-direct {p1, p2}, Lcn/nubia/camera/t/a;-><init>(Lcn/nubia/camera/t/a$a;)V

    iput-object p1, p0, Lcn/nubia/camera/t/b;->c:Lcn/nubia/camera/t/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/t/b;->d:Lcn/nubia/camera/t/b$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/t/b;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/t/b;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/t/b;->c:Lcn/nubia/camera/t/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/t/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

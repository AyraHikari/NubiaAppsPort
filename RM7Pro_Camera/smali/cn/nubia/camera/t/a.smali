.class public Lcn/nubia/camera/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/t/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/nubia/camera/t/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/t/a$a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/camera/t/a;->b:Lcn/nubia/camera/t/a$a;

    return-void
.end method

.method private a(ZLandroid/view/MotionEvent;)V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcn/nubia/camera/t/a;->a:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 25
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/camera/t/a;->a:Z

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcn/nubia/camera/t/a;->b:Lcn/nubia/camera/t/a$a;

    invoke-interface {p1, p2}, Lcn/nubia/camera/t/a$a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/t/a;->b:Lcn/nubia/camera/t/a$a;

    invoke-interface {p1, p2}, Lcn/nubia/camera/t/a$a;->b(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 34
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

    .line 42
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/t/a;->a(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0, v1, p1}, Lcn/nubia/camera/t/a;->a(ZLandroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

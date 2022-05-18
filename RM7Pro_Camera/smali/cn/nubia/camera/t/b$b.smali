.class Lcn/nubia/camera/t/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/t/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/t/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/t/b;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/t/b$b;->a:Lcn/nubia/camera/t/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/t/b;Lcn/nubia/camera/t/b$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcn/nubia/camera/t/b$b;-><init>(Lcn/nubia/camera/t/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/t/b$b;->a:Lcn/nubia/camera/t/b;

    invoke-static {v0}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/camera/t/b$a;->b(FF)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcn/nubia/camera/t/b$b;->a:Lcn/nubia/camera/t/b;

    invoke-static {p1}, Lcn/nubia/camera/t/b;->a(Lcn/nubia/camera/t/b;)Lcn/nubia/camera/t/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/t/b$a;->v()V

    return-void
.end method

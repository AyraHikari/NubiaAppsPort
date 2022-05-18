.class Lcn/nubia/collage/ui/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/e;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/e$c;->a:Lcn/nubia/collage/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/ui/e;Lcn/nubia/collage/ui/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/e$c;-><init>(Lcn/nubia/collage/ui/e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcn/nubia/collage/ui/e$c;->a:Lcn/nubia/collage/ui/e;

    invoke-static {p1}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/collage/ui/e$b;->f()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/e$c;->a:Lcn/nubia/collage/ui/e;

    invoke-static {v0}, Lcn/nubia/collage/ui/e;->a(Lcn/nubia/collage/ui/e;)Lcn/nubia/collage/ui/e$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/collage/ui/e$b;->g(FF)V

    return-void
.end method

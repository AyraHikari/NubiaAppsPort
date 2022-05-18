.class Lcn/nubia/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 460
    iput p1, p0, Lcn/nubia/a/b$b;->b:I

    .line 461
    iput p1, p0, Lcn/nubia/a/b$b;->c:I

    .line 462
    iput p1, p0, Lcn/nubia/a/b$b;->d:I

    .line 463
    iput p1, p0, Lcn/nubia/a/b$b;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/a/b;Lcn/nubia/a/b$1;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Lcn/nubia/a/b$b;-><init>(Lcn/nubia/a/b;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto/16 :goto_1

    .line 473
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcn/nubia/a/b$b;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/a/b$b;->d:I

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcn/nubia/a/b$b;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/a/b$b;->e:I

    goto :goto_1

    .line 478
    :cond_1
    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    invoke-virtual {p1}, Lcn/nubia/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcn/nubia/a/b$b;->d:I

    .line 479
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x32

    if-ge p1, p2, :cond_2

    iget p1, p0, Lcn/nubia/a/b$b;->e:I

    .line 480
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    .line 481
    invoke-static {p1}, Lcn/nubia/a/b;->h(Lcn/nubia/a/b;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    .line 482
    invoke-static {p1}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    .line 483
    invoke-virtual {p1}, Lcn/nubia/a/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 485
    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 486
    iget-object p1, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/a/b$b;->a:Lcn/nubia/a/b;

    invoke-static {p2}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object p2

    iget-object p2, p2, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {p1, p2}, Lcn/nubia/a/e;->b(Lcn/nubia/a/c;)Z

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/a/b$b;->b:I

    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/a/b$b;->c:I

    :cond_4
    :goto_1
    return v0
.end method

.class Lcn/nubia/camera/pretty/d$c;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/pretty/d;Ljava/lang/String;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$c;->a:Lcn/nubia/camera/pretty/d;

    .line 797
    invoke-direct {p0, p3, p4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 798
    iput-object p4, p0, Lcn/nubia/camera/pretty/d$c;->b:Landroid/view/View;

    .line 799
    iput-object p2, p0, Lcn/nubia/camera/pretty/d$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 804
    instance-of v0, p1, Lcn/nubia/camera/pretty/d$c;

    if-eqz v0, :cond_1

    .line 805
    check-cast p1, Lcn/nubia/camera/pretty/d$c;

    iget-object p1, p1, Lcn/nubia/camera/pretty/d$c;->b:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/camera/pretty/d$c;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 807
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 813
    invoke-super {p0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

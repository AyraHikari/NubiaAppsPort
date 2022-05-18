.class Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/TouchDelegate;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;Landroid/view/View;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->b:Ljava/util/ArrayList;

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->c:Landroid/view/TouchDelegate;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->c:Landroid/view/TouchDelegate;

    .line 95
    iput-object v2, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->c:Landroid/view/TouchDelegate;

    move-object v2, v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/TouchDelegate;

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    iput-object v3, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->c:Landroid/view/TouchDelegate;

    return v1

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {v2, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

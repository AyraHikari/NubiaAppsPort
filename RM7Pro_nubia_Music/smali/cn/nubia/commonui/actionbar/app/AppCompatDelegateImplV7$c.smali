.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;
.super Landroid/widget/FrameLayout;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    .line 1775
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1776
    return-void
.end method

.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 1803
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1786
    if-nez v0, :cond_0

    .line 1787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1789
    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V

    .line 1791
    const/4 v0, 0x1

    .line 1794
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1800
    return-void
.end method

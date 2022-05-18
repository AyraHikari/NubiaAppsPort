.class public Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;

    invoke-interface {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;->g()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setmTouchListener(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;

    return-void
.end method

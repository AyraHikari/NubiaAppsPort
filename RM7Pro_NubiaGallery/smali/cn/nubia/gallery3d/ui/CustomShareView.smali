.class public Lcn/nubia/gallery3d/ui/CustomShareView;
.super Landroid/widget/LinearLayout;
.source "CustomShareView.java"


# instance fields
.field mOnKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomShareView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomShareView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomShareView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomShareView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomShareView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 38
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

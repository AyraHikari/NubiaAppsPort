.class public Lcn/nubia/cloud/ui/CloudLoginView;
.super Landroid/widget/RelativeLayout;
.source "CloudLoginView.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLoginButton:Landroid/widget/Button;

.field mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final mRoot:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLoginButton:Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mTextView:Landroid/widget/TextView;

    .line 29
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mRoot:Landroid/view/ViewGroup;

    const p2, 0x7f0c0038

    .line 31
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09006f

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudLoginView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLoginButton:Landroid/widget/Button;

    const p1, 0x7f090071

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudLoginView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setBottonGone()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudLoginView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudLoginView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setLoginButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientationLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public setTextViewShowEmpty()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f10005f

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudLoginView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.class public Lcn/nubia/gallery3d/ui/HintViewLayout;
.super Landroid/widget/RelativeLayout;
.source "HintViewLayout.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mHintText:Landroid/widget/TextView;

.field private mLogo:Landroid/widget/ImageView;

.field private final mRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/view/ViewGroup;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mContext:Landroid/content/Context;

    .line 29
    iput-object p5, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mRoot:Landroid/view/ViewGroup;

    const p5, 0x7f0c003a

    .line 30
    invoke-static {p1, p5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900a9

    .line 31
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mLogo:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p1, 0x7f0900aa

    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mHintText:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0900a8

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mButton:Landroid/widget/Button;

    if-eqz p4, :cond_1

    .line 39
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/HintViewLayout;->setButtonVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HintViewLayout;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

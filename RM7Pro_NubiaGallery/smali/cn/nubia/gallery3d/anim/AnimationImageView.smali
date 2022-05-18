.class public Lcn/nubia/gallery3d/anim/AnimationImageView;
.super Landroid/widget/LinearLayout;
.source "AnimationImageView.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/anim/AnimationImageView;->initImage(I)V

    return-void
.end method

.method private initImage(I)V
    .locals 2

    .line 32
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mImage:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    iget-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public initView(IIILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/anim/AnimationImageView;->setBackgroundColor(I)V

    const/16 v0, 0x11

    .line 40
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/anim/AnimationImageView;->setGravity(I)V

    .line 42
    iget-object v0, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p4}, Lcn/nubia/gallery3d/anim/AnimationImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p4, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    .line 45
    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 47
    iget-object p4, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x18

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    iget-object p4, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, p4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 51
    iget-object p3, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iget-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    iget-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public startImageAnimation()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcn/nubia/gallery3d/anim/AnimationImageView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

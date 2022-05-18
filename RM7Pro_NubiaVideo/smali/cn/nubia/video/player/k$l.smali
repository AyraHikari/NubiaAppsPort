.class Lcn/nubia/video/player/k$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/k;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/k$l;->a:Lcn/nubia/video/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/k;Lcn/nubia/video/player/k$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/k$l;-><init>(Lcn/nubia/video/player/k;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/k$l;->a:Lcn/nubia/video/player/k;

    iget-object p1, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/k$l;->a:Lcn/nubia/video/player/k;

    iget-object p1, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/k$l;->a:Lcn/nubia/video/player/k;

    iget-object p1, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/k$l;->a:Lcn/nubia/video/player/k;

    iget-object p1, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

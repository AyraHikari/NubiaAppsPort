.class Lcn/nubia/video/commonui/app/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/e;->D(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/e;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e$e;->a:Lcn/nubia/video/commonui/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e$e;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/e;->e(Lcn/nubia/video/commonui/app/e;)Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

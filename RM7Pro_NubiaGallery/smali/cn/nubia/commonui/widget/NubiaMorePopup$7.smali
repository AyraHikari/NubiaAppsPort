.class Lcn/nubia/commonui/widget/NubiaMorePopup$7;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$7;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$7;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    .line 629
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

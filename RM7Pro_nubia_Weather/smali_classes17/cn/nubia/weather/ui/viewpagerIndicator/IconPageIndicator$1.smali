.class Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;
.super Ljava/lang/Object;
.source "IconPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->animateToIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->this$0:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    iput-object p2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->this$0:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 70
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->this$0:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->smoothScrollTo(II)V

    .line 71
    iget-object v1, p0, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator$1;->this$0:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->access$002(Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 72
    return-void
.end method

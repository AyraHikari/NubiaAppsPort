.class Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;Lcn/nubia/weather/ui/view/BounceBackViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;
    .param p2, "x1"    # Lcn/nubia/weather/ui/view/BounceBackViewPager$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 185
    :cond_0
    if-nez p1, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$702(Lcn/nubia/weather/ui/view/BounceBackViewPager;F)F

    .line 188
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0, p1}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$302(Lcn/nubia/weather/ui/view/BounceBackViewPager;I)I

    .line 166
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0, p2}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$702(Lcn/nubia/weather/ui/view/BounceBackViewPager;F)F

    .line 168
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$000(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V

    .line 169
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcn/nubia/weather/ui/view/BounceBackViewPager;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 177
    :cond_0
    return-void
.end method

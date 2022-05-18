.class Lcom/zte/mifavor/widget/PagerSecond$PageListener;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Lcom/zte/mifavor/widget/PagerSecond$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/PagerSecond;->access$700(Lcom/zte/mifavor/widget/PagerSecond;II)V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 970
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$402(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 949
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$400(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$602(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 950
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond;->access$1102(Lcom/zte/mifavor/widget/PagerSecond;F)F

    .line 952
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$1200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 953
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 952
    invoke-static {v0, p1, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$700(Lcom/zte/mifavor/widget/PagerSecond;II)V

    .line 955
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 957
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 958
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$1302(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 977
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$602(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 978
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 981
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {p0}, Lcom/zte/mifavor/widget/PagerSecond;->access$1400(Lcom/zte/mifavor/widget/PagerSecond;)V

    return-void
.end method

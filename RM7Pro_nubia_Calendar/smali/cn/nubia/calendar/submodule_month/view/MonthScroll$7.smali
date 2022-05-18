.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initMonthView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 417
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 459
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->resetTranslationX()V

    .line 461
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    .line 464
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->bounceBack()V

    .line 469
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 455
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/16 v3, 0x8

    .line 422
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;I)V

    .line 423
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V

    .line 424
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    if-ge v2, p1, :cond_0

    .line 425
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->bounceTo()V

    .line 428
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    if-le v2, p1, :cond_1

    .line 429
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->bounceTo()V

    .line 432
    :cond_1
    iget v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->mPosition:I

    if-ne p1, v2, :cond_2

    .line 433
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->bounceBack()V

    .line 436
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$900(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_3
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "showList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->setDataList(Ljava/util/List;)V

    .line 446
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$7;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

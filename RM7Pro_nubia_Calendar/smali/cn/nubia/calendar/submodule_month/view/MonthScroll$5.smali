.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initMonthView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

.field final synthetic val$mExpanTopViewPager2:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

.field final synthetic val$monthViewAdapter2:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 341
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$monthViewAdapter2:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    iput-object p3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$mExpanTopViewPager2:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$monthViewAdapter2:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$mExpanTopViewPager2:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$monthViewAdapter2:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;->setShowLayze(Z)V

    .line 347
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$mExpanTopViewPager2:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$monthViewAdapter2:Lcn/nubia/calendar/submodule_month/view/MonthViewAdapter;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 349
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mToday:Landroid/text/format/Time;

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/text/format/Time;)I

    move-result v1

    .line 350
    .local v1, "monthViewPageNum":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$5;->val$mExpanTopViewPager2:Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1    # "monthViewPageNum":I
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class Lcn/nubia/calendar/submodule_year/view/YearFragment$1;
.super Ljava/lang/Object;
.source "YearFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_year/view/YearFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_year/view/YearFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$000(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->getSelectCalendar2(I)Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$102(Lcn/nubia/calendar/submodule_year/view/YearFragment;I)I

    .line 68
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$200(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$100(Lcn/nubia/calendar/submodule_year/view/YearFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setYearForYearMode(I)V

    .line 69
    return-void
.end method

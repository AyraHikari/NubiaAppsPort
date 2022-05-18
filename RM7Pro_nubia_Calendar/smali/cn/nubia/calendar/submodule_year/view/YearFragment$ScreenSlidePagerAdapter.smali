.class Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "YearFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_year/view/YearFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_year/view/YearFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .line 102
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x44

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 107
    new-instance v0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .line 108
    invoke-static {v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$300(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$200(Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;-><init>(ILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 109
    .local v0, "calendarMonthFragment":Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/YearFragment$ScreenSlidePagerAdapter;->this$0:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->access$400(Lcn/nubia/calendar/submodule_year/view/YearFragment;)[Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    move-result-object v1

    aput-object v0, v1, p1

    .line 110
    return-object v0
.end method

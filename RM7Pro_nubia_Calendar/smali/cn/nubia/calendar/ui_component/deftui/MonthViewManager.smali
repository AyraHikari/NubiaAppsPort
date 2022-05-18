.class public Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;
.super Ljava/lang/Object;
.source "MonthViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonthViewManager"


# instance fields
.field private mMonthViewFragmentMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 1
    .param p1, "model"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mMonthViewFragmentMaps:Ljava/util/HashMap;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 17
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 18
    return-void
.end method


# virtual methods
.method public get(I)Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 21
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mMonthViewFragmentMaps:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .line 23
    .local v0, "frag":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    return-object v0
.end method

.method public getMonthViewCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mMonthViewFragmentMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public put(ILcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "frag"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {p2, v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->setWorkingModel(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->mMonthViewFragmentMaps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

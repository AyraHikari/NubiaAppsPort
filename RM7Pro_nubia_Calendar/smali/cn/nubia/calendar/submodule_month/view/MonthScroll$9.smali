.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Lcom/nubia/nucms/api/NuCmsModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;->showInfoAndRequestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nubia/nucms/api/NuCmsModelCallback",
        "<",
        "Lcom/nubia/nucms/bean/NuCmsSportsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 859
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 889
    return-void
.end method

.method public onSuccess(Lcom/nubia/nucms/bean/NuCmsSportsBean;)V
    .locals 6
    .param p1, "nuCmsSportsBean"    # Lcom/nubia/nucms/bean/NuCmsSportsBean;

    .prologue
    .line 863
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsBean;->getData()Lcom/nubia/nucms/bean/NuCmsSportsData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsBean;->getData()Lcom/nubia/nucms/bean/NuCmsSportsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/nucms/bean/NuCmsSportsData;->getMatchList()Ljava/util/List;

    move-result-object v2

    .line 865
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    if-nez v2, :cond_1

    .line 885
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    :cond_0
    return-void

    .line 868
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 869
    invoke-static {v4}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 870
    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    .line 868
    invoke-static {v3, v4, v5}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getDataString(III)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "currentTimeDay":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->val$data:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurWorkingMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 873
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 874
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 875
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->setDataList(Ljava/util/List;)V

    .line 880
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 881
    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v4, v3}, Lcn/nubia/SportsGameEvents/SportsDB;->updateData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    .locals 0

    .prologue
    .line 859
    check-cast p1, Lcom/nubia/nucms/bean/NuCmsSportsBean;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$9;->onSuccess(Lcom/nubia/nucms/bean/NuCmsSportsBean;)V

    return-void
.end method

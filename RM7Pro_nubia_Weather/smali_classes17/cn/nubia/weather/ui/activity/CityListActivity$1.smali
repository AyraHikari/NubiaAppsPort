.class Lcn/nubia/weather/ui/activity/CityListActivity$1;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Lcn/nubia/weather/ui/view/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 389
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$102(Lcn/nubia/weather/ui/activity/CityListActivity;Z)Z

    .line 394
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string v1, "CityListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drag No."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " To No."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    .line 398
    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    if-eq p1, p2, :cond_0

    .line 400
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->dragTo(II)V

    .line 401
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "city":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/utils/ReYunUtils;->onChangeCityOrder(Ljava/lang/String;II)V

    .line 403
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Lcn/nubia/weather/data/DataCenter;->dragTo(II)V

    goto/16 :goto_0

    .line 406
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcn/nubia/weather/data/DataCenter;->dragTo(II)V

    goto/16 :goto_0
.end method

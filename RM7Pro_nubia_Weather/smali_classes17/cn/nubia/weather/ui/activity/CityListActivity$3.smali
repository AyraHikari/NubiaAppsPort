.class Lcn/nubia/weather/ui/activity/CityListActivity$3;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;->onClick(Landroid/view/View;)V
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
    .line 778
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 781
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$900(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    .line 782
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1000(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    .line 783
    return-void
.end method

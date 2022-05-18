.class Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    .prologue
    .line 472
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 476
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iget-object v0, v0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$102(Lcn/nubia/weather/ui/activity/CityListActivity;Z)Z

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.class Lcn/nubia/weather/ui/activity/CityAddActivity$2;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$2;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 271
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 259
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 260
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$2;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$2;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$300(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

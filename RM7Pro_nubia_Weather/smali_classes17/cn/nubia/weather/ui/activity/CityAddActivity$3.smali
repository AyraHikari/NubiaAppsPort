.class Lcn/nubia/weather/ui/activity/CityAddActivity$3;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 274
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$3;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$300(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 283
    :cond_0
    return v3
.end method

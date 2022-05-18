.class Lcn/nubia/calendar/settings/NewCitiesActivity$2;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 519
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$2;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 522
    if-nez p2, :cond_0

    .line 523
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$2;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 524
    .local v0, "ipm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 525
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$2;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 528
    .end local v0    # "ipm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

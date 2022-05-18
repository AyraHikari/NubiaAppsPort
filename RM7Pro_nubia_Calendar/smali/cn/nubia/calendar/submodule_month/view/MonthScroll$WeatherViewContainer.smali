.class public Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;
.super Ljava/lang/Object;
.source "MonthScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherViewContainer"
.end annotation


# instance fields
.field public city:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public interval:Landroid/widget/TextView;

.field public lunarText:Landroid/widget/TextView;

.field public lunarView:Landroid/view/View;

.field public mainView:Landroid/view/View;

.field public noDate:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

.field public tmp:Landroid/widget/TextView;

.field public type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 1271
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMainViewVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2600(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    .line 1284
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2700(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->city:Landroid/widget/TextView;

    .line 1285
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2800(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->tmp:Landroid/widget/TextView;

    .line 1286
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2900(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->type:Landroid/widget/TextView;

    .line 1287
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$3000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->icon:Landroid/widget/ImageView;

    .line 1288
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$3100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->interval:Landroid/widget/TextView;

    .line 1289
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$3200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->lunarView:Landroid/view/View;

    .line 1290
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$3300(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->lunarText:Landroid/widget/TextView;

    .line 1291
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$3400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->noDate:Landroid/widget/TextView;

    .line 1292
    return-void
.end method

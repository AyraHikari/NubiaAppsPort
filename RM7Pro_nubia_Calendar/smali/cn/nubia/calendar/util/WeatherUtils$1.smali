.class final Lcn/nubia/calendar/util/WeatherUtils$1;
.super Ljava/lang/Object;
.source "WeatherUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/util/WeatherUtils;->setWeatherView(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcn/nubia/calendar/util/WeatherUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 435
    :try_start_0
    const-string v3, "OpenWeatherApplication"

    invoke-static {v3}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 436
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.weather"

    const-string v4, "cn.nubia.weather.ui.activity.MainActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    iget-object v3, p0, Lcn/nubia/calendar/util/WeatherUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

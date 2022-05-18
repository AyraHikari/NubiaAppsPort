.class Lcn/nubia/calendar/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->initSharedPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 440
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "CustomDatabase"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs1:Landroid/content/SharedPreferences;

    .line 443
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "custom_calendar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    .line 446
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "city_list_file"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    .line 449
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "SyncDelete"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs4:Landroid/content/SharedPreferences;

    .line 451
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "WeatherDate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs5:Landroid/content/SharedPreferences;

    .line 453
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$4;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    const-string v1, "pres"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->prefs6:Landroid/content/SharedPreferences;

    .line 455
    return-void
.end method

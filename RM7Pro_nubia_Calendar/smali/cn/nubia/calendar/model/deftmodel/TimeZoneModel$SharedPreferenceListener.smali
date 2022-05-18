.class Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;
.super Ljava/lang/Object;
.source "TimeZoneModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreferenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
    .param p2, "x1"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;-><init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "preferences_home_tz_enabled_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "preferences_home_tz"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$202(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z

    .line 329
    :cond_1
    return-void
.end method

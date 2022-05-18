.class Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;
.super Ljava/lang/Object;
.source "LocalWorkingModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreferenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;->this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .param p2, "x1"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;-><init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;->this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;->this$0:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->access$000(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->access$100(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Landroid/content/Context;)V

    .line 318
    :cond_0
    return-void
.end method

.class public Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "CalendarKernelDataModel.java"


# static fields
.field private static final PREF_DB_VERSION:Ljava/lang/String; = "custom_db_version"

.field public static final PREF_FILENAME:Ljava/lang/String; = "CustomDatabase"

.field private static final TAG:Ljava/lang/String; = "CalendarKernelDataModel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 58
    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 20
    return-void
.end method


# virtual methods
.method public buildCustomDatabase()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    sget-object v4, Lcn/nubia/calendar/util/Utils;->prefs1:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 31
    sget-object v2, Lcn/nubia/calendar/util/Utils;->prefs1:Landroid/content/SharedPreferences;

    .line 36
    :goto_0
    const-string v4, "custom_db_version"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "prefVersion":I
    if-eq v1, v8, :cond_0

    .line 38
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "custom_db_version"

    const/4 v6, 0x1

    .line 39
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 40
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    new-instance v0, Lcn/nubia/calendar/db/CustomDbHelper;

    iget-object v4, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcn/nubia/calendar/db/CustomDbHelper;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "helper":Lcn/nubia/calendar/db/CustomDbHelper;
    invoke-virtual {v0}, Lcn/nubia/calendar/db/CustomDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    invoke-virtual {v0}, Lcn/nubia/calendar/db/CustomDbHelper;->close()V

    .line 55
    .end local v0    # "helper":Lcn/nubia/calendar/db/CustomDbHelper;
    .end local v1    # "prefVersion":I
    :cond_0
    :goto_1
    return-void

    .line 33
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "CustomDatabase"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x2

    .line 49
    invoke-virtual {v4, v5, v6, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 25
    return-void
.end method

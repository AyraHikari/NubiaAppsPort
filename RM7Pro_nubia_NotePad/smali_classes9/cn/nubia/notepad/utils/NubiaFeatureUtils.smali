.class public Lcn/nubia/notepad/utils/NubiaFeatureUtils;
.super Ljava/lang/Object;
.source "NubiaFeatureUtils.java"


# static fields
.field private static final NUBIA_FEATURE_DISABLED:Ljava/lang/String; = "false"

.field private static final NUBIA_FEATURE_ENABLED:Ljava/lang/String; = "true"

.field private static final NUBIA_FEATURE_NOTEPAD_APKUPDATE:Ljava/lang/String; = "notepad_apkupdate"

.field private static final NUBIA_FEATURE_NOTEPAD_CLOUDSYNC:Ljava/lang/String; = "notepad_cloudsync"

.field private static final NUBIA_FEATURE_NOTEPAD_CTS:Ljava/lang/String; = "notepad_cts"

.field private static final NUBIA_FEATURE_NOTEPAD_DATASTATISTIC:Ljava/lang/String; = "notepad_statistics"

.field private static final NUBIA_FEATURE_NOTEPAD_WIDGET:Ljava/lang/String; = "notepad_widget"

.field private static final NUBIA_FEATURE_NOTEPAD_XML:Ljava/lang/String; = "nubia_notepad_feature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isApkUpdateEnabled()Z
    .locals 2

    .prologue
    .line 34
    const-string v0, "notepad_apkupdate"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isFeatureEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCloudSyncEnabled()Z
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->isInterVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notepad_cloudsync"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isFeatureEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCtsEnabled()Z
    .locals 2

    .prologue
    .line 30
    const-string v0, "notepad_cts"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isFeatureEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDataStatisticsEnabled()Z
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->isInterVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notepad_statistics"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isFeatureEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFeatureEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "subFeatureName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v1, ""

    .line 40
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const-string v3, "nubia_notepad_feature"

    invoke-static {v3, p0, p1}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    :cond_0
    :goto_1
    return v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const/4 v2, 0x1

    goto :goto_1
.end method

.class public Lcn/nubia/analytic/util/BundleFactory;
.super Ljava/lang/Object;
.source "BundleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBundle(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/analytic/util/BundleFactory;->createBundle(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "packageName"

    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "unFrequencyData"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    :cond_0
    :goto_0
    const-string v1, "urgent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    return-object v0

    .line 53
    :cond_1
    const-string v1, "bigData"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "appInfoData"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static createBundle(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/trafficcontrol/bean/ReportInfoBean;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/analytic/util/BundleFactory;->createBundle(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/trafficcontrol/bean/ReportInfoBean;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "type"

    const-string v2, "reyunbatchData"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "reyunbatchData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    const-string v1, "urgent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-object v0
.end method

.method public static decodeReportStrategy(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "type"

    const-string v2, "fetchReportStrategy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "packageName"

    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "versionCode"

    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "urgent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    return-object v0
.end method

.method public static decodeServerTime()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v1, "type"

    const-string v2, "fetchSystemTime"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "urgent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    return-object v0
.end method

.method public static decodeWhiteSheet()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v1, "type"

    const-string v2, "fetchWhiteSheet"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "urgent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    return-object v0
.end method

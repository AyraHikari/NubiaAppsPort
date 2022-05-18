.class public Lcn/nubia/analytic/util/SharedPreferEditor;
.super Ljava/lang/Object;
.source "SharedPreferEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventCollectNumber(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 40
    const-string v0, "event_collect_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/analytic/util/PrefEditor;->readCommonInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEventCollectTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 44
    const-string v0, "event_collect_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcn/nubia/analytic/util/PrefEditor;->readCommonLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSendAppVersionCode(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 32
    const-string v0, "last_send_app_version_code"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/nubia/analytic/util/PrefEditor;->readCommonInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getServerTimeOffset(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 36
    const-string v0, "server_time_offset"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcn/nubia/analytic/util/PrefEditor;->readCommonLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setEventCollectNumber(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "event_collect_number"

    invoke-static {p0, v0, p1}, Lcn/nubia/analytic/util/PrefEditor;->writeCommonInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public static setEventCollectTime(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "event_collect_time"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->writeCommonLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 29
    return-void
.end method

.method public static setLastSendAppVersionCode(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "last_send_app_version_code"

    invoke-static {p0, v0, p1}, Lcn/nubia/analytic/util/PrefEditor;->writeCommonInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    return-void
.end method

.method public static setServerTimeOffset(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "server_time_offset"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->writeCommonLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 21
    return-void
.end method

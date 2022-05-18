.class public Lcn/nubia/cloud/settings/common/CloudSettings$User;
.super Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;
.source "CloudSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/settings/common/CloudSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    .line 208
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->getBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2

    .line 200
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->getFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    .line 184
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6

    .line 192
    sget-object v1, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->getLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    .line 204
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->putBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 2

    .line 196
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->putFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2

    .line 180
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->putInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 6

    .line 188
    sget-object v1, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->putLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 172
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/cloud/settings/common/CloudSettings$User;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.class public Lcn/nubia/cloud/settings/common/CloudSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"

# interfaces
.implements Lcn/nubia/cloud/settings/common/CloudSettingsContract$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/settings/common/CloudSettings$User;,
        Lcn/nubia/cloud/settings/common/CloudSettings$App;,
        Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "userconfig"

.field private static final TAG:Ljava/lang/String; = "CloudSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcn/nubia/cloud/settings/common/CloudSettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "userconfig"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/settings/common/CloudSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

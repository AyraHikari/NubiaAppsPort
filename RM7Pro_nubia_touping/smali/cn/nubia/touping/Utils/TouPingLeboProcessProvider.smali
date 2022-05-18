.class public Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;
.super Landroid/content/ContentProvider;
.source "TouPingLeboProcessProvider.java"


# static fields
.field public static final CALL10_KEY:Ljava/lang/String; = "SMALLWINDOW_MIRROR_COLLECTINGDATA"

.field private static final TAG:Ljava/lang/String; = "TouPingLeboProcessProvider"

.field private static final matcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;->matcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const-string v0, "TouPingProvider_call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 71
    :try_start_0
    const-string v7, "CALL_10"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 73
    .local v3, "context":Landroid/content/Context;
    const-string v7, "TouPingLeboProcessProvider_CALL_10"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " context = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eqz p4, :cond_4

    const-string v7, "SMALLWINDOW_MIRROR_COLLECTINGDATA"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    .line 75
    const-string v7, "SMALLWINDOW_MIRROR_COLLECTINGDATA"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 76
    .local v6, "wiredlessStatus":Z
    const-string v7, "TouPingLeboProcessProvider_CALL_10"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcn/nubia/touping/Utils/TouPingLeboProcessProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  wiredlessStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "content://cn.nubia.touping.TouPingProvider/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 80
    .local v5, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "SMALLWINDOW_MIRROR_COLLECTINGDATA"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, ""

    const-string v9, "CALL_10"

    invoke-virtual {v7, v5, v8, v9, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 84
    .local v2, "bundleResult":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    const-string v7, "mirrortype"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    const-string v7, "TouPingLeboProcessProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bundleResult2.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "wiredlessStatus":Z
    :cond_0
    :goto_0
    return-object v2

    .line 88
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundleResult":Landroid/os/Bundle;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "wiredlessStatus":Z
    :cond_1
    if-eqz v6, :cond_3

    .line 89
    invoke-static {}, Lcn/nubia/touping/LelinkProcessService;->getRealBitRate()I

    move-result v0

    .line 90
    .local v0, "bitrate":I
    if-eqz v2, :cond_3

    const-string v7, "bit_rate"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    const-string v7, "bit_rate"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "bit_rate"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    :cond_2
    const-string v7, "bit_rate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "bitrate":I
    :cond_3
    if-eqz v2, :cond_0

    .line 97
    const-string v7, "TouPingLeboProcessProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changlei_from_small_bundleResult.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "bundleResult":Landroid/os/Bundle;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "wiredlessStatus":Z
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

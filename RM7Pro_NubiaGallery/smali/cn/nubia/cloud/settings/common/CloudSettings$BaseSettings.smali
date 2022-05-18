.class public Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/settings/common/CloudSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSettings"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z
    .locals 0

    .line 117
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p4
.end method

.method public static getFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)F
    .locals 0

    .line 100
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p4
.end method

.method public static getInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)I
    .locals 0

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p4
.end method

.method public static getLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)J
    .locals 0

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide p4
.end method

.method public static getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    const-string p2, "user_id"

    .line 42
    invoke-static {p1, p2, v0, v1}, Lcn/nubia/cloud/utils/ContentUriUtil;->addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 46
    :try_start_0
    sget-object v2, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->SELECT_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    :try_start_1
    const-string v0, "CloudSettings"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    .line 52
    :cond_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p2

    :catchall_0
    move-exception p1

    move-object p2, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_5
    throw p1
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z
    .locals 0

    .line 112
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)Z
    .locals 0

    .line 95
    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)Z
    .locals 0

    .line 78
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)Z
    .locals 0

    .line 61
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    const-string p2, "user_id"

    .line 25
    invoke-static {p1, p2, v0, v1}, Lcn/nubia/cloud/utils/ContentUriUtil;->addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 28
    :cond_0
    :try_start_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "name"

    .line 29
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value"

    .line 30
    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Can\'t set key "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CloudSettings"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

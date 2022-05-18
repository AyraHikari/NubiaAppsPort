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
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "def"    # Z

    .prologue
    .line 117
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    .local v2, "value":Z
    :goto_0
    return v2

    .end local v2    # "value":Z
    :cond_0
    move v2, p4

    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p4

    .restart local v2    # "value":Z
    goto :goto_0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)F
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "def"    # F

    .prologue
    .line 100
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    .local v2, "value":F
    :goto_0
    return v2

    .end local v2    # "value":F
    :cond_0
    move v2, p4

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p4

    .restart local v2    # "value":F
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)I
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "def"    # I

    .prologue
    .line 83
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 90
    .local v2, "value":I
    :goto_0
    return v2

    .end local v2    # "value":I
    :cond_0
    move v2, p4

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)J
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "def"    # J

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 73
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p4

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p4

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 41
    if-nez p2, :cond_0

    .line 42
    const-string v0, "user_id"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcn/nubia/cloud/utils/ContentUriUtil;->addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 44
    :cond_0
    const/4 v7, 0x0

    .line 46
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->SELECT_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    if-nez v7, :cond_2

    .line 49
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v8

    .line 52
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 55
    .local v8, "value":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    .line 112
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;F)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # F

    .prologue
    .line 95
    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 78
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;J)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 61
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/cloud/settings/common/CloudSettings$BaseSettings;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    const-string v2, "user_id"

    const-wide/16 v4, 0x0

    invoke-static {p1, v2, v4, v5}, Lcn/nubia/cloud/utils/ContentUriUtil;->addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 28
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "value"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v2, 0x1

    .line 35
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    const/4 v2, 0x0

    goto :goto_0
.end method

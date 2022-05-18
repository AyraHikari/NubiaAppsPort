.class Lcn/nubia/deskclock/model/localDataOpt/SharedPrefLocalDataOperation;
.super Ljava/lang/Object;
.source "SharedPrefLocalDataOperation.java"

# interfaces
.implements Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;
    .locals 7
    .param p1, "param"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    iget-object v3, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharePrefGetValueType:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 61
    .local v0, "context":Landroid/content/Context;
    :goto_1
    iget-object v3, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "sharePref":Landroid/content/SharedPreferences;
    iget-object v3, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharePrefGetValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_3

    .line 64
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "sharePref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1

    .line 66
    .restart local v1    # "sharePref":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v3, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharePrefGetValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_0

    .line 67
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 84
    .local v0, "context":Landroid/content/Context;
    :goto_1
    iget-object v2, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, "sharePref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 82
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "sharePref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1
.end method

.method public saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 8
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 16
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v4, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 28
    .local v0, "context":Landroid/content/Context;
    :goto_1
    iget-object v4, p2, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 29
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 30
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 31
    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 32
    .local v2, "sharePref":[Ljava/lang/String;
    aget-object v4, v2, v7

    aget-object v5, v2, v6

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .end local v2    # "sharePref":[Ljava/lang/String;
    :cond_2
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 35
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 26
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/DeskClockApplication;->getDirectBootContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1

    .line 36
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_4
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 37
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 38
    :cond_5
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 39
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 40
    :cond_6
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 41
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

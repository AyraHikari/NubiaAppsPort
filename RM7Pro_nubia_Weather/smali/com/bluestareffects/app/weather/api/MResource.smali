.class public Lcom/bluestareffects/app/weather/api/MResource;
.super Ljava/lang/Object;
.source "MResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    .local v5, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 10
    .local v4, "id":I
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".R"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 11
    .local v6, "r":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 12
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 13
    .local v2, "desireClass":Ljava/lang/Class;
    array-length v8, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    .line 14
    .local v1, "cls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 15
    move-object v2, v1

    .line 19
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 25
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "desireClass":Ljava/lang/Class;
    .end local v6    # "r":Ljava/lang/Class;
    :cond_1
    :goto_1
    return v4

    .line 13
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v1    # "cls":Ljava/lang/Class;
    .restart local v2    # "desireClass":Ljava/lang/Class;
    .restart local v6    # "r":Ljava/lang/Class;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "desireClass":Ljava/lang/Class;
    .end local v6    # "r":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 23
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

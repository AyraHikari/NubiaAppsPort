.class public Lcn/nubia/config/android/NubiaFeatureConfig;
.super Ljava/lang/Object;
.source "NubiaFeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;,
        Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;
    }
.end annotation


# static fields
.field private static sFeatureMethod:Ljava/lang/reflect/Method;

.field private static sSubFeatureMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;

    .line 33
    sput-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;

    .line 37
    :try_start_0
    const-string v1, "android.util.NubiaConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "threadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 44
    :goto_0
    :try_start_1
    const-string v1, "android.util.NubiaConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v1, "getSubValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 46
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 40
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "subFeatureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;,
            Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    sget-object v2, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;

    .line 115
    const-string v3, "this device did not support feature config"

    .line 114
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;

    .line 129
    const-string v3, "this device did not support feature config"

    .line 128
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v2, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 118
    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 117
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "featureState":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this device have no such feature : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    const-string v4, " or subFeature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .end local v1    # "featureState":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this device have no such feature : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    const-string v4, " or subFeature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "featureState":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "subFeatureName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    sget-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 107
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 97
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sSubFeatureMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 98
    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "featureState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    .line 102
    goto :goto_0

    .line 105
    .end local v0    # "featureState":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;,
            Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    sget-object v2, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;

    .line 73
    const-string v3, "this device did not support feature config"

    .line 72
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this device have no such feature : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :try_start_1
    sget-object v2, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 76
    aput-object p0, v4, v5

    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "featureState":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this device have no such feature : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$FeatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    .end local v1    # "featureState":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;

    .line 89
    const-string v3, "this device did not support feature config"

    .line 88
    invoke-direct {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig$NotSupportNubiaConfigException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "featureState":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 87
    .end local v1    # "featureState":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    sget-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 66
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 56
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcn/nubia/config/android/NubiaFeatureConfig;->sFeatureMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 57
    aput-object p0, v3, v4

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "featureState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 61
    goto :goto_0

    .line 64
    .end local v0    # "featureState":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

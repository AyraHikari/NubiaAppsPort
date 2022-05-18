.class public Lcn/nubia/commonui/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 177
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 182
    :goto_0
    return-object v2

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcn/nubia/commonui/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 80
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.R$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 89
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 90
    .local v3, "ids":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 92
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 99
    .end local v3    # "ids":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v3

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "ids":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 165
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 170
    :goto_0
    return-object v2

    .line 167
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcn/nubia/commonui/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0
.end method

.method public static getStyleable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 56
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v4, "com.android.internal.R$styleable"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 63
    :goto_0
    const/4 v3, 0x0

    .line 64
    .local v3, "mIds":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 66
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 73
    .end local v3    # "mIds":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "mIds":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getValueByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v4

    .line 107
    :cond_1
    const/4 v2, 0x0

    .line 108
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0, p1}, Lcn/nubia/commonui/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "isAccessible":Z
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    .line 114
    if-nez v3, :cond_2

    .line 115
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    :cond_2
    const/4 v4, 0x0

    .line 120
    .local v4, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "hasReturn"    # Z
    .param p3, "isStatic"    # Z

    .prologue
    const/4 v0, 0x0

    .line 11
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "hasReturn"    # Z
    .param p3, "isStatic"    # Z
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 19
    .local p5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 20
    const/4 v5, 0x0

    .line 48
    :cond_0
    :goto_0
    return-object v5

    .line 21
    :cond_1
    const/4 v5, 0x0

    .line 22
    .local v5, "result":Ljava/lang/Object;
    move-object v2, p0

    .line 24
    .local v2, "host":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 25
    .local v0, "clazz":Ljava/lang/Class;
    if-nez p3, :cond_3

    .line 26
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    .end local v2    # "host":Ljava/lang/Object;
    :goto_1
    const/4 v4, 0x0

    .line 32
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-static {v0, p1, p5}, Lcn/nubia/commonui/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    .line 35
    .local v3, "isAccessible":Z
    if-nez v3, :cond_2

    .line 36
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    :cond_2
    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {v4, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 43
    .end local v5    # "result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v3    # "isAccessible":Z
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "host":Ljava/lang/Object;
    .restart local v5    # "result":Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    const/4 v2, 0x0

    goto :goto_1

    .line 41
    .end local v2    # "host":Ljava/lang/Object;
    .restart local v3    # "isAccessible":Z
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v4, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static varargs newInstanceByConstructor(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    const/4 v2, 0x0

    .line 139
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_1
    return-object v5

    .line 135
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v4    # "e1":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 142
    .local v0, "c":[Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 146
    .end local v0    # "c":[Ljava/lang/reflect/Constructor;
    :goto_2
    if-eqz v2, :cond_0

    .line 147
    const/4 v5, 0x0

    .line 149
    .local v5, "instance":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    goto :goto_1

    .line 143
    .end local v5    # "instance":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 150
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "instance":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

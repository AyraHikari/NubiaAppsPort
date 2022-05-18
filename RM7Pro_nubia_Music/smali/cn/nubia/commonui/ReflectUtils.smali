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
    .locals 1
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
    const/4 v0, 0x0

    .line 177
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/commonui/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.internal.R$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 99
    :cond_0
    :goto_1
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 95
    :catch_3
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
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
    .line 165
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/nubia/commonui/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStyleable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    .line 56
    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 64
    :goto_0
    if-eqz v1, :cond_0

    .line 66
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 73
    :cond_0
    :goto_1
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v1, v0

    .line 62
    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 67
    :catch_2
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 69
    :catch_3
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getValueByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 109
    invoke-static {v1, p1}, Lcn/nubia/commonui/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    .line 114
    if-nez v2, :cond_2

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    :cond_2
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 6

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
    .locals 4
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
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    if-nez p3, :cond_3

    .line 26
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    :goto_1
    invoke-static {v1, p1, p5}, Lcn/nubia/commonui/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    :cond_2
    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {v1, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 28
    :cond_3
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object p0, v0

    .line 29
    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {v1, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static varargs newInstanceByConstructor(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    const/4 v0, 0x0

    .line 132
    .line 134
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_1
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 141
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 142
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 146
    :goto_2
    if-eqz v1, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    goto :goto_1

    .line 143
    :catch_1
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v1, v0

    goto :goto_2

    .line 150
    :catch_2
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 152
    :catch_3
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 154
    :catch_4
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 156
    :catch_5
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

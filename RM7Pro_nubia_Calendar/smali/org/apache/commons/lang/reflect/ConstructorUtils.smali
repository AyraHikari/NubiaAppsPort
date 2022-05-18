.class public Lorg/apache/commons/lang/reflect/ConstructorUtils;
.super Ljava/lang/Object;
.source "ConstructorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getAccessibleConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "parameterType"    # Ljava/lang/Class;

    .prologue
    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 287
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "ctor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 300
    invoke-static {p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getMatchingAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 326
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    invoke-static {v0}, Lorg/apache/commons/lang/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v4

    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, "result":Ljava/lang/reflect/Constructor;
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 334
    .local v1, "ctors":[Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 337
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lorg/apache/commons/lang/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    aget-object v4, v1, v2

    invoke-static {v4}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 340
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_1

    .line 341
    invoke-static {v0}, Lorg/apache/commons/lang/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V

    .line 342
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/apache/commons/lang/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v4

    if-gez v4, :cond_1

    .line 345
    :cond_0
    move-object v3, v0

    .line 334
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 350
    goto :goto_0
.end method

.method public static invokeConstructor(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 123
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Class;

    .line 124
    .local v1, "parameterTypes":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 125
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p2, :cond_0

    .line 152
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 157
    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->getMatchingAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 158
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_2

    .line 159
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible constructor on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactConstructor(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 220
    :cond_0
    array-length v0, p1

    .line 221
    .local v0, "arguments":I
    new-array v2, v0, [Ljava/lang/Class;

    .line 222
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 223
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 252
    :cond_0
    if-nez p2, :cond_1

    .line 253
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 255
    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/lang/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 256
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_2

    .line 257
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible constructor on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

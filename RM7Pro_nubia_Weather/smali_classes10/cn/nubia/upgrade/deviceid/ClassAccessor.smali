.class Lcn/nubia/upgrade/deviceid/ClassAccessor;
.super Ljava/lang/Object;
.source "ClassAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassAccessor"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 50
    if-nez p1, :cond_0

    .line 51
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    move-object p1, v1

    .line 53
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 55
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 56
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_2

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 65
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p5, "paramObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 27
    if-nez p1, :cond_0

    .line 28
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    move-object p1, v1

    .line 30
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 32
    if-nez p4, :cond_2

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    .line 33
    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    .local v0, "m":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v0, :cond_4

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    if-nez p4, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_2
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 34
    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 37
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    .line 38
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 40
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 45
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v1

    goto :goto_0
.end method
